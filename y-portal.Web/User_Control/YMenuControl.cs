using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Configuration;

using prismic.extensions;

using PrismicIOAPI;
using PrismicIOAPI.Web.UI;
using PrismicIOAPI.Ext;

using PrismicIOAPI.Utility;
using YPortal.Web.App_Code.Types;




using Debug = System.Diagnostics.Debug;

namespace YPortal.Web.Controls
{

    public class YMenuControl : PrismicGeneric
    {
        private List<MenuElement> menuData = null;

        private const string _MenuDocTemplate = "<YMenu xmlns='WebbMason'>{0}</YMenu>";
        private const string _SubMenuDocTemplate = "<YSubMenuFormatter xmlns='WebbMason'>{0}</YSubMenuFormatter>";
        private const string CDATA = "<[CDATA[{0}]]>";
        private const string ACTION_LINK_TEMPLATE = "{0}{1}?GroupEntryId={2}&EntryID={3}&LinkID={4}&ContentType={5}&ParentGroup={6}&MenuID={7}";
        private const string REDIRECT_PART1_SCRIPT_TEMPLATE = "SpecialRedirect('{0}')";
        private const string REDIRECT_PART2_SCRIPT_TEMPLATE = "SpecialRedirectPartTwo('{0}')";
        private const string REDIRECT_PART3_SCRIPT_TEMPLATE = "SpecialRedirectPartThree('{0}','{1}')";

        private const string LinkID_TEMPLATE = "LinkID";
        private const string QUERY_CONTENT_GROUP = @"[[:d=fulltext(my.PageContainer.ContentGroup,""{0}"")]]";
        private const string QUERY_CONTENT_GROUP_TITLE = @"[[:d=fulltext(my.PageContainer.ContentGroup,""{0}"")][:d=fulltext(my.PageContainer.Title,""{1}"")]]";
        private const string QUERY_CONTENT_TYPE = @"[[:d=at(document.type,""{0}"")]]";
        private const string DOCUMENT_SEARCH_TEMPLATE = @"[[:d = at(document.{0}, ""{1}"")]]";


        private string _ContentTypeId = null;
        

        /// <summary>
        /// 
        /// </summary>
        /// <param name="writer"></param>
        protected override void Render(System.Web.UI.HtmlTextWriter writer)
        {
            string _menuHTML = null;
            try
            {
                if (isCached)
                {
                    CacheController.GetCachedObject<String>(ref _menuHTML, "YMenu");
                    if (_menuHTML == null)
                    {
                        _menuHTML = GetMenu();
                        CacheController.GetCachedObject<String>(ref _menuHTML, "YMenu");
                    }
                }
                else
                {
                    _menuHTML = GetMenu();
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
        private string GetMenu()
        {           

            #region Set Collections
            
            //// GetParents:
            var _parentMenuEntries = Global.MenuData            
                .Where(elem => elem.ParentId == 0 && elem.Text!= null)
                .OrderBy(elem => elem.Id)
                .ToList();
            /// GetLabels:
            var _labelMenuEntries = Global.MenuData                
                .Where(elem => elem.isGroupItem == true && elem.ParentId!= 0)
                .OrderBy(elem => elem.ParentId)
                .ThenBy(elem => elem.Id)
                .ThenBy(elem => elem.Column)
                .ToList();

            //// GetLinks:
            var _linkMenuEntries = Global.MenuData               
                .Where(elem => elem.isGroupItem == false && elem.ParentId!= 0)
                .OrderBy(elem => elem.ParentId)
                .ThenBy(elem => elem.Id)
                .ThenBy(elem => elem.Column)
                .ToList();
            #endregion Set Collections



            ///// Generate Menu:
            YMenuFormatter _menu = new YMenuFormatter();
            #region Init Menu structure
            _menu.div1 = new MainContainerDiv()
            {
                @class = "top-nav collapse",
                div = new MainContainerPlaceholderDiv()
                {
                    @class = "navbar",
                    ul = new MainMenuListUL()
                    {
                        @class = "nav navbar-nav",
                        li = new List<MenuListItemLI>()
                    }
                }
            };
            #endregion Init Menu structure

            #region Init Parent Menu:
            // Init Parent List:
            _parentMenuEntries.ForEach(_menuElem =>
            {
                _menu.div1.div.ul.li.Add(new MenuListItemLI()
                {
                    @class = "dropdown",
                    a = new MenuAnchor()
                    {
                        @class = String.IsNullOrEmpty(_menuElem.@class) ? "dropdown-toggle" : _menuElem.@class,
                        datatoggle = string.IsNullOrEmpty(_menuElem.action) ? string.IsNullOrEmpty(_menuElem.datatoggle) ? "dropdown" : _menuElem.datatoggle : null,
                        href = !string.IsNullOrEmpty(_menuElem.datatoggle) ? String.Empty : _menuElem.action,
                        Text = _menuElem.Text,
                        target = _menuElem.target,
                        dataTarget = String.IsNullOrEmpty(_menuElem.dataTarget) ? null : _menuElem.dataTarget
                    },
                    Id = _menuElem.Id,
                    div = new MenuLabelDiv()
                    {
                        @class = String.IsNullOrEmpty(_menuElem.menuPanelClass) ?
                                    "dropdown-menu max-width positions"
                                    : _menuElem.menuPanelClass

                    }
                });
            });
            #endregion Init Parent Menu:



            #region Init label List:

            _parentMenuEntries.ForEach(_parentMenuEntry =>
            {
                var _menuLink = _menu.div1.div.ul.li.FirstOrDefault(elem => elem.Id == _parentMenuEntry.Id);

                var labels = _labelMenuEntries.Where(elem => elem.ParentId == _parentMenuEntry.Id);

                var _labelsGr = from _labelRes in labels
                                group _labelRes by _labelRes.Column into _grRes
                                select _grRes.ToList();

                // Reset Empty menu
                if (_labelsGr.ToList().Count == 0)
                {
                    _menuLink.div = null;
                }


                /// Process Labels
                foreach (var _labels in _labelsGr)
                {
                    var _div = new MenuGroupDiv()
                    {
                        @class = "common-left-float",
                        ul = new List<MenuGroupList>()
                    };

                    foreach (var _label in _labels)
                    {
                        var _ul = new MenuGroupList();

                        if (!string.IsNullOrEmpty(_label.Text))
                        {
                            var label = new MenuGroupLabel()
                            {
                                Text =   _label.Text
                            };
                            _ul.label = label;
                        }

                        #region Dynamic content links
                        if (!string.IsNullOrEmpty(_label.contentTypeId))
                        {
                            List<MenuElement> _menuContent = GetMenuContent(_label);                            

                            if (_menuContent != null)
                            {
                                if (_ul.li == null)
                                {
                                    _ul.li = new List<MenuGroupListItem>();
                                }
                                _menuContent.ForEach(elem =>
                                {
                                    var href = string.Format(ACTION_LINK_TEMPLATE,
                                                               BaseUrl, // 0
                                           String.IsNullOrEmpty(_label.action) ? ConfigurationManager.AppSettings["GenericYPage"] : _label.action, //1
                                           String.IsNullOrEmpty(elem.contentTypeId) ? elem.Text : elem.contentTypeId, //2
                                           String.IsNullOrEmpty(elem.SubDocumentId)? elem.Id.ToString(): elem.SubDocumentId,//3
                                           String.IsNullOrEmpty(elem.SubDocumentId) ? elem.Id.ToString() : elem.SubDocumentId,//4
                                           String.IsNullOrEmpty(elem.ContentType) ? "Page" : elem.ContentType, //5
                                           String.IsNullOrEmpty(elem.ParentGroup) ? String.Empty : elem.ParentGroup, //6
                                           elem.Id); //7

                                    var clickAction =  String.Format(REDIRECT_PART3_SCRIPT_TEMPLATE,
                                             string.IsNullOrEmpty(_label.contentTypeId) ? _label.Id.ToString()
                                             : string.Format("TAB_CNT_{0}", elem.ParentId), elem.DocumentId);

                                    _ul.li.Add(new MenuGroupListItem()
                                    { 
                                        a = new MenuGroupListAnchor()
                                        {
                                            Text = elem.Text,
                                            href = href,
                                            target = _label.target,
                                            onclick = clickAction
                                        }

                                    });

                                    // TODO:Revise
                                    if (Global.DLinks.FirstOrDefault(mnuelem => mnuelem.Id == elem.Id) == null)
                                    {
                                        Global.DLinks.Add(elem);
                                    }                                    


                                });
                            }
                        }
                        #endregion Dynamic content links



                        #region Pre-Configured Links
                        var _links = _linkMenuEntries
                            .Where(elem => elem.ParentId== _label.Id
                                && elem.Column == _label.Column).ToList();

                        if (_links.Count > 0 && _ul.li == null)
                        {
                            _ul.li = new List<MenuGroupListItem>();
                        }

                        _links.ForEach(elem =>
                        {
                            // Rel Link:
                            if (elem.RelLinkId != 0)
                            {
                                elem = _linkMenuEntries.FirstOrDefault(linkelem => linkelem.Id == elem.RelLinkId);
                            }
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
                                if (String.IsNullOrEmpty(_label.Text))
                                {
                                    groupid = _parentMenuEntry.Text;
                                }
                                else
                                {
                                    groupid = String.Format("{0}.{1}", _parentMenuEntry.Text, _label.Text);
                                }

                                _href = string.Format(ACTION_LINK_TEMPLATE,
                                                        BaseUrl,
                                                    String.IsNullOrEmpty(elem.action) ? ConfigurationManager.AppSettings["GenericYPage"] : elem.action,
                                                    groupid,
                                                    elem.Text.HTMLEncode(),
                                                    elem.Text.HTMLEncode(),
                                                    String.IsNullOrEmpty(elem.ContentType) ? "Page" : elem.ContentType,
                                                    String.IsNullOrEmpty(elem.ParentGroup) ? String.Empty : elem.ParentGroup,
                                                    elem.Id);
                            }


                            if (!String.IsNullOrEmpty(elem.action))
                            {
                                if (elem.action.Contains(LinkID_TEMPLATE))
                                {
                                    var _tempList = elem.action.Split('&').ToList<string>();
                                    if (_tempList != null && _tempList.Count > 0)
                                    {
                                        var telement = _tempList.FirstOrDefault(t_elem => t_elem != null && t_elem.Contains(LinkID_TEMPLATE));
                                        if (telement != null && telement.Contains("="))
                                        {
                                            _linkId = telement.Substring(telement.IndexOf('=') + 1);
                                        }

                                    }
                                }
                            }

                            
                            _ul.li.Add(new MenuGroupListItem()
                            {
                                a = new MenuGroupListAnchor()
                                {
                                    Text = elem.Text,
                                    href = _href,
                                    target = elem.target,
                                    onclick = elem.DisplayThumbNail ?
                                    String.Format(REDIRECT_PART1_SCRIPT_TEMPLATE, String.IsNullOrEmpty(_linkId) ? String.Format("TAB_CNT_{0}",elem.Id) : _linkId) :
                                    String.Format(REDIRECT_PART2_SCRIPT_TEMPLATE, String.IsNullOrEmpty(_linkId) ? elem.Text.HTMLEncode() : _linkId)
                                },
                                @class = elem.@class
                            });
                        });



                        #endregion Pre-Configured Links


                        _div.ul.Add(_ul);
                    }
                    _menuLink.div.div.Add(_div);
                }
            });



            #endregion Init label List:
            ///// Add Search Button:            
           #region Search Button
            ////_menu.div1.div.ul.li.Add(new MenuListItemLI()
            ////{
            ////    @class = "dropdown navbar-right last",
            ////    ul = new SearchPanel()
            ////    {
            ////        @class = "dropdown-menu",
            ////        li = new SearchPanelList()
            ////        {
            ////            @class = "navbar-form navbar-left",
            ////            div = new SearchPanelListItem()
            ////            {
            ////                @class = "form-group",
            ////                input = new SearchInput()
            ////                {
            ////                    @class = "form-control",
            ////                    type = "text",
            ////                    placeholder = "Search"
            ////                },
            ////                a = new SearchAnchor()
            ////                {
            ////                    @class = "btn btn-common",
            ////                    Value = "Submit",
            ////                    href = ""
            ////                }
            ////            }
            ////        }

            ////    },
            ////    a = new MenuAnchor()
            ////    {
            ////        @class = "dropdown-toggle",
            ////        href = "",
            ////        datatoggle = "dropdown",
            ////        span = new SearchSpan()
            ////        {
            ////            @class = "glyphicon glyphicon-search"
            ////        }
            ////    }
            ////});
            #endregion Search Button

            string _menuHTML = CommonUtility.XmlSerialize(_menu.div1.div.ul);
            return System.Web.HttpUtility.HtmlDecode(_menuHTML);
            return "";

        }


        /// <summary>
        /// Returns sub menu  TODO: Revise
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