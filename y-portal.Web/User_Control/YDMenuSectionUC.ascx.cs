using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using log4net;
using prismic.extensions;
using PrismicIOAPI.Utility;
using YPortal.Helpers;
using YPortal.Web.App_Logic;
using YPortal.Web.Controls;

namespace YPortal.Web.User_Control
{
    public partial class YDMenuSectionUC : YBaseUC
    {
        #region Private Member Variables

        private static readonly ILog logger = LogManager.GetLogger(typeof(YDMenuSectionUC));

        private string dataSource = null;
        private string cityCounty = null;

        private const string URL_TEMPLATE = @"/{0}/{1}/{2}";
        private const string QUERY_CONTENT_GROUP = @"[[:d=fulltext(my.PageContainer.ContentGroup,""{0}"")]]";
        private const string QUERY_CONTENT_GROUP_TITLE = @"[[:d=fulltext(my.PageContainer.ContentGroup,""{0}"")][:d=fulltext(my.PageContainer.Title,""{1}"")]]";
        private const string QUERY_CONTENT_TYPE = @"[[:d=at(document.type,""{0}"")]]";
        private const string DOCUMENT_SEARCH_TEMPLATE = @"[[:d = at(document.{0}, ""{1}"")]]";

        #endregion

        #region Private Properties

        private static MenuElement CurrentParentMenu
        {
            get;
            set;
        }

        private static MenuElement CurrentLabelMenu
        {
            get;
            set;
        }

        #endregion

        #region Public Properties

        [Description("RoutingOverride"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public string RoutingOverride
        {
            get;
            set;
        }

        [Description("DataSource"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
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

        [Description("CityCounty"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public string CityCounty
        {
            get
            {
                if (!String.IsNullOrEmpty(cityCounty))
                {
                    cityCounty = cityCounty.Trim().ToLower();
                }
                return cityCounty;
            }
            set
            {
                cityCounty = value;
            }
        }

        #endregion

        /// <summary>
        /// 
        /// </summary>
        /// <param name="writer"></param>
        public override void RenderControl(HtmlTextWriter writer)
        {
            string html = null;
            string ctrlid = null;

            if (CityCounty == null)
            {
                ctrlid = String.Format("Y_MNU_SECTION_{0}", DataSource);
            }
            else
            {
                ctrlid = String.Format("Y_MNU_SECTION_{0}", DataSource == "Locations.Preschool" || DataSource == "Locations.Family Center YS" ? DataSource + "_" + CityCounty.ToUpper().Replace(" ", "") : DataSource);
            }

            CacheController.GetCachedObject<String>(ref html, ctrlid);

            if (html == null)
            {

                if (!String.IsNullOrEmpty(DataSource))
                {
                    BindControl();
                }

                StringBuilder sb = new StringBuilder();
                StringWriter tw = new StringWriter(sb);
                HtmlTextWriter hw = new HtmlTextWriter(tw);
                this.Render(hw);
                html = sb.ToString();
                CacheController.GetCachedObject<String>(ref html, ctrlid);
            }

            writer.Write(html);
        }

        /// <summary>
        /// 
        /// </summary>
        private void BindControl()
        {
            string[] mnulv = null;
            List<MenuElement> menulinks = null;

            if (DataSource.IndexOf(".") != -1)
            {
                mnulv = DataSource.Split(new string[] { "." }, StringSplitOptions.None);
            }


            var ParentMenuId = mnulv.Length > 0 ? mnulv[0] : String.Empty;
            var LabelId = mnulv.Length > 1 ? mnulv[1] : String.Empty;
            var ColumnId = mnulv.Length == 3 ? mnulv[2] : "0";
            int ColumnInt = 0;
            int.TryParse(ColumnId, out ColumnInt);


            if (mnulv != null && mnulv.Length > 0)
            {
                CurrentParentMenu = ParentMenu.FirstOrDefault(pelem => pelem.Text == ParentMenuId);
                if (CurrentParentMenu != null)
                {

                    if (ColumnInt == 0)
                    {
                        CurrentLabelMenu = LabelsMenu.FirstOrDefault(elem => elem.ParentId == CurrentParentMenu.Id && elem.Text == LabelId);
                    }
                    else
                    {
                        CurrentLabelMenu = LabelsMenu.FirstOrDefault(elem => elem.ParentId == CurrentParentMenu.Id && elem.Column == ColumnInt);
                    }
                    if (CurrentLabelMenu != null)
                    {

                        if (CurrentLabelMenu.contentTypeId == null)
                        {
                            // PreConfigured Links:
                            menulinks = LinksMenu.Where(elem => elem.ParentId == CurrentLabelMenu.Id).ToList();
                        }
                        else
                        {
                            menulinks = GetMenuContent(CurrentLabelMenu);
                            if (menulinks != null && menulinks.Count > 0)
                            {
                                menulinks.ForEach(mnuelem =>
                                {
                                    logger.Debug(String.Format("adding to global [{0}][{1}][{2}]", mnuelem.ParentGroup, mnuelem.RouteURL, mnuelem.Text));
                                    Global.DLinks.Add(mnuelem);
                                });
                            }
                        }

                        if (menulinks != null && menulinks.Count > 0)
                        {

                            menulinks = CreateMenuOverlay(menulinks);

                            rptMenuList.DataSource = menulinks;
                            rptMenuList.DataBind();
                        }
                    }
                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="MenuItem"></param>
        /// <returns></returns>
        private List<MenuElement> GetMenuContent(MenuElement MenuItem)
        {
            List<MenuElement> ySubMenuItemsEntry = null;
            List<MenuElement> orderedSubmenu = null;
            String query = null;

            switch (MenuItem.ContentType)
            {
                case "Camp":
                    {
                        query = String.Format(QUERY_CONTENT_TYPE, MenuItem.ContentType);
                        break;
                    }
                default:
                    {
                        query = String.Format(QUERY_CONTENT_GROUP, MenuItem.contentTypeId);
                        break;
                    }
            };

            var content = GetContent<List<prismic.Api.Document>>(query);
            var initcontrolid = int.Parse(MenuItem.Id.ToString() + "0");


            if (content != null && content.Count > 0)
            {
                ySubMenuItemsEntry = new List<MenuElement>();
                if (MenuItem.DisplaySubMenu)
                {
                    var tempdoc = content.FirstOrDefault();
                    var fragment = tempdoc.fragments.FirstOrDefault(elem => elem.Item1.Contains("Pages"));
                    var mainMenuGroup = tempdoc.GetText(string.Format("{0}.{1}", tempdoc.typ, "Title")).Value;


                    if (fragment != null)
                    {
                        var fragmentGroup = fragment.Item2 as prismic.Fragments.Fragment.Group;
                        if (fragmentGroup != null)
                        {
                            var groupDocuments = fragmentGroup.Item.ToList();
                            groupDocuments.ForEach(documentElement =>
                            {
                                MenuElement menuitem = null;
                                var documentid = ProcessDocument(documentElement);
                                var linkDocuments = GetContent<List<prismic.Api.Document>>(String.Format(DOCUMENT_SEARCH_TEMPLATE, "id", documentid));
                                if (linkDocuments != null && linkDocuments.Count > 0)
                                {
                                    var linkDocument = linkDocuments.FirstOrDefault();
                                    if (linkDocument != null)
                                    {
                                        var menulink = linkDocument.GetText(string.Format("{0}.{1}", linkDocument.typ, "Title")).Value;

                                        menuitem = new MenuElement()
                                        {
                                            Text = menulink.Trim(),
                                            Id = initcontrolid,
                                            ParentId = MenuItem.Id,
                                            ParentGroup = MenuItem.contentTypeId,
                                            contentTypeId = MenuItem.contentTypeId,
                                            ContentType = MenuItem.ContentType,
                                            DocumentId = linkDocument.id
                                        };
                                        if (MenuItem.contentTypeId.Contains("Family"))
                                        {
                                            menuitem.RouteURL = Common.EncodeClenupLink(String.Format(Common.LOCATIONS_ROOT, menulink));
                                        }
                                        else if (MenuItem.contentTypeId.Contains("Preschool"))
                                        {
                                            menuitem.RouteURL = Common.EncodeClenupLink(String.Format(Common.PRESCHOOL_ROOT, menulink));
                                        }
                                    }
                                }
                                ySubMenuItemsEntry.Add(menuitem);
                            });
                        }
                    }
                }

                else
                {
                    content.ForEach(elem =>
                    {
                        MenuElement menuitem = null;
                        initcontrolid++;
                        var menulink = elem.GetText(string.Format("{0}.{1}", elem.typ, "Title")).Value;

                        switch (MenuItem.ContentType)
                        {
                            case "Camp":
                                {
                                    var campItem = Global.MenuData.FirstOrDefault(menuelem => menuelem.Text == "Camps");
                                    var locParent = Global.MenuData.FirstOrDefault(menuelem => menuelem.ParentId == campItem.Id && menuelem.Text == "Locations");

                                    menuitem = new MenuElement()
                                    {
                                        Text = menulink.Trim(),
                                        Id = initcontrolid,
                                        ParentId = locParent.Id,
                                        contentTypeId = MenuItem.contentTypeId,
                                        ContentType = MenuItem.ContentType,
                                        DocumentId = elem.id,
                                        SubDocumentId = "Locations"
                                    };
                                    break;
                                }
                            default:
                                {
                                    //FIXME: heinous hack for "pasadena coming soon"
                                    if (DataSource == "Locations.Preschool" || DataSource == "Locations.Family Center YS")
                                    {
                                        if (CityCounty != null)
                                        {
                                            if (menulink.ToLower().Contains(CityCounty) || (menulink.Contains("Pasadena") && CityCounty == "anne arundel county"))
                                            {
                                                string menuText = HelperUtility.GetMenuText(menulink);
                                                menuitem = new MenuElement()
                                                {
                                                    Text = menuText,
                                                    Id = initcontrolid,
                                                    ParentId = MenuItem.Id,
                                                    ParentGroup = MenuItem.contentTypeId
                                                };
                                            }
                                        }
                                        else
                                        {
                                            string menuText = HelperUtility.GetMenuText(menulink);
                                            menuitem = new MenuElement()
                                            {
                                                Text = menuText,
                                                Id = initcontrolid,
                                                ParentId = MenuItem.Id,
                                                ParentGroup = MenuItem.contentTypeId
                                            };
                                        }
                                    }
                                    else
                                    {
                                        menuitem = new MenuElement()
                                        {
                                            Text = menulink.Trim(),
                                            Id = initcontrolid,
                                            ParentId = MenuItem.Id,
                                            ParentGroup = MenuItem.contentTypeId
                                        };
                                    }
                                    break;
                                }
                        };

                        if (MenuItem.contentTypeId.Contains("Family"))
                        {
                            if (menuitem != null)
                                menuitem.RouteURL = Common.EncodeClenupLink(String.Format(Common.LOCATIONS_ROOT, menulink));
                        }
                        else if (MenuItem.contentTypeId.Contains("Preschool"))
                        {
                            if (menuitem != null)
                                menuitem.RouteURL = Common.EncodeClenupLink(String.Format(Common.PRESCHOOL_ROOT, menulink));
                        }
                        if (menuitem != null)
                            ySubMenuItemsEntry.Add(menuitem);

                    });
                }

            }
            if (ySubMenuItemsEntry != null)
            {
                orderedSubmenu = ySubMenuItemsEntry.OrderBy(elem => elem.Text).ToList();
            }
            return orderedSubmenu;
        }

        private List<MenuElement> CreateMenuOverlay(List<MenuElement> Menu)
        {
            if (Menu != null && Menu.Count > 0)
            {
                Menu.ForEach(menuElem =>
                {
                    string link = null;
                    string tempParent = null;
                    string tempLabel = null;

                    if (String.IsNullOrEmpty(menuElem.action))
                    {

                        link = Common.EncodeClenupLink(String.IsNullOrEmpty(RoutingOverride) ?
                            string.Format(URL_TEMPLATE,
                            tempParent == null ? CurrentParentMenu.Text : tempParent,
                            tempLabel == null ? String.IsNullOrEmpty(CurrentLabelMenu.Text) ? "blank" : CurrentLabelMenu.Text : tempLabel,
                            String.IsNullOrEmpty(menuElem.contentTypeId) ? menuElem.Text : String.Format("{0}/{1}", menuElem.contentTypeId, menuElem.Text))
                            :
                            String.Format("{0}/{1}", RoutingOverride, menuElem.Text));
                    }
                    else
                    {
                        link = menuElem.action;
                    }

                    if (String.IsNullOrEmpty(menuElem.RouteURL))
                    {
                        logger.Debug(String.Format(" overlay overwrite of routeurl for [{0}][{1}][{2}] -> {3}", menuElem.ParentGroup, menuElem.RouteURL, menuElem.Text, link));
                        menuElem.RouteURL = link;
                    }
                });
            }
            return Menu;
        }

        #region Events
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void OnItemDataBound_rptMenuList(object sender, RepeaterItemEventArgs e)
        {
            var menuElem = e.Item.DataItem as MenuElement;
            if (menuElem == null)
            {
                return;
            }

            #region GetControl Refs:
            HtmlGenericControl listelem = e.Item.FindControl("ListItem") as HtmlGenericControl;
            HtmlAnchor anchor = e.Item.FindControl("ancMenuHref") as HtmlAnchor;
            Literal anchorText = e.Item.FindControl("ltlMenuText") as Literal;
            #endregion GetControl Refs:

            if (menuElem.RelLinkId != 0)
            {
                var tmpLink = menuElem.RouteURL;
                menuElem = LinksMenu.FirstOrDefault(linkelem => linkelem.Id == menuElem.RelLinkId);
                if (menuElem == null)
                {
                    return;
                }
                menuElem.RouteURL = tmpLink;
            }
            #region SetControl Val:
            if (listelem != null && anchor != null && anchorText != null)
            {
                anchorText.Text = menuElem.Text;
                anchor.HRef = menuElem.RouteURL;
                anchor.Target = anchor.HRef.Contains("http") ? "_blank" : "_self";

                if(menuElem.OverrideLabel != null)                
                {
                    anchorText.Text = menuElem.OverrideLabel;
                }

                if (!String.IsNullOrEmpty(menuElem.@class))
                {
                    listelem.Attributes.Add("class", menuElem.@class);
                }

                if (!string.IsNullOrEmpty(menuElem.AnchorClass))
                {
                    anchor.Attributes.Add("class", menuElem.AnchorClass);
                }
            }
            #endregion SetControl Val:
        }

        #endregion Events
    }
}