using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Configuration;

using prismic;
using prismic.extensions;
using PrismicIOAPI.Ext;

using PrismicIOAPI;
using PrismicIOAPI.Web.UI;
using PrismicIOAPI.Utility;
using YPortal.Web.App_Code.Types;
using YPortal.Web.App_Code.Types.SiteMap;




using Debug = System.Diagnostics.Debug;


namespace YPortal.Web.Controls
{
    public class YSiteMapControl : PrismicGeneric
    {
        #region Fields
        private const string _MenuDocTemplate = "<YMenu xmlns='WebbMason'>{0}</YMenu>";
        private const string _SubMenuDocTemplate = "<YSubMenuFormatter xmlns='WebbMason'>{0}</YSubMenuFormatter>";
        private YMenu menuData = null;
        private List<MenuElement> parentMenu = null;
        private List<MenuElement> labelsMenu = null;
        private List<MenuElement> linksMenu = null;

        //private const string ACTION_LINK_TEMPLATE = "{0}{1}?GroupEntryId={2}&EntryID={3}&LinkID={4}";
        private const string ACTION_LINK_TEMPLATE = "{0}{1}?GroupEntryId={2}&EntryID={3}&LinkID={4}&ContentType={5}&ParentGroup={6}&MenuID={7}";

        private const string REDIRECT_PART1_SCRIPT_TEMPLATE = "SpecialRedirect('{0}')";
        private const string REDIRECT_PART2_SCRIPT_TEMPLATE = "SpecialRedirectPartTwo('{0}')";
        private const string REDIRECT_PART3_SCRIPT_TEMPLATE = "SpecialRedirectPartThree('{0}','{1}')";



        private const string LinkID_TEMPLATE = "LinkID";
        private const string QUERY_CONTENT_GROUP = @"[[:d=fulltext(my.PageContainer.ContentGroup,""{0}"")]]";
        private const string QUERY_CONTENT_GROUP_TITLE = @"[[:d=fulltext(my.PageContainer.ContentGroup,""{0}"")][:d=fulltext(my.PageContainer.Title,""{1}"")]]";
        private const string QUERY_CONTENT_TYPE = @"[[:d=at(document.type,""{0}"")]]";
        private const string DOCUMENT_SEARCH_TEMPLATE = @"[[:d = at(document.{0}, ""{1}"")]]";



        #endregion Fields

        #region PublicProperties
        
        public List<MenuElement> ParentMenu
        {
            get
            {
                if (parentMenu == null)
                {
                    parentMenu = Global.MenuData                    
                    .Where(elem => elem.ParentId == 0 && elem.Text != null)
                    .OrderBy(elem => elem.Id)
                    .ToList();
                }
                return parentMenu;
            }
        }
        public List<MenuElement> LabelsMenu
        {
            get
            {
                if (labelsMenu == null)
                {
               labelsMenu = Global.MenuData
               .Where(elem => elem.isGroupItem == true && elem.ParentId != 0)
               .OrderBy(elem => elem.ParentId)
               .ThenBy(elem => elem.Id)
               .ThenBy(elem => elem.Column)
               .ToList();
                } return labelsMenu;
            }
        }

        public List<MenuElement> LinksMenu
        {
            get
            {
                if (linksMenu == null)
                {
                    linksMenu = Global.MenuData
                 .Where(elem => elem.isGroupItem == false && elem.ParentId != 0)
                 .OrderBy(elem => elem.ParentId)
                 .ThenBy(elem => elem.Id)
                 .ThenBy(elem => elem.Column)
                 .ToList();
                } return linksMenu;
            }
        }

        #endregion PublicProperties


        /// <summary>
        /// 
        /// </summary>
        /// <param name="writer"></param>
        protected override void Render(System.Web.UI.HtmlTextWriter writer)
        {           
            try
            {
                string _menuHTML = null;
                if (isCached)
                {
                    CacheController.GetCachedObject<String>(ref _menuHTML, "YSutemap");
                    if (_menuHTML == null)
                    {
                        _menuHTML = GetControl();
                        CacheController.GetCachedObject<String>(ref _menuHTML, "YSutemap");
                    }
                }
                else
                {
                    _menuHTML = GetControl();
                }
                writer.Write(_menuHTML);

            }
            catch (Exception ex)
            {
                writer.Write(ex.ToString());
            }
        }


        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public string GetControl()
        {         
            YSiteMapFormatter ySiteMap = new YSiteMapFormatter()
            {
                #region InitControl
                Panel = new YPortal.Web.App_Code.Types.SiteMap.div()
                {
                    @class = "main-body",
                    div1 = new List<YPortal.Web.App_Code.Types.SiteMap.div>()
                }

                #endregion InitControl
            };

            YPortal.Web.App_Code.Types.SiteMap.div _panelGroup = new YPortal.Web.App_Code.Types.SiteMap.div()
            {
                @class = "panel-group",
                id = this.ID,
                div1 = new List<YPortal.Web.App_Code.Types.SiteMap.div>()
            };

            #region Set Panel Headers
            ParentMenu.ForEach(_menuElem =>
            {
                YPortal.Web.App_Code.Types.SiteMap.div _defaultPanel = new YPortal.Web.App_Code.Types.SiteMap.div()
                {
                    @class = "panel panel-default",
                    div1 = new List<YPortal.Web.App_Code.Types.SiteMap.div>()
                };

                YPortal.Web.App_Code.Types.SiteMap.div _headingPanel = new YPortal.Web.App_Code.Types.SiteMap.div()
                {
                    @class = "panel-heading",
                    h4 = new List<divH4>()
                };

                divH4 _titlePanel = new divH4()
                {
                    @class = "panel-title",
                    a = new List<a>()
                };

                a _anchor = new a()
                {
                    @class = "collapsed",
                    datatoggle = "collapse",
                    dataparent = String.Format("#{0}", this.ID),
                    href = String.Format("#{0}", _menuElem.Id),
                    Value = _menuElem.Text
                };

                if (!String.IsNullOrEmpty(_menuElem.action))
                {
                    _anchor.href = _menuElem.action;
                    _anchor.target = _menuElem.target;
                    _anchor.datatoggle = null;
                }
                
                _titlePanel.a.Add(_anchor);
                _headingPanel.h4.Add(_titlePanel);
                _defaultPanel.div1.Add(_headingPanel);

              
               YPortal.Web.App_Code.Types.SiteMap.div labelPanel = (GetLabelPanel(_menuElem));
               _defaultPanel.div1.Add(labelPanel);
               _panelGroup.div1.Add(_defaultPanel);

            });
            #endregion Set Panel Headers


            ySiteMap.Panel.div1.Add(_panelGroup);
            var _tabHTML = CommonUtility.XmlSerialize(ySiteMap.Panel);
            var _htmlOut = System.Web.HttpUtility.HtmlDecode(_tabHTML);            
            return _htmlOut;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="ControlId"></param>
        /// <returns></returns>
        private YPortal.Web.App_Code.Types.SiteMap.div GetLabelPanel(MenuElement menuElement)
        {
            YPortal.Web.App_Code.Types.SiteMap.div _LabelPanel = null;
            var _ParentMenuItem = ParentMenu.FirstOrDefault(elem => elem.Id == menuElement.Id);

            var _LabelMenuItems = LabelsMenu.Where(elem =>
                elem.ParentId == _ParentMenuItem.Id
                && elem.Text != null).ToList();

            if (_ParentMenuItem != null
                && _LabelMenuItems != null
                && _LabelMenuItems.Count > 0)
            {

                _LabelPanel = new YPortal.Web.App_Code.Types.SiteMap.div()
                {
                    @class = "panel-collapse collapse",
                    id = menuElement.Id.ToString(),
                    style = "height: 0px;",
                    div1 = new List<YPortal.Web.App_Code.Types.SiteMap.div>()
                };
                YPortal.Web.App_Code.Types.SiteMap.div _bodyPanel = new YPortal.Web.App_Code.Types.SiteMap.div()
                {
                    @class = "panel-body",
                    div1 = new List<YPortal.Web.App_Code.Types.SiteMap.div>()
                };


                _LabelMenuItems.ForEach(elem =>
                {
                    divH3 _labelTitle = new divH3()
                    {
                        @class = "title-03",
                        Value = String.IsNullOrEmpty(elem.Text) ? " " : elem.Text
                    };

                    YPortal.Web.App_Code.Types.SiteMap.div _contentPanel = new YPortal.Web.App_Code.Types.SiteMap.div()
                    {
                        h3 = new List<divH3>(),
                        ul = new List<divULLI>()
                    };

                    var links = GetPanelContext(elem);
                    _contentPanel.ul = links;
                    _contentPanel.h3.Add(_labelTitle);
                    _bodyPanel.div1.Add(_contentPanel);
                });

                _LabelPanel.div1.Add(_bodyPanel);

            }
            return _LabelPanel;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="ControlId"></param>
        /// <returns></returns>
        private List<divULLI> GetPanelContext(MenuElement menuElement)
        {
            List<divULLI> contextList = new List<divULLI>();


            MenuElement label = LabelsMenu.FirstOrDefault(elem => elem.Id == menuElement.Id);
           

            if (label != null)
            {
                MenuElement parentMenuItem = ParentMenu.FirstOrDefault(elem => elem.Id == label.ParentId);

                #region Pre-Configured Links
                List<MenuElement> contextlinks = LinksMenu.Where(elem => elem.ParentId == label.Id).ToList();
                if (contextlinks != null && contextlinks.Count > 0)
                {
                    contextlinks.ForEach(elem =>
                    {
                        // Rel Link:
                        if (elem.RelLinkId != 0)
                        {                           
                            elem = LinksMenu.FirstOrDefault(linkelem => linkelem.Id == elem.RelLinkId);
                        }
                        var contextListElem = new divULLI()
                        {
                            a = new List<a>()
                        };


                        string _href = null;
                        string _linkId = null;

                        if (!String.IsNullOrEmpty(elem.action))
                        {
                            if (elem.action.ToUpper().Contains("HTTP"))
                            {
                                _href = elem.action;
                            }
                            else
                            {
                                _href = String.Format("{0}/{1}", BaseUrl, elem.action);
                            }
                        }
                        else
                        {
                            string groupid = null;
                            if (String.IsNullOrEmpty(label.Text))
                            {
                                groupid = parentMenuItem.Text;
                            }
                            else
                            {
                                groupid = String.Format("{0}.{1}", parentMenuItem.Text, label.Text);
                            }

                            _href = string.Format(ACTION_LINK_TEMPLATE, BaseUrl,
                                 String.IsNullOrEmpty(elem.action) ? ConfigurationManager.AppSettings["GenericYPage"] : elem.action,
                                 groupid,
                                 elem.Text.HTMLEncode(), elem.Text.HTMLEncode(),
                                 String.IsNullOrEmpty(elem.ContentType) ? "Page" : elem.ContentType,
                                 String.IsNullOrEmpty(elem.ParentGroup) ? String.Empty : elem.ParentGroup,
                                 elem.Id);
                        }

                        var anchor = new a()
                        {
                            Value = elem.Text,
                            href = _href,
                            target = elem.target,
                            onclick = elem.DisplayThumbNail ?
                                    String.Format(REDIRECT_PART1_SCRIPT_TEMPLATE, String.IsNullOrEmpty(_linkId) ? String.Format("TAB_CNT_{0}", elem.Id) : _linkId) :
                                    String.Format(REDIRECT_PART2_SCRIPT_TEMPLATE, String.IsNullOrEmpty(_linkId) ? elem.Text.HTMLEncode() : _linkId)
                        };

                        contextListElem.a.Add(anchor);
                        contextList.Add(contextListElem);
                    });
                }
                #endregion Pre-Configured Links

                #region Dynamic Content links
                if (!string.IsNullOrEmpty(label.contentTypeId))
                {

                    List<MenuElement> _menuContent = GetMenuContent(label);
                    if (_menuContent != null && _menuContent.Count > 0)
                    {
                        _menuContent.ForEach(elem =>
                        {
                            var href = string.Format(ACTION_LINK_TEMPLATE,
                                                               BaseUrl, // 0
                                           String.IsNullOrEmpty(label.action) ? ConfigurationManager.AppSettings["GenericYPage"] : label.action, 
                                           String.IsNullOrEmpty(elem.contentTypeId) ? elem.Text : elem.contentTypeId, 
                                           String.IsNullOrEmpty(elem.SubDocumentId) ? elem.Id.ToString() : elem.SubDocumentId,
                                           String.IsNullOrEmpty(elem.SubDocumentId) ? elem.Id.ToString() : elem.SubDocumentId,
                                           String.IsNullOrEmpty(elem.ContentType) ? "Page" : elem.ContentType, 
                                           String.IsNullOrEmpty(elem.ParentGroup) ? String.Empty : elem.ParentGroup, 
                                           elem.Id); 
                            var clickAction = String.Format(REDIRECT_PART3_SCRIPT_TEMPLATE,
                                    string.IsNullOrEmpty(label.contentTypeId) ? label.Id.ToString()
                                    : string.Format("TAB_CNT_{0}", elem.ParentId), elem.DocumentId);



                            var contextListElem = new divULLI()
                            {
                                a = new List<a>()
                            };

                            var anchor = new a()
                            {
                                Value = elem.Text,
                                href = href,
                                target = label.target,
                                onclick = clickAction
                            };

                            contextListElem.a.Add(anchor);
                            contextList.Add(contextListElem);
                        });
                    }
                }
                #endregion Dynamic Content links
            }
            

            return contextList;
        }



        /// <summary>
        /// 
        /// </summary>
        /// <param name="EntryId"></param>
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

            var content = GetContent(query) as List<prismic.Api.Document>;
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
                                var linkDocuments = GetContent(String.Format(DOCUMENT_SEARCH_TEMPLATE, "id", documentid)) as List<prismic.Api.Document>;
                                if (linkDocuments != null && linkDocuments.Count > 0)
                                {
                                    var linkDocument = linkDocuments.FirstOrDefault();
                                    if (linkDocument != null)
                                    {
                                        var menulink = linkDocument.GetText(string.Format("{0}.{1}", linkDocument.typ, "Title")).Value;
                                        menuitem = new MenuElement()
                                        {
                                            Text = menulink,
                                            Id = initcontrolid,
                                            ParentId = MenuItem.Id,
                                            ParentGroup = MenuItem.contentTypeId,
                                            contentTypeId = MenuItem.contentTypeId,
                                            ContentType = MenuItem.ContentType,
                                            DocumentId = linkDocument.id
                                        };
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
                                        Text = menulink,
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
                                    menuitem = new MenuElement()
                                    {
                                        Text = menulink,
                                        Id = initcontrolid,
                                        ParentId = MenuItem.Id,
                                        ParentGroup = MenuItem.contentTypeId
                                    };
                                    break;
                                }
                        };
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
    }
}