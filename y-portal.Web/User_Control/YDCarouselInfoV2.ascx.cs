using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

using System.IO;
using System.Configuration;
using System.ComponentModel;
using System.Text;
using System.Text.RegularExpressions;
using Microsoft.FSharp.Core;


using prismic;
using prismic.extensions;

using PrismicIOAPI;
using PrismicIOAPI.Web.UI;
using PrismicIOAPI.Ext;

using PrismicIOAPI.Utility;
using YPortal.Web.Controls;
using YPortal.Web.User_Control.Data;
using YPortal.Web.App_Logic;
using log4net;

namespace YPortal.Web.User_Control
{
    public class ControllContainer
    {
        public HtmlGenericControl GenericControl { get; set; }
        public bool isActive { get; set; }
    }

    public partial class YDCarouselInfoV2 : YBaseUC
    {
        private static readonly ILog logger = LogManager.GetLogger(typeof(YDCarouselInfoV2));

        private const string DEFAULT_PAGE = "/";
        private string dataSource = null;
        private string order = null;

        private List<MediaContainer> localMedia = null;
        private List<ControllContainer> coverPanels = null;
        private List<ControllContainer> thumbPanels = null;

        private List<ControllContainer> CoverPanels
        {
            get
            {
                if (coverPanels == null)
                {
                    coverPanels = new List<ControllContainer>();
                }
                return coverPanels;
            }
            set
            {
                coverPanels = value;
            }

        }

        private List<ControllContainer> ThumbPanels
        {
            get
            {
                if (thumbPanels == null)
                {
                    thumbPanels = new List<ControllContainer>();
                }
                return thumbPanels;
            }
            set
            {
                thumbPanels = value;
            }

        }

        [Description("DataSource"), Browsable(true), System.ComponentModel.DefaultValue(""), Category("Appearance"), Bindable(true)]
        public string DataSource
        {
            get
            {
                if (!String.IsNullOrEmpty(dataSource))
                {
                    dataSource = dataSource.Replace("'", @"""");
                }

                return dataSource;
            }
            set
            {
                dataSource = value;
            }
        }

        [Description("Order"), Browsable(true), System.ComponentModel.DefaultValue(""), Category("Appearance"), Bindable(true)]
        public string Order
        {
            get
            {
                if (!String.IsNullOrEmpty(order))
                {
                    order = order.Replace("'", @"""");
                }

                return order;
            }
            set
            {
                order = value;
            }
        }

        public override List<MediaContainer> LocalMedia
        {
            get
            {
                if (localMedia == null)
                {
                    localMedia = new List<MediaContainer>();
                    if (String.IsNullOrEmpty(DataSource) && CurrentLink != null)
                    {
                        BindControl();
                    }
                    else
                    {
                        if (!String.IsNullOrEmpty(DataSource))
                        {
                            BindControl(true);
                        }

                    }

                }
                return localMedia;
            }
            set
            {
                localMedia = value;
            }
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="SourceBased"></param>
        public void BindControl(bool SourceBased)
        {
            List<prismic.Api.Document> documents = null;

            if (string.IsNullOrEmpty(Order))
            {
                documents = GetContent<List<prismic.Api.Document>>(DataSource);
            }
            else
            {
                documents = GetContent<List<prismic.Api.Document>>(DataSource, Order);
            }

            string label = null;

            if (Label != null && !String.IsNullOrEmpty(Label.Text))
            {
                label = Label.Text;
            }

            if (label != null)
            {
                if (label.Equals("blank", StringComparison.OrdinalIgnoreCase) ||
                    Common.DeCodeLink(RoutingInfo.MnuLv1).Equals("locations", StringComparison.OrdinalIgnoreCase))
                {
                    label = String.Empty;
                }
            }


            if (String.IsNullOrEmpty(label))
            {
                Title_Panel.Visible = false;
            }
            else
            {
                ltlCarouselLabel.Text = label;
            }


            if (documents != null && documents.Count > 0)
            {
                documents.ForEach(document =>
                {
                    if (document != null)
                    {
                        var thumbFragment = GetAssetImage(document, "icon");
                        var coverFragment = GetAssetImage(document, "main");
                        var lgLabel = document.GetTextExt("LargeLabel");

                        var menuElem = new MenuElement
                        {
                            Text = document.GetTextExt("Title")
                        };

                        LocalMedia.Add(new MediaContainer
                        {
                            ThumbnailURL = thumbFragment != null ? thumbFragment.Value.url : null,
                            CoverImageURL = coverFragment != null ? coverFragment.Value.url : null,
                            LargeLabel = lgLabel,
                            MenuItem = menuElem,
                            Document = document
                        });
                    }

                });


                if (LocalMedia != null && LocalMedia.Count > 0)
                {
                    rptCarouselThumbs.DataSource = LocalMedia;
                    rptCarouselCover.DataSource = LocalMedia;
                    rptCarouselThumbs.DataBind();
                    rptCarouselCover.DataBind();
                }
            }


        }

        /// <summary>
        /// 
        /// </summary>
        public void BindControl()
        {

            string label = null;
            if (String.IsNullOrEmpty(RoutingInfo.MnuLv1) ||
                String.IsNullOrEmpty(RoutingInfo.MnuLv2) ||
                String.IsNullOrEmpty(RoutingInfo.MnuLv3))
            {
                return;
            }

            if (!RoutingInfo.MnuLv2.Equals("Locations", StringComparison.OrdinalIgnoreCase))
            {
                if (Label != null && !String.IsNullOrEmpty(Label.Text))
                {
                    label = Label.Text;
                }
            }



            if (label != null)
            {
                if (label.Equals("blank", StringComparison.OrdinalIgnoreCase) ||
                    Common.DeCodeLink(RoutingInfo.MnuLv1).Equals("locations", StringComparison.OrdinalIgnoreCase))
                {
                    label = String.Empty;
                }
            }

            if (String.IsNullOrEmpty(label))
            {
                Title_Panel.Visible = false;
            }
            else
            {
                ltlCarouselLabel.Text = label;
            }

            var tumps = Thumbnails;

            logger.Debug(String.Format("tumps[sic]: {0} {1}", tumps, this.ParentGroup));
            if (tumps != null && tumps.Count > 0)
            {
                tumps.ForEach(menuElem =>
                {
                    if (menuElem.DisplayThumbNail)
                    {
                        this.ParentGroup = menuElem.ParentGroup;

                        var document = GetDocument(menuElem.Text, "PageContainer");
                        if (document != null)
                        {
                            var thumbFragment = GetAssetImage(document, "icon");
                            var coverFragment = GetAssetImage(document, "main");
                            var lgLabel = document.GetTextExt("LargeLabel");

                            LocalMedia.Add(new MediaContainer
                            {
                                ThumbnailURL = thumbFragment != null ? thumbFragment.Value.url : null,
                                CoverImageURL = coverFragment != null ? coverFragment.Value.url : null,
                                LargeLabel = lgLabel,
                                MenuItem = menuElem,
                                Document = document
                            });
                        }
                    }
                });
            }
            else
            {
                ThumbsContainer.Visible = false;
                string query = null;
                logger.Debug(String.Format("MnuLv2: {0} {1} {2}", RoutingInfo.MnuLv2, CurrentLink.ParentGroup, CurrentLink.Text));
                this.ParentGroup = CurrentLink.ParentGroup;
                switch (RoutingInfo.MnuLv2.ToLower())
                {
                    case "preschool":
                        {
                            query = GetQueryForFamilyCenterAndPreschool(CurrentLink.Text);
                            break;
                        }
                    case "familycenterys":
                        {
                            query = GetQueryForFamilyCenterAndPreschool(CurrentLink.Text);
                            break;
                        }
                    case "base":
                        {
                            query = ParentGroup;
                            break;
                        }
                    default:
                        {
                            query = CurrentLink.Text;
                            break;
                        }
                }

                var document = GetDocument(Common.DeCodeLink(query), "PageContainer");
                if (document != null)
                {
                    var coverFragment = GetAssetImage(document, "main");
                    var lgLabel = document.GetTextExt("LargeLabel");
                    LocalMedia.Add(new MediaContainer
                    {
                        //ThumbnailURL = thumbFragment != null ? thumbFragment.Value.url : null,
                        CoverImageURL = coverFragment != null ? coverFragment.Value.url : null,
                        LargeLabel = lgLabel,
                        MenuItem = CurrentLink,
                        Document = document
                    });
                }
            }

            if (LocalMedia != null && LocalMedia.Count > 0)
            {
                rptCarouselThumbs.DataSource = LocalMedia;
                rptCarouselCover.DataSource = LocalMedia;
                rptCarouselThumbs.DataBind();
                rptCarouselCover.DataBind();
            }
        }

        private string GetQueryForFamilyCenterAndPreschool(string query)
        {
            //FIXME: heinous hack for "pasadena coming soon"
            if (query == "Pasadena")
            {
                return "Pasadena";
            }
            else if (query == "Arnold <small>(Greater Annapolis)</small>")
            {
                return "Greater Annapolis <br/><small>Anne Arundel County</small>";
            }
            else if (query == "Druid Hill")
            {
                return "Druid Hill <small>Baltimore City</small>";
            }
            else if (query == "Towson <small>(Orokawa)</small>")
            {
                return "Orokawa <small>Baltimore County</small>";
            }
            else if (query == "Parkville")
            {
                return "Parkville <small>Baltimore County</small>";
            }
            else if (query == "Perry Hall")
            {
                return "Perry Hall <small>Baltimore County</small>";
            }
            else if (query == "Swim Center in Dundalk")
            {
                return "Y Swim Center in Dundalk<br/><small>Baltimore County</small>";
            }
            else if (query == "Swim Center in Randallstown")
            {
                return "Y Swim Center in Randallstown<br/><small>Baltimore County</small>";
            }
            else if (query == "Westminster <small>(Hill)</small>")
            {
                return "Hill <small>Carroll County</small>";
            }
            else if (query == "Abingdon <small>(Ward)</small>")
            {
                return "Ward <small>Harford County</small>";
            }
            else if (query == "Ellicott City <small>(Dancel)</small>")
            {
                return "Dancel <small>Howard County</small>";
            }
            else if (query == "Waverly <small>(Weinberg)</small>")
            {
                return "Weinberg  <small>Baltimore City</small>";
            }
            else if (query == "Catonsville")
            {
                return "Catonsville  <small>Baltimore County</small>";
            }
            else if (query == "UMBC")
            {
                return "UMBC <small> Baltimore County</small>";
            }
            else if (query == "Towson")
            {
                return "Towson <small>Baltimore County</small>";
            }
            else if (query == "Finksburg <small>(Chipmunks)</small>")
            {
                return "Chipmunks <small>Carroll County</small>";
            }
            else if (query == "Riverside")
            {
                return "Riverside <small>Harford County</small>";
            }
            return string.Empty;
        }

        #region Events
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void OnItemDataBound_rptCarouselThumbs(object sender, RepeaterItemEventArgs e)
        {
            var mediaContainer = e.Item.DataItem as MediaContainer;
            bool active = false;

            if (mediaContainer != null)
            {
                var thubmListItem = e.Item.FindControl("ThubmListItem") as HtmlGenericControl;

                if (!String.IsNullOrEmpty(mediaContainer.ThumbnailURL))
                {
                    var imgThumb = e.Item.FindControl("imgThumb") as Image;
                    var ltlTumbLabel = e.Item.FindControl("ltlTumbLabel") as Literal;
                    var ancThumb = e.Item.FindControl("ancThumb") as HyperLink;

                    if (thubmListItem != null
                        && imgThumb != null
                        && ltlTumbLabel != null
                        && ancThumb != null)
                    {
                        imgThumb.ImageUrl = mediaContainer.ThumbnailURL;
                        thubmListItem.Attributes.Add("data-slide-to", (rptCarouselThumbs.Controls.Count - 1).ToString());

                        if (mediaContainer.MenuItem != null)
                        {
                            if (mediaContainer.MenuItem.OverrideLabel != null)
                            {
                                ltlTumbLabel.Text = mediaContainer.MenuItem.OverrideLabel;
                            }
                            else
                            {
                                ltlTumbLabel.Text = mediaContainer.MenuItem.Text;
                            }

                            
                            ancThumb.Attributes.Add("href", string.Format("#{0}", Common.EncodeClenupLink(mediaContainer.MenuItem.Text)));
                            ancThumb.Attributes.Add("onclick", string.Format("SpecialRedirectPartTwo('{0}')", Common.EncodeClenupLink(mediaContainer.MenuItem.Text)));

                            if (CurrentLink != null)
                            {
                                active = mediaContainer.MenuItem.Text.Equals(Common.DeCodeLink(CurrentLink.Text), StringComparison.OrdinalIgnoreCase);
                            }
                            else
                            {
                                active = mediaContainer.MenuItem.Text.Replace("&", "").Replace("<br>", "").Replace("</br>", "").Replace(" ", "").Equals(Common.DeCodeLink(this.RoutingInfo.MnuLv2).Replace(" ", ""), StringComparison.OrdinalIgnoreCase);
                            }
                        }

                        if (active)
                        {
                            thubmListItem.Attributes.Add("class", "active");
                        }

                        ThumbPanels.Add(new ControllContainer()
                        {
                            GenericControl = thubmListItem,
                            isActive = active
                        });
                    }
                }
                else
                {
                    thubmListItem.Visible = false;
                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void OnItemDataBound_rptCarouselCover(object sender, RepeaterItemEventArgs e)
        {
            var mediaContainer = e.Item.DataItem as MediaContainer;

            if (mediaContainer != null)
            {
                var coverPanel = e.Item.FindControl("coverPanel") as HtmlGenericControl;
                var imgCover = e.Item.FindControl("imgCover") as Image;
                var ltlLgLabel = e.Item.FindControl("ltlLgLabel") as Literal;
                var divCarouselCaption = e.Item.FindControl("divCarouselCaption") as HtmlControl;

                if (coverPanel != null && imgCover != null && ltlLgLabel != null)
                {
                    if (!string.IsNullOrEmpty(mediaContainer.LargeLabel))
                    {
                        ltlLgLabel.Text = mediaContainer.LargeLabel;
                    }
                    else
                    {
                        if (divCarouselCaption != null) divCarouselCaption.Visible = false;
                    }
                    
                    imgCover.ImageUrl = mediaContainer.CoverImageURL;
                }

                bool active = false;
                if (mediaContainer.MenuItem != null)
                {
                    var menuText = (HttpContext.Current.Request.Url.AbsolutePath.Contains("membership") || HttpContext.Current.Request.Url.AbsolutePath.Contains("ourmission") || HttpContext.Current.Request.Url.AbsolutePath.Contains("location") || HttpContext.Current.Request.Url.AbsolutePath.Contains("volunteercontent") || HttpContext.Current.Request.Url.AbsolutePath.Contains("bio"))
                                       ? RoutingInfo.MnuLv2
                                       : RoutingInfo.MnuLv3;
                    active = Common.EncodeClenupLink(mediaContainer.MenuItem.Text.Replace(" ", "")).Equals(menuText.Replace(" ", ""), StringComparison.OrdinalIgnoreCase);
                }
                CoverPanels.Add(new ControllContainer()
                {
                    GenericControl = coverPanel,
                    isActive = active
                });
                coverPanel.Attributes.Add("class", active ? "item active" : "item");

            }
        }




        /// <summary>
        /// 
        /// </summary>
        /// <param name="writer"></param>
        public override void RenderControl(HtmlTextWriter writer)
        {
            string html = null;
            if (RoutingInfo == null)
            {
                Response.Redirect(DEFAULT_PAGE, true);
                return;
            }
            var ctrl_id = this.ClientID;
            var local = LocalMedia;



            var activePanel = CoverPanels.FirstOrDefault(elem => elem.isActive == true);
            if (activePanel == null)
            {
                activePanel = CoverPanels.FirstOrDefault();
                if (activePanel != null)
                {
                    activePanel.GenericControl.Attributes.Add("class", "item active");
                }
            }


            var activeThumbPanel = ThumbPanels.FirstOrDefault(elem => elem.isActive == true);
            if (activeThumbPanel == null)
            {
                activeThumbPanel = ThumbPanels.FirstOrDefault();
                if (activeThumbPanel != null)
                {
                    activeThumbPanel.GenericControl.Attributes.Add("class", "active");
                }

            }



            // CacheController.GetCachedObject<String>(ref html, ctrl_id);
            if (html == null)
            {
                // BindControl();
                StringBuilder sb = new StringBuilder();
                StringWriter tw = new StringWriter(sb);
                HtmlTextWriter hw = new HtmlTextWriter(tw);
                this.Render(hw);
                html = sb.ToString();
                // CacheController.GetCachedObject<String>(ref html, ctrl_id);
            }
            writer.Write(html);
        }







        #endregion Events
    }
}