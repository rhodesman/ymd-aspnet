using System;
using System.Collections.Generic;
using System.Linq;
using prismic;
using prismic.extensions;
using Api = prismic.Api;

namespace PrismicIOAPI.Utility
{
    public class PrismicUtils
    {
        public static Api.DocumentLinkResolver GetDocumentLinkResolver()
        {
            return DocumentLinkResolver.For(l => String.Format("http://localhost/{0}/{1}", l.typ, l.id));
        }

        public static Api.Document GetLinkedDocument(Api.Document doc, IEnumerable<Api.Document> lookupDocuments, String fragmentName)
        {
            Api.Document linkedDoc = null;
            var fragLink = doc.GetLink(String.Format("{0}.{1}", doc.typ, fragmentName));

            if (fragLink != null)
            {
                var fragDocLink = fragLink.BindAsDocumentLink();
                if (fragDocLink != null)
                {
                    linkedDoc = lookupDocuments.FirstOrDefault(elem => elem.id == fragDocLink.Value.id);
                }
            }
            return linkedDoc;
        }

        public static String GetText(Api.Document document, String field)
        {
            var fragment = document.GetText(String.Format("{0}.{1}", document.typ, field));
            return fragment == null ? null : fragment.Value;
        }

        public static List<Fragments.GroupDoc> GetGroupContent(Api.Document document, string field)
        {
            List<Fragments.GroupDoc> content = null;
            var groupFragment = document.Get(String.Format("{0}.{1}", document.typ, field));
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

        public static String GetText(Fragments.GroupDoc document, String field)
        {
            string fragmentvalue = null;
            var fragment = document.GetText(field);
            if (fragment != null)
            {
                fragmentvalue = fragment.Value;
            }
            return fragmentvalue;
        }

        public static string GetFragmentHTML(Api.Document document, String fragmentName)
        {
            String html = null;
            const string openFragTag = "<p>";
            const string closingFragTag = "</p>";

            if (document == null || String.IsNullOrEmpty(fragmentName))
            {
                return null;
            }

            var dSectionFrag = document.Get(string.Format("{0}.{1}", document.typ, fragmentName));
            if (dSectionFrag != null)
            {
                var resolver = GetDocumentLinkResolver();
                var fragmentContainer = dSectionFrag.BindAsHtml(resolver);
                if (fragmentContainer != null)
                {
                    html = fragmentContainer.Value;
                }
            }

            if (!String.IsNullOrEmpty(html))
            {
                var pos1 = html.IndexOf(openFragTag);
                if (pos1 != -1)
                {
                    html = html.Remove(pos1, openFragTag.Length);
                }
                var pos2 = html.LastIndexOf(closingFragTag);
                if (pos2 != -1)
                {
                    html = html.Remove(pos2, closingFragTag.Length);
                }

                html = System.Web.HttpUtility.HtmlDecode(html);
            }

            return html;
        }
    }
}