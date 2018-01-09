using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Text;
using System.ComponentModel;
using System.Web.UI.WebControls;
using prismic;
using prismic.extensions;


using PrismicIOAPI;
using PrismicIOAPI.Web.UI;
using PrismicIOAPI.Utility;
using PrismicIOAPI.Ext;

using YPortal.Web.App_Code.Types;
using YPortal.Web.Controls;
using YPortal.Web.User_Control;
using YPortal.Web.User_Control.Data;
using YPortal.Web.App_Logic;
using Debug = System.Diagnostics.Debug;

namespace YPortal.Web.Controls
{

    /// <summary>
    ///  Used to display dynamic tab data
    /// </summary>
    public class YDTabControl : YBaseUC //PrismicGeneric
    {
        #region Public properties

        private string query = null;


        public MenuElement MenuLink
        {
            get;
            set;
        }
        private string Query
        {
            get
            {
                if (String.IsNullOrEmpty(query))
                {
                    if (!String.IsNullOrEmpty(MenuLinkText))
                    {
                        MenuLink = new MenuElement
                        {
                            Text = MenuLinkText
                        };
                    }

                    var queryParam = MenuLink == null ? GroupEntryId : MenuLink.Text;

                    if (!String.IsNullOrEmpty(queryParam))
                    {
                        if (String.IsNullOrEmpty(ParentGroup))
                        {
                            query = String.Format(SEARCH_QUERY_TEMPLATE, queryParam);
                        }
                        else
                        {
                            query = String.Format(SEARCH_QUERY_TEMPLATE_TYPE, queryParam, ParentGroup);
                        }
                    }
                    else if (!String.IsNullOrEmpty(QueryContentType)
                               && !String.IsNullOrEmpty(QueryContentField)
                               && !String.IsNullOrEmpty(EntryId))
                    {
                        query = String.Format(SEARCH_QUERY_TEMPLATE_D_TYPE, QueryContentType, QueryContentField, EntryId);
                    }
                }

                return query;
            }
        }

        public bool isActive
        {
            get;
            set;
        }


        [Description("Menu Link Text"), Browsable(true), DefaultValue(true), Category("Appearance"), Bindable(true)]
        public String MenuLinkText
        {
            get;
            set;
        }


        [Description("Menu Based tabs"), Browsable(true), DefaultValue(true), Category("Appearance"), Bindable(true)]
        public bool MenuBased { get; set; }

        //[Description("Transformation rule"), Browsable(true), DefaultValue(true), Category("Appearance"), Bindable(true)]
        //public override string Transformation { get; set; }


        [Description("Query Content Type"), Browsable(true), DefaultValue("Page"), Category("Appearance"), Bindable(true)]
        public String QueryContentType
        {
            get;
            set;
        }

        [Description("Query Content Type"), Browsable(true), DefaultValue("Title"), Category("Appearance"), Bindable(true)]
        public String QueryContentField
        {
            get;
            set;
        }

        [Description("Hidden Tabs"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public String HiddenTabs
        {
            get;
            set;
        }

        #endregion Public properties

        // private bool isactive = false;
        // private string _id = null;
        private const string DOCUMENT_SEARCH_TEMPLATE = @"[[:d = at(document.{0}, ""{1}"")]]";

        #region Fields
        private const string _MenuDocTemplate = "<YMenu xmlns='WebbMason'>{0}</YMenu>";
        private const string _SubMenuDocTemplate = "<YSubMenuFormatter xmlns='WebbMason'>{0}</YSubMenuFormatter>";
        private const string CDATA = "<[CDATA[{0}]]>";
        private const string ACTION_LINK_TEMPLATE = "{0}?GroupEntryId={1}&EntryID={2}";
        private const string SEARCH_QUERY_TEMPLATE = @"[[:d=fulltext(my.PageContainer.Title,""{0}"")]]";
        private const string SEARCH_QUERY_TEMPLATE_TYPE = @"[[:d = fulltext(my.PageContainer.Title,""{0}"")] [:d = fulltext(my.PageContainer.ContentGroup,""{1}"")]]";

        private const string SEARCH_QUERY_TEMPLATE_D_TYPE = @"[[:d = fulltext(my.{0}.{1},""{2}"")]]";

        #endregion Fields
        public MediaContainer MediaInfo
        {
            get;
            set;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="writer"></param>
        protected override void Render(HtmlTextWriter writer)
        {
            string _tabHTML = null;
            List<prismic.Api.Document> _TabData = null;
            var ctrlid = MediaInfo == null || MediaInfo.Document == null ? Query : MediaInfo.Document.id;
            if (isCached)
            {
                // CacheController.GetCachedObject<String>(ref _tabHTML, String.Format("YT_{0}", ctrlid));                
                if (_tabHTML == null)
                {
                    _TabData = GetControlContent();
                    if (_TabData != null && _TabData.Count > 0)
                    {
                        SetControlsContent(_TabData);
                        _tabHTML = GetTab(_TabData, this.EntryId);
                        writer.Write(_tabHTML);
                    }
                    CacheController.GetCachedObject<String>(ref _tabHTML, String.Format("YT_{0}", ctrlid));
                }
                else
                {
                    writer.Write(_tabHTML);
                }
            }
            else
            {
                _TabData = GetControlContent();
                if (_TabData != null && _TabData.Count > 0)
                {
                    SetControlsContent(_TabData);
                    _tabHTML = GetTab(_TabData, this.EntryId);
                    writer.Write(_tabHTML);
                }
            }
        }




        /// <summary>
        /// Add generic content controls to be used in the tab:
        /// </summary>
        /// <param name="TabData"></param>
        private void SetControlsContent(List<prismic.Api.Document> TabData)
        {
            if (TabData == null)
            {
                return;
            }

            TabData.ForEach(_tab_element =>
            {
                var menuLink = _tab_element.GetText(String.Format("{0}.Title", _tab_element.typ));
                string controlId = null;
                if (menuLink != null)
                {
                    controlId = String.Format("{0}_Tab", menuLink.Value
                        .HTMLEncode());
                }

                if (controlId == null)
                {
                    return;
                }
                var _control = FindControlRecursive(this, controlId);

                if (_control == null)
                {

                    YBaseUC contentControl = null;
                    switch (_tab_element.typ)
                    {
                        case "Table":
                            {

                                contentControl = new YGenericTabControl()
                                {
                                    EntryId = controlId,
                                    ID = controlId,
                                    PrismicDocument = _tab_element,
                                    isCached = false
                                };

                                break;
                            }
                        default:
                            {
                                contentControl = new YGenericControl()
                                {
                                    EntryId = controlId,
                                    ID = controlId,
                                    PrismicDocument = _tab_element,
                                    isCached = false
                                };
                                break;
                            }
                    }

                    this.Controls.Add(contentControl);
                }
            });
        }

        /// <summary>
        ///  Get Control content:
        /// </summary>
        /// <param name="ControlId"></param>
        /// <returns></returns>
        private string GetControlContent(string ControlId)
        {
            string _html = string.Empty;

            try
            {
                if (String.IsNullOrEmpty(ControlId))
                {
                    return null;
                }


                var _control = FindControl(ControlId);


                if (_control != null)
                {
                    _html = RenderControl(_control);
                }
            }
            catch (Exception ex)
            {

                _html = _html.ToString();
            }


            return System.Web.HttpUtility.HtmlDecode(_html);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="control"></param>
        /// <returns></returns>
        private string RenderControl(Control control)
        {
            StringBuilder sb = new StringBuilder();
            using (StringWriter sw = new StringWriter(sb))
            {
                using (HtmlTextWriter writer = new HtmlTextWriter(sw))
                {
                    control.RenderControl(writer);
                }
            }
            return sb.ToString();
        }



        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        private string GetTab(List<prismic.Api.Document> TabData, string ActiveTab)
        {
            string _htmlOut = "No Content";
            string activeTabElem = String.Empty;

            if (this.RoutingInfo != null)
            {
                activeTabElem = !String.IsNullOrEmpty(this.RoutingInfo.MnuLv4) ?
                    Common.EncodeClenupLink(this.RoutingInfo.MnuLv4) :
                    !String.IsNullOrEmpty(this.RoutingInfo.MnuLv3) ? Common.EncodeClenupLink(this.RoutingInfo.MnuLv3) : String.Empty;
            }

            if (TabData == null || TabData.Count == 0)
            {
                return _htmlOut;
            }

            // try
            // {
            #region Init Tab

            YDTabFormatter _YDTabFormatter = new YDTabFormatter();
            _YDTabFormatter.Panels = new List<DivPanel>();
            var main_tab_panel = new DivPanel()
            {
                @class = "row",
                SubDivPanel = new List<DivPanel>()
            };

            var panel_col_md12 = new DivPanel()
            {
                @class = "col-md-12",
                SubDivPanel = new List<DivPanel>()
            };

            var panel_tab_content = new DivPanel()
            {
                @class = "tab-content",
                SubDivPanel = new List<DivPanel>()
            };

            if (!isActive)
            {
                if (CurrentLink != null && MediaInfo != null && MediaInfo.MenuItem != null)
                {
                    isActive = Common.EncodeClenupLink(CurrentLink.Text).Equals(Common.EncodeClenupLink(MediaInfo.MenuItem.Text), StringComparison.OrdinalIgnoreCase);
                }
                else if (!string.IsNullOrEmpty(EntryId) && !string.IsNullOrEmpty(RoutingInfo.MnuLv2))
                {
                    isActive = Common.EncodeClenupLink(EntryId.Replace(" ", "")).Equals(Common.EncodeClenupLink(RoutingInfo.MnuLv2.Replace(" ", "")), StringComparison.OrdinalIgnoreCase);
                }
                else
                {
                    isActive = true;
                }
            }


            var panel_tab_pane = new DivPanel()
            {
                @class = string.Format("tab-pane {0}", isActive ? "active" : string.Empty), //active
                id = String.IsNullOrEmpty(this.ClientControlId) ? this.ID : this.ClientControlId,
                SubDivPanel = new List<DivPanel>()
            };

            var div_tab_content_area = new DivPanel()
            {
                @class = "content-area-bg",
                SubDivPanel = new List<DivPanel>(),
                UnOrderedList = new List<DivPanelUL>()
            };

            panel_col_md12.SubDivPanel.Add(panel_tab_content);
            panel_tab_content.SubDivPanel.Add(panel_tab_pane);
            panel_tab_pane.SubDivPanel.Add(div_tab_content_area);
            main_tab_panel.SubDivPanel.Add(panel_col_md12);
            _YDTabFormatter.Panels.Add(main_tab_panel);

            #endregion Init Tab
            #region Init Tab Header
            var nav_tabs = new DivPanelUL()
            {
                @class = "nav nav-tabs responsive hidden-xs hidden-sm",
                id = "myTab",
                ListItems = new List<UListEment>()
            };
            div_tab_content_area.UnOrderedList.Add(nav_tabs);
            #endregion Init Tab Header
            #region CondtructTabHeader

            int _tabCnt = 0;

            bool isOtherActiveAvailibility = false;

            TabData.ForEach(_linkElem =>
            {
                bool _active_tab = false;
                string title = String.Empty;
                var title_fragment = _linkElem.GetText(String.Format("{0}.Title", _linkElem.typ));

                if (title_fragment != null)
                {
                    title = title_fragment.Value;
                }


                if (!MenuBased && String.IsNullOrEmpty(activeTabElem))
                {
                    _active_tab = _tabCnt == 0;
                }
                else
                {
                    _active_tab = activeTabElem.Equals(Common.EncodeClenupLink(title), StringComparison.OrdinalIgnoreCase);
                    isOtherActiveAvailibility = true;
                }


                var _tabHead = new UListEment()
                {
                    @class = null,
                    Anchors = new List<HtmlAnchor>()
                };

                if (_active_tab)
                {
                    _tabHead.@class = "active";
                }


                if (!String.IsNullOrEmpty(title) && title.Length > 30)
                {
                    if (String.IsNullOrEmpty(_tabHead.@class))
                    {
                        _tabHead.@class = "big-tab";
                    }
                    else
                    {
                        _tabHead.@class += " big-tab";
                    }
                }

                var tabHeadAnchor = new HtmlAnchor()
                {
                    href = string.Format("#tab{0}", Common.EncodeClenupLink(title)),
                    datatoggle = "tab",
                    @class = "",
                    Value = title

                };
                _tabHead.Anchors.Add(tabHeadAnchor);
                nav_tabs.ListItems.Add(_tabHead);
                _tabCnt++;
            });
            //if (isOtherActiveAvailibility == true)
            //{
            //    nav_tabs.ListItems[0].Anchors[0].@class = "";
            //}

            if (nav_tabs.ListItems != null && nav_tabs.ListItems.Count > 0)
            {
                var activeClassCount = nav_tabs.ListItems.Count(x => x.@class!=null && x.@class.ToLower().Contains("active"));

                if (activeClassCount == 0)
                {
                    nav_tabs.ListItems.FirstOrDefault().@class = "active";
                }
            }



            #endregion CondtructTabHeader
            #region Construct TabContent

            div_tab_content_area.SubDivPanel = new List<DivPanel>();
            var divTabDetailContent = new DivPanel()
            {
                @class = "tab-content",
                SubDivPanel = new List<DivPanel>()
            };

            div_tab_content_area.SubDivPanel.Add(divTabDetailContent);
            _tabCnt = 0;


            TabData.ForEach(_linkElem =>
            {

                bool _active_tab = false;
                var title_fragment = _linkElem.GetText(String.Format("{0}.Title", _linkElem.typ));
                String title = String.Empty;
                if (title_fragment != null)
                {
                    title = title_fragment.Value;
                }

                if (!MenuBased && String.IsNullOrEmpty(activeTabElem))
                {
                    _active_tab = _tabCnt == 0;
                }
                else
                {
                    _active_tab = activeTabElem.Equals(Common.EncodeClenupLink(title), StringComparison.OrdinalIgnoreCase);
                }

                var div_detail_pane = new DivPanel()
                {
                    @class = string.Format("tab-pane {0}", _active_tab ? "active" : String.Empty),
                    id = Common.EncodeClenupLink(string.Format("tab{0}", title)),
                    SubDivPanel = new List<DivPanel>()
                };


                #region Tab Pane header
                var div_panel_Header = new DivPanel()
                {
                    @class = "panel-heading visible-xs visible-sm",
                    SubDivPanel = new List<DivPanel>()
                };

                var div_panel_Header_Title = new DivPanel()
                {
                    @class = "panel-title",
                    Anchor = new List<HtmlAnchor>()
                };



                //TODO: REVISE
                var anchor_panel_Header_Title = new HtmlAnchor()
                {
                    href = string.Format("#tab{0}", Common.EncodeClenupLink(title)),
                    dataparent = "#collapse-myTab??",
                    datatoggle = "collapse",
                    @class = "accordion-toggle deco-none misc-class",
                    Value = title
                };
                div_panel_Header_Title.Anchor.Add(anchor_panel_Header_Title);
                div_panel_Header.SubDivPanel.Add(div_panel_Header_Title);

                #endregion Tab Pane header



                #region Tab Pane Data
                var div_panel_Data = new DivPanel()
                {
                    @class = "panel panel-default",
                    SubDivPanel = new List<DivPanel>()
                };

                var div_panel_Collapse = new DivPanel()
                {
                    @class = "panel-collapse in",
                    id = _linkElem.id,
                    SubDivPanel = new List<DivPanel>()
                };

                var div_panel_Collapse_Body = new DivPanel()
                {
                    @class = "panel-body",
                    SubDivPanel = new List<DivPanel>(),
                    Anchor = new List<HtmlAnchor>()
                };

                var menuLink = _linkElem.GetText(String.Format("{0}.Title", _linkElem.typ));
                string controlId = null;
                if (menuLink != null)
                {
                    controlId = String.Format("{0}_Tab", menuLink.Value.HTMLEncode());
                }

                var div_panel_Collapse_Body_Row = new DivPanel()
                {
                    @class = "row",
                    Value = GetControlContent(controlId)
                };

                div_panel_Collapse_Body.SubDivPanel.Add(div_panel_Collapse_Body_Row);

                //First Collapsible panel
                if (_linkElem.GetText("Page.Year1") != null && _linkElem.GetGroup("Page.Months1") != null)
                {
                    var year1 = _linkElem.GetText("Page.Year1").Value;

                    var div_panel_Collapse_Body_Row_Collapsible = new DivPanel()
                    {
                        SubDivPanel = new List<DivPanel>(),
                        Anchor = new List<HtmlAnchor>()
                    };
                    var div_panel_Collapse_Body_Row_Collapsible_Header = new DivPanel()
                    {
                        Anchor = new List<HtmlAnchor>()
                    };
                    var div_panel_Collapse_Body_Row_Collapsible_Header_Anchor = new HtmlAnchor()
                    {
                        datatoggle = "collapse",
                        href = "#collapseExample1" + _linkElem.id,
                        Value = year1 + "<span class='accordion-icon plus-ico'></span>",
                        @class = "accordion-header"
                    };

                    var expandableContent = string.Empty;

                    var fragment = _linkElem.fragments.FirstOrDefault(elem => elem.Item1.Contains("Page.Months1"));
                    if (fragment != null)
                    {
                        var fragmentGroup = fragment.Item2 as prismic.Fragments.Fragment.Group;
                        if (fragmentGroup != null)
                        {
                            var groupDocuments = fragmentGroup.Item.ToList();
                            groupDocuments.ForEach(documentElement =>
                            {
                                expandableContent += GetHtml(documentElement, "Date");
                                expandableContent += GetHtml(documentElement, "Content");
                            });
                        }
                    }

                    var div_panel_Collapse_Body_Row_Collapsible_Body = new DivPanel()
                    {
                        id = "collapseExample1" + _linkElem.id,
                        @class = "collapse accordion-description",
                        Value = expandableContent
                    };
                    div_panel_Collapse_Body_Row_Collapsible_Header.Anchor.Add(div_panel_Collapse_Body_Row_Collapsible_Header_Anchor);
                    div_panel_Collapse_Body_Row_Collapsible.SubDivPanel.Add(div_panel_Collapse_Body_Row_Collapsible_Body);

                    div_panel_Collapse_Body.SubDivPanel.Add(div_panel_Collapse_Body_Row_Collapsible_Header);
                    div_panel_Collapse_Body.SubDivPanel.Add(div_panel_Collapse_Body_Row_Collapsible);
                }

                //Second Collapsible panel
                if (_linkElem.GetText("Page.Year2") != null && _linkElem.GetGroup("Page.Months2") != null)
                {
                    var year2 = _linkElem.GetText("Page.Year2").Value;

                    var div_panel_Collapse_Body_Row_Collapsible = new DivPanel()
                    {
                        SubDivPanel = new List<DivPanel>(),
                        Anchor = new List<HtmlAnchor>()
                    };
                    var div_panel_Collapse_Body_Row_Collapsible_Header = new DivPanel()
                    {
                        Anchor = new List<HtmlAnchor>()
                    };
                    var div_panel_Collapse_Body_Row_Collapsible_Header_Anchor = new HtmlAnchor()
                    {
                        datatoggle = "collapse",
                        href = "#collapseExample2" + _linkElem.id,
                        Value = year2 + "<span class='accordion-icon plus-ico'></span>",
                        @class = "accordion-header"
                    };

                    var expandableContent = string.Empty;

                    var fragment = _linkElem.fragments.FirstOrDefault(elem => elem.Item1.Contains("Page.Months2"));
                    if (fragment != null)
                    {
                        var fragmentGroup = fragment.Item2 as prismic.Fragments.Fragment.Group;
                        if (fragmentGroup != null)
                        {
                            var groupDocuments = fragmentGroup.Item.ToList();
                            groupDocuments.ForEach(documentElement =>
                            {
                                expandableContent += GetHtml(documentElement, "Date");
                                expandableContent += GetHtml(documentElement, "Content");
                            });
                        }
                    }

                    var div_panel_Collapse_Body_Row_Collapsible_Body = new DivPanel()
                    {
                        id = "collapseExample2" + _linkElem.id,
                        @class = "collapse accordion-description",
                        Value = expandableContent
                    };
                    div_panel_Collapse_Body_Row_Collapsible_Header.Anchor.Add(div_panel_Collapse_Body_Row_Collapsible_Header_Anchor);
                    div_panel_Collapse_Body_Row_Collapsible.SubDivPanel.Add(div_panel_Collapse_Body_Row_Collapsible_Body);

                    div_panel_Collapse_Body.SubDivPanel.Add(div_panel_Collapse_Body_Row_Collapsible_Header);
                    div_panel_Collapse_Body.SubDivPanel.Add(div_panel_Collapse_Body_Row_Collapsible);
                }


                div_panel_Collapse.SubDivPanel.Add(div_panel_Collapse_Body);
                div_panel_Data.SubDivPanel.Add(div_panel_Collapse);
                #endregion Tab Pane Data


                div_detail_pane.SubDivPanel.Add(div_panel_Header);
                div_detail_pane.SubDivPanel.Add(div_panel_Data);
                divTabDetailContent.SubDivPanel.Add(div_detail_pane);
                _tabCnt++;
            });
            // set default active:



            if (divTabDetailContent.SubDivPanel != null && divTabDetailContent.SubDivPanel.Count > 0)
            {
                if (divTabDetailContent.SubDivPanel.FirstOrDefault(elem => elem.@class.Contains("active")) == null)
                {
                    divTabDetailContent.SubDivPanel.FirstOrDefault().@class = "tab-pane active";
                }
            }



            var _htmlOutTemp = CommonUtility
                   .XmlSerialize(_YDTabFormatter.Panels.FirstOrDefault()
                    .SubDivPanel.FirstOrDefault()
                   .SubDivPanel.FirstOrDefault()
                   .SubDivPanel.FirstOrDefault());

            #endregion Construct TabContent
            _htmlOut = System.Web.HttpUtility
                .HtmlDecode(_htmlOutTemp);
            // }
            //catch (Exception ex)
            // {
            //    _htmlOut = ex.ToString();
            // }
            return _htmlOut;
        }



        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        private List<prismic.Api.Document> GetControlContent()
        {
            List<prismic.Api.Document> documents = null;
            prismic.Api.Document tempdoc = null;

            if (MediaInfo == null || MediaInfo.Document == null)
            {
                if (String.IsNullOrEmpty(Query))
                {
                    return null;
                }

                var content = GetContent<List<prismic.Api.Document>>(Query);
                if (content != null && content.Count > 0)
                {
                    documents = new List<prismic.Api.Document>();
                    tempdoc = content.FirstOrDefault();
                }
            }
            else
            {
                documents = new List<prismic.Api.Document>();
                tempdoc = MediaInfo.Document;
            }


            #region PageContainer Processing


            var fragment = tempdoc.fragments.FirstOrDefault(elem => elem.Item1.Contains("Pages"));
            if (fragment != null)
            {
                var fragmentGroup = fragment.Item2 as prismic.Fragments.Fragment.Group;
                if (fragmentGroup != null)
                {
                    var groupDocuments = fragmentGroup.Item.ToList();
                    groupDocuments.ForEach(documentElement =>
                    {
                        var documentid = ProcessDocument(documentElement);
                        var linkDocuments = GetContent<List<prismic.Api.Document>>(String.Format(DOCUMENT_SEARCH_TEMPLATE, "id", documentid));
                        if (linkDocuments != null && linkDocuments.Count > 0)
                        {
                            documents.Add(linkDocuments.FirstOrDefault());
                        }
                    });
                }

                var links = tempdoc.GetAll("PageContainer.Pages");
                if (documents != null && documents.Count > 0)
                {
                    documents = documents.Where(elem => elem.GetText(String.Format("{0}.Title", elem.typ)) != null).ToList();
                }
            }
            #endregion PageContainer Processing
            else
            {
                if (tempdoc != null)
                {
                    documents.Add(tempdoc);
                }
            }

            if (documents != null && !string.IsNullOrEmpty(HiddenTabs))
            {
                var hiddenTabs = HiddenTabs.Split(',');
                documents = documents.Where(x => !hiddenTabs.Contains(x.GetText("Page.Title").Value.Replace(".", "").Replace(" ", ""))).ToList();
            }

            return documents;
        }

        public List<prismic.Api.Document> GetTabLists()
        {
            return GetControlContent();
        }
    }
}