using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Text;
using System.ComponentModel;
using Microsoft.FSharp.Core;

using prismic;
using prismic.extensions;

using PrismicIOAPI;
using PrismicIOAPI.Web.UI;
using PrismicIOAPI.Utility;
using PrismicIOAPI.Ext;

using YPortal.Web.App_Code.Types;
using YPortal.Web.App_Code.Types.Util;


using Debug = System.Diagnostics.Debug;

namespace YPortal.Web.Controls
{
    public class YDCarouselControl : PrismicGeneric
    {
        private const string _MenuDocTemplate = "<YMenu xmlns='WebbMason'>{0}</YMenu>";
        private const string _SubMenuDocTemplate = "<YSubMenuFormatter xmlns='WebbMason'>{0}</YSubMenuFormatter>";
        private List<MenuElement> thumbnails = null;
        private List<MenuElement> linkMenuEntries = null;
        private List<MenuElement> labelMenuEntries = null;
        private MenuElement label = null;
        private MenuElement currentlink = null;
        private List<MenuElement> menuData = null;
        private string linkId = null;
        private const string REDIRECT_PART2_SCRIPT_TEMPLATE = "SpecialRedirectPartTwo('TAB_CNT_{0}')";

        private const string FULLTEXT_SEARCH_TEMPLATE = @"[[:d = fulltext(my.{0}.{1},""{2}"")]]";
        private const string FULLTEXT_SEARCH_TEMPLATE_TYPE = @"[[:d = fulltext(my.{0}.{1},""{3}"")] [:d = fulltext(my.{0}.{2},""{4}"")]]";

        private String Query
        {
            get;
            set;
        }

        #region Public Properties
              

        public string LinkId
        {
            get
            {
                return linkId;
            }
            set
            {
                linkId = value;
            }
        }

        private MenuElement Label
        {
            get
            {
                if (label == null)
                {
                    if (CurrentLink != null)
                    {
                        label = LabelMenuEntries.FirstOrDefault(_elem => _elem != null && _elem.Id == CurrentLink.ParentId);
                    }                   
                }
                return label;
            }
        }


        public MenuElement CurrentLink
        {
            get
            {
                if (currentlink == null)
                {
                    if(MenuId != null){
                        currentlink  = LinkMenuEntries.FirstOrDefault(_elem => _elem != null && _elem.Id == int.Parse(MenuId) && _elem.RelLinkId == 0);
                        if (currentlink == null)
                        {
                            currentlink = LinkMenuEntries.FirstOrDefault(_elem => _elem != null && _elem.Text == linkId.HTMLDecode() && _elem.RelLinkId == 0);
                        }
                    }
                }
                return currentlink;
            }
        }

        private List<MenuElement> LabelMenuEntries
        {
            get
            {
                if (labelMenuEntries == null)
                {
                    labelMenuEntries = MenuData
                    .Where(elem => elem.isGroupItem == true && elem.ParentId != 0)
                    .OrderBy(elem => elem.ParentId)
                    .ThenBy(elem => elem.Id)
                    .ThenBy(elem => elem.Column)
                    .ToList();
                }
                return labelMenuEntries;
            }
        }


        private List<MenuElement> LinkMenuEntries
        {
            get
            {
                if (linkMenuEntries == null)
                {                    
                    linkMenuEntries = MenuData
                    .Where(elem => elem.isGroupItem == false && elem.ParentId != 0)
                    .OrderBy(elem => elem.ParentId)
                    .ThenBy(elem => elem.Id)
                    .ThenBy(elem => elem.Column)
                        .ToList();
                }
                return linkMenuEntries;
            }
        }
       
        /// <summary>
        /// 
        /// </summary>
        public List<MenuElement> Thumbnails 
        {
            get
            {
                if (thumbnails == null)
                {
                    if (Label != null)
                   {
                       if (CurrentLink.StandAloneThumbNail)
                       {
                            thumbnails = LinkMenuEntries.Where(_elem =>
                            _elem.Id == CurrentLink.Id).ToList();
                       }
                       else
                       {
                           thumbnails = LinkMenuEntries.Where(_elem =>
                            _elem.ParentId == Label.Id && _elem.StandAloneThumbNail == false).ToList();
                       }
                   }
                }
                return thumbnails;
            }
            set
            {
                thumbnails = value;
            }
        }


        /// <summary>
        /// 
        /// </summary>
        public List<MenuElement> MenuData
        {
            get
            {               
                return Global.MenuData;
            }
            private set
            {
                menuData = value;
            }
        }

        #endregion Public Properties

        /// <summary>
        /// 
        /// </summary>
        /// <param name="writer"></param>
        protected override void Render(HtmlTextWriter writer)
        {
            string _HTML = null;

            return;


            string controlid = String.Format("YC_{0}{1}{2}{3}", GroupEntryId, LinkId, ParentGroup, MenuId);
            if (isCached)
            {
                CacheController.GetCachedObject<String>(ref _HTML, controlid);

                if (_HTML == null)
                {
                    _HTML = GetControl();
                    CacheController.GetCachedObject<String>(ref _HTML, controlid);
                }
            }
            else
            {
                _HTML = GetControl();
            }                  
             writer.Write(_HTML);           
        }

        /// <summary>
        /// Render Control
        /// </summary>
        /// <param name="MenuData"></param>
        /// <returns></returns>
        private string GetControl()
        {
            var mediaInfo1 = GetDocument(GroupEntryId, "PageContainer");

            #region Init Control
            YCarouselFormatter _YCarousel = new YCarouselFormatter()
            {
                Panel = new div()
                {
                    @class = Thumbnails != null && Thumbnails.Count > 0 ? "custom-container mobile-view-fix" : "custom-container",
                    div1 = new List<div>()
                }
            };
            
            var CarouselSlide = new div()
            {
                @class = "carousel slide",
                id = this.ID,
                dataride = "carousel",
                datainterval = "false",
                div1 = new List<div>()
            };

            _YCarousel.Panel.div1.Add(CarouselSlide);

            if (Thumbnails != null && Thumbnails.Count > 0)
            {
                CarouselSlide.ol = new divOL()
                {
                    @class = "carousel-indicators mobile-margin-fix",
                    li = new List<divOLLI>()
                };
            } 

            #endregion Init Control
            #region Init Control Title
            if (Label != null && !String.IsNullOrEmpty(Label.Text))
            {
                CarouselSlide.div1.Add(new div()
                {
                    @class = "carousel-title",
                    Value = Debug ? String.Format("CId: {0}<br/>{1}", Label.Id, Label.Text)
                            :  Label.Text
                });
            }
            #endregion Init Control Title



            #region Init Control Inner List
            CarouselSlide.div1.Add(new div()
            {
                @class = "carousel-inner",
                div1 = new List<div>()
            });
            #endregion Init Control Inner List
            int _tmbcnt = 0;



            if (Thumbnails != null && Thumbnails.Count > 0)
            {
                Thumbnails.ForEach(elem =>
                {
                    #region Tumbs List
                    var mediaInfo = GetDocument(elem.Text, "PageContainer");

                    if (elem.DisplayThumbNail && mediaInfo != null)
                    {
                        divOLLI _li = new divOLLI()
                        {
                            @class = _tmbcnt == 0 ? "active" : string.Empty,
                            dataslideto = (_tmbcnt).ToString(),
                            datatarget = string.Format("#{0}", this.ID),
                            Anchor = new List<divOLLIA>()
                        };
                        divOLLIA _anchor = new divOLLIA()
                        {
                            href = string.Format("#{0}", String.Format("TAB_CNT_{0}", elem.Id)),
                            onclick = string.Format(REDIRECT_PART2_SCRIPT_TEMPLATE, elem.Id),
                            datatoggle = "tab",
                            span = Debug ? String.Format("CId: {0} <br/>{1}", "ID HERE", elem.Text) : elem.Text,
                            img = new List<img>()
                        };


                        // Thumbmail asset:
                        var _thumbnail = GetAssetImage(mediaInfo, "icon");

                        if (_thumbnail != null)
                        {
                            img _image = new img()
                            {
                                src = _thumbnail.Value.url
                            };
                            _anchor.img.Add(_image);
                        }

                        _li.Anchor.Add(_anchor);
                        CarouselSlide.ol.li.Add(_li);

                    #endregion Tumbs List
                        #region Inner List
                        div _innerPanel = new div()
                        {
                            @class = string.Format("item {0}", _tmbcnt == 0 ? "active" : String.Empty),
                            img = new List<img>(),
                            div1 = new List<div>()
                        };

                        //Begin LG Image:

                        var _lgimage = GetAssetImage(mediaInfo, "main");

                            if (_lgimage != null)
                            {

                                img _innerPanelImage = new img()
                                {
                                    alt = _lgimage.Value.alt.ToString(),
                                    datasrc = "holder.js/900x500/auto/#777:#777",
                                    src = _lgimage.Value.url
                                };

                                _innerPanel.img.Add(_innerPanelImage);
                            }
                        
                        //End LG Image:

                        div _innerPanelCaption = new div()
                        {
                            @class = "carousel-caption",
                            p = new List<divP>()
                        };

                        divP __innerPanelCaptionParag = new divP()
                        {
                            Value = mediaInfo.GetTextExt("LargeLabel") 
                        };

                        _innerPanelCaption.p.Add(__innerPanelCaptionParag);
                        _innerPanel.div1.Add(_innerPanelCaption);
                        CarouselSlide.div1.Add(_innerPanel);
                        #endregion Inner List
                        _tmbcnt++;
                    }
                });
            } 
            else
            {
                var mediaInfo = GetDocument(GroupEntryId, "PageContainer");
                string lgLabel = " ";
                string smLabel = " ";
                FSharpOption<Fragments.ImageView> _lgimage = null;
                if (mediaInfo != null)
                {
                    _lgimage = GetAssetImage(mediaInfo, "main");
                     lgLabel = mediaInfo.GetTextExt("LargeLabel"); //GetAsetText(mediaInfo, "LargeLabel");
                     smLabel = mediaInfo.GetTextExt("SmallLabel"); // GetAsetText(mediaInfo, "SmallLabel");
                }

                if (_lgimage != null)
                {
                    div _innerPanel = new div()
                    {
                        @class = string.Format("item {0}", _tmbcnt == 0 ? "active" : String.Empty),
                        img = new List<img>(),
                        div1 = new List<div>()
                    };
                    img _innerPanelImage = new img()
                            {
                                alt = _lgimage.Value.alt.Value,
                                datasrc = "holder.js/900x500/auto/#777:#777",
                                src = _lgimage.Value.url
                            };

                    _innerPanel.img.Add(_innerPanelImage);

                    div _innerPanelCaption = new div()
                    {
                        @class = "carousel-caption",
                        p = new List<divP>()
                    };

                    divP __innerPanelCaptionParag = new divP()
                    {
                        Value = lgLabel
                    };

                    _innerPanelCaption.p.Add(__innerPanelCaptionParag);
                    _innerPanel.div1.Add(_innerPanelCaption);
                    CarouselSlide.div1.Add(_innerPanel);
                    _tmbcnt++;
                }
            }

            string _tabHTML = CommonUtility.XmlSerialize(_YCarousel.Panel);
            string _htmlOut = System.Web.HttpUtility.HtmlDecode(_tabHTML);
            return _htmlOut;
        }


        
        /// <summary>
        /// Gets Asset From CMS
        /// </summary>
        /// <param name="AssetId"></param>
        /// <param name="AssetField"></param>
        /// <returns></returns>
        private FSharpOption<Fragments.ImageView> GetAssetImage(prismic.Api.Document Document, string AssetField)
        { 
            FSharpOption<Fragments.ImageView> imageview = Document.GetImageView("PageContainer.Image", AssetField);          
            return imageview;
        }

       
        

       
    }
}