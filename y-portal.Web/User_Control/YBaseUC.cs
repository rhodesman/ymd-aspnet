using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using log4net;
using Microsoft.FSharp.Core;
using prismic;
using prismic.extensions;
using PrismicIOAPI.Web.UI;
using YPortal.Web.Controls;
using YPortal.Web.User_Control.Data;

namespace YPortal.Web.User_Control
{

    public static class StringExtender
    {
        public static int NthIndexOf(this string target, string value, int n)
        {
            var m = Regex.Match(target, "((" + Regex.Escape(value) + ").*?){" + n + "}");
            return m.Success ? m.Groups[2].Captures[n - 1].Index : -1;
        }
    }
    
    public class RouteConfig
    {
        public string MnuLv1 { get; set; }
        public string MnuLv2  {get; set; }        
        public string MnuLv3 { get; set; }
        public string MnuLv4 { get; set; }
    }

    public class YBaseUC : BasePrismicUC
    {
        private static readonly ILog Logger = LogManager.GetLogger(typeof(YBaseUC));

        private RouteConfig _routingInfo;
        private List<MenuElement> _thumbnails;
        private MenuElement _currentlink;
        private MenuElement _label;
        private List<MediaContainer> _localMedia;

        private string _menuLv1;
        private string _menuLv2;
        private string _menuLv3;
        private string _menuLv4;

        protected string MenuLv1
        {
            get
            {
                if (Page.RouteData.Values["MenuLv1"] != null
                    && !String.IsNullOrEmpty(Page.RouteData.Values["MenuLv1"].ToString()))
                {
                    _menuLv1 = Page.RouteData.Values["MenuLv1"].ToString();
                    if (_menuLv1.Contains("__browserLink") || _menuLv1.Contains("favico"))
                    {
                        _menuLv1 = null;
                    }
                }
                return _menuLv1;
            }
        }

        protected string MenuLv2
        {
            get
            {
                if (Page.RouteData.Values["MenuLv2"] != null &&
                    !String.IsNullOrEmpty(Page.RouteData.Values["MenuLv2"].ToString()))
                {
                    _menuLv2 = Page.RouteData.Values["MenuLv2"].ToString();
                }
                return _menuLv2;
            }
        }

        protected string MenuLv3
        {
            get
            {
                if (Page.RouteData.Values["MenuLv3"] != null &&
                    !String.IsNullOrEmpty(Page.RouteData.Values["MenuLv3"].ToString()))
                {
                    _menuLv3 = Page.RouteData.Values["MenuLv3"].ToString();
                }
                return _menuLv3;
            }
        }

        protected string MenuLv4
        {
            get
            {
                if (Page.RouteData.Values["MenuLv4"] != null &&
                    !String.IsNullOrEmpty(Page.RouteData.Values["MenuLv4"].ToString()))
                {
                    _menuLv4 = Page.RouteData.Values["MenuLv4"].ToString();
                }
                return _menuLv4;
            }
        }

        public RouteConfig RoutingInfo
        {
            get
            {
                return _routingInfo ?? (_routingInfo = new RouteConfig
                {
                    MnuLv1 = MenuLv1,
                    MnuLv2 = String.IsNullOrEmpty(MenuLv2) ? MenuLv1 : MenuLv2,
                    MnuLv3 = String.IsNullOrEmpty(MenuLv3) ? MenuLv2 : MenuLv3,
                    MnuLv4 = MenuLv4
                });
            }
            set { _routingInfo = value; }
        }

        protected static List<MenuElement> ParentMenu
        {
            get
            {
                return Global.MenuData
                .Where(elem => elem.ParentId == 0 && elem.Text != null)
                .OrderBy(elem => elem.Id)
                .ToList();
            }
        }

        protected static List<MenuElement> LabelsMenu
        {
            get
            {
                return Global.MenuData
                .Where(elem => elem.isGroupItem == true && elem.ParentId != 0)
                .OrderBy(elem => elem.ParentId)
                .ThenBy(elem => elem.Id)
                .ThenBy(elem => elem.Column)
                .ToList();
            }
        }

        protected static List<MenuElement> LinksMenu
        {
            get
            {
                return Global.MenuData
                .Where(elem => elem.isGroupItem == false && elem.ParentId != 0)
                .OrderBy(elem => elem.ParentId)
                .ThenBy(elem => elem.Id)
                .ThenBy(elem => elem.Column)
                .ToList();
            }
        }

        public MenuElement CurrentLink
        {
            get
            {   
                if (_currentlink == null)
                {
                    if (RoutingInfo.MnuLv1 == null)
                    {
                        return _currentlink;
                    }

                    var absolutePath = HttpContext.Current.Request.Url.AbsolutePath;
                    var dLinks =  absolutePath.StartsWith("/locations", StringComparison.OrdinalIgnoreCase);

                    if (dLinks)
                    {
                        Logger.Debug(String.Format("Got request for [{0}]", HttpContext.Current.Request.Url.AbsolutePath));
                        Logger.Debug(String.Format("DLinks size [{0}]", Global.DLinks.Count()));
                        _currentlink = GetCurrentLink(Global.DLinks, absolutePath);
                        //currentlink = Global.DLinks.FirstOrDefault(elem => elem.RouteURL != null && elem.RouteURL.Equals(absolutePath, StringComparison.OrdinalIgnoreCase));                            
                        if (_currentlink != null) Logger.Debug(String.Format("returning [{0}][{1}][{2}]", _currentlink.ParentGroup,_currentlink.RouteURL, _currentlink.Text));
                    }
                    else
                    {
                        _currentlink = GetCurrentLink(LinksMenu, absolutePath);
                        //currentlink = LinksMenu.FirstOrDefault(elem => elem.RouteURL != null && elem.RouteURL.Equals(absolutePath, StringComparison.OrdinalIgnoreCase) && elem.RelLinkId == 0);
                    }
                }

                return _currentlink;
            }
        }

        private MenuElement GetCurrentLink(List<MenuElement> Source, String RouteURL)
         {
            MenuElement currentLink = null;
            if (Source == null || Source.Count == 0 || String.IsNullOrEmpty(RouteURL))
            {
                return currentLink;
            }

            foreach (MenuElement me in Source)
            {
                Logger.Debug(String.Format(" OUT: [{0}][{1}][{2}][{3}]", me.ParentGroup, me.RouteURL, me.Text, me.RelLinkId));
            }

            if (StringExtender.NthIndexOf(RouteURL, "/", 4) > 0)
            {
                RouteURL = RouteURL.Substring(0, StringExtender.NthIndexOf(RouteURL, "/", 4));
            }

            if ((RouteURL.Contains("membership") || RouteURL.Contains("ourmission")) && StringExtender.NthIndexOf(RouteURL, "/", 3) > 0)
            {
                RouteURL = RouteURL.Substring(0, StringExtender.NthIndexOf(RouteURL, "/", 3));
            }

            currentLink = Source.FirstOrDefault(elem => elem.RouteURL != null
                && elem.RouteURL.Equals(RouteURL, StringComparison.OrdinalIgnoreCase) && elem.RelLinkId == 0);

            if ((currentLink == null) && (RouteURL.Contains("."))) // just here to handle unknown links to .aspx versions of these pages
            {
                RouteURL = RouteURL.Substring(0, RouteURL.LastIndexOf("."));
                Logger.Debug(String.Format(" .. up to . [{0}]", RouteURL));
                currentLink = Source.FirstOrDefault(elem => elem.RouteURL != null
                    && elem.RouteURL.Equals(RouteURL, StringComparison.OrdinalIgnoreCase) && elem.RelLinkId == 0);
            }
            return currentLink;
        }

        protected MenuElement Label
        {
            get
            {
                if (_label == null)
                {
                    if (CurrentLink != null)
                    {
                        _label = LabelsMenu.FirstOrDefault(_elem => _elem != null && _elem.Id == CurrentLink.ParentId);
                    }
                }
                return _label;
            }
        }

        public List<MenuElement> Thumbnails
        {
            get
            {
                if (_thumbnails == null)
                {
                    if (Label != null)
                    {
                        if (CurrentLink.StandAloneThumbNail)
                        {
                            _thumbnails = LinksMenu.Where(_elem =>
                            _elem.Id == CurrentLink.Id).ToList();
                        }
                        else
                        {
                            _thumbnails = LinksMenu.Where(_elem =>
                             _elem.ParentId == Label.Id && _elem.StandAloneThumbNail == false).ToList();
                        }
                    }
                }
                return _thumbnails;
            }
            set { _thumbnails = value; }
        }

        public virtual List<MediaContainer> LocalMedia
        {
            get { return _localMedia ?? (_localMedia = new List<MediaContainer>()); }
            set { _localMedia = value; }
        }
  
        protected FSharpOption<Fragments.ImageView> GetAssetImage(prismic.Api.Document document, string assetField)
        {
            return document.GetImageView("PageContainer.Image", assetField);
        }

        protected List<Fragments.GroupDoc> GetGroupContent(prismic.Api.Document Document, string Field)
        {
            List<Fragments.GroupDoc> content = null; ;
            var groupFragment = Document.Get(String.Format("{0}.{1}", Document.typ, Field));
            if (groupFragment != null)
            {
                var group = groupFragment.Value as Fragments.Fragment.Group;
                if (group != null)
                {
                    content = group.Item.ToList();
                }
            }
            return content;
        }
    }   
}