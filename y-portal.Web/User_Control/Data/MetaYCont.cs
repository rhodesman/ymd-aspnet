using System;
using System.ComponentModel;
using System.Web.UI;
using PrismicIOAPI.Ext;
using PrismicIOAPI.Utility;
using YPortal.Web.App_Logic;
using YPortal.Web.User_Control;

namespace YPortal.Web.Data.Controls
{   
    internal class MetaInfo
    {
        public string Description { get; set; }
        public string Keywords { get; set; }
        public string PageTitle { get; set; }
    }

    [DefaultProperty("ContentId")]
    [ToolboxData("<{0}:MetaYCont runat=\"server\"></{0}:MetaYCont>")]
    public class MetaYCont : YBaseUC
   {
       #region Fields
        private const string CONTROL_TEMPLATE = @"{0}<meta name=""description"" content=""{1}""/>{0}<meta name=""keywords"" content=""{2}""/>{0}";
        private const string FULLTEXT_SEARCH_TEMPLATE = @"[[:d = fulltext(my.{0}.{1},""{2}"")]]";
        private const string FULLTEXT_SEARCH_TEMPLATE_TYPE = @"[[:d = fulltext(my.{0}.{1},""{3}"")] [:d = fulltext(my.{0}.{2},""{4}"")]]";
        private const string DEFAULT_PAGE = "Default Page";
        private const string DEFAULT_CONTENT_GROUP = "Default Page";
        private const string PAGE_TITLE_TEMPLATE = "The Y in Central Maryland";
        private const string META_DEFAULT_DESCRIPTION = "Y of Central Maryland";
        private const string META_DEFAULT_KEYWORDS = "Y of Central Maryland";
        private string mode = String.Empty;


       #endregion Fields
       #region Properties
        [Description("Prismic Control Name"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public string PrismicMask{ get; set; }

        [Description("Mode"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public string Mode
        {
            get
            {
                return mode;
            }
            set
            {
                mode = value;
            }
        }

        private String Query { get; set; }
       #endregion Properties               
        
        /// <summary>
        /// 
        /// </summary>
        /// <param name="writer"></param>
        protected override void Render(HtmlTextWriter writer)
        {
            var meta = GetMetaInfo();
            switch (Mode.ToUpper())
            {
                case "METAKEYWORDS":
                    {
                        writer.Write(String.Format(CONTROL_TEMPLATE,
                            Environment.NewLine,
                            (meta != null && !String.IsNullOrEmpty(meta.Description)) ? meta.Description : META_DEFAULT_DESCRIPTION,
                            (meta != null && !String.IsNullOrEmpty(meta.Keywords)) ? meta.Keywords : META_DEFAULT_KEYWORDS));
                        break;
                    }
                default:
                    {
                        writer.Write((meta != null && !String.IsNullOrEmpty(meta.PageTitle)) ? meta.PageTitle : PAGE_TITLE_TEMPLATE);
                        break;
                    }
            }
        }


        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        private MetaInfo GetMetaInfo()
        {
            MetaInfo meta = null;

           
            string query = null;
            var second_lv_route = String.IsNullOrEmpty(RoutingInfo.MnuLv2) ? "" : RoutingInfo.MnuLv2;

            if (CurrentLink != null && !String.IsNullOrEmpty(second_lv_route))
            {
                switch (second_lv_route)
                {
                    case "preschool":
                        {
                            this.ParentGroup = CurrentLink.ParentGroup;
                            query = CurrentLink.Text;
                            break;
                        }
                    case "base":
                        {
                            this.ParentGroup = CurrentLink.ParentGroup;
                            query = ParentGroup;
                            break;
                        }
                    default:
                        {
                            this.ParentGroup = CurrentLink.ParentGroup;
                            query = CurrentLink.Text;
                            break;
                        }
                }
            }
            else
            {
                query = DEFAULT_PAGE;                
            }


            string metakeywords = null;
            string metadescription = null;
            string metapagetitle = null;
            string ctrlid = String.Format("Y_META_{0}", query);

            CacheController.GetCachedObject<MetaInfo>(ref meta, ctrlid);
            var document = GetDocument(Common.DeCodeLink(query), "PageContainer");
            if (document != null)
            {
                metakeywords = document.GetTextExt("MetaKeywords");
                metadescription = document.GetTextExt("MetaDescription");
                metapagetitle = document.GetTextExt("MetaPageTitle");
                
                //temporary fix for getting meta tag just for /schedule page
                if (Request.Url.AbsoluteUri.ToLower().Contains("schedule"))
                {
                    metakeywords = "Class Schedule & Swim Schedules | Y in Central Maryland";
                    metadescription = "Explore the Y's activity schedule, many of which are free to Y Members! Group fitness schedules, swim schedules, Stay & Play schedules, gym schedules and more.";
                    metapagetitle = "Class Schedule & Swim Schedules | Y in Central Maryland";
                }
                if (metakeywords != null || metadescription != null || metapagetitle != null)
                {
                    meta = new MetaInfo
                    {
                        Description = metadescription,
                        Keywords = metakeywords,
                        PageTitle = metapagetitle
                    };
                }
            }
            return meta;
        }       

    }
}
