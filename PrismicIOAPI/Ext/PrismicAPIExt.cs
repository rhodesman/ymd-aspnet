using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.FSharp.Core;

using prismic;
using prismic.extensions;

using MarkdownDeep;

namespace PrismicIOAPI.Ext
{
    public static class PrismicAPIExt
    {
        /// <summary>
        /// Support for Markdown
        /// </summary>
        /// <param name="Data"></param>
        /// <param name="SafeMode"></param>
        /// <returns></returns>
        public static string MarkdownToHTML(this String Data , bool ExtraMode,  bool MarkdownInHtml, bool SafeMode)
        {
            string html = null;
            if (!String.IsNullOrEmpty(Data))
            {
                html = new MarkdownDeep.Markdown
                {
                    ExtraMode = ExtraMode,
                    SafeMode = SafeMode,
                    MarkdownInHtml = MarkdownInHtml
                }.Transform(Data);
            }
            return html;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="Document"></param>
        /// <param name="FieldName"></param>
        /// <returns></returns>
        public static String GetTextExt(this prismic.Api.Document Document, String FieldName)
        {
            string retval = null;
            if (Document != null) 
            { 
                var fragment = Document.GetText(String.Format("{0}.{1}", Document.typ, FieldName));
                if (fragment != null && !String.IsNullOrEmpty(fragment.Value))
                {                
                    retval = fragment.Value;
                }
            }
            return retval;
        }






    }
}
