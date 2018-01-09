using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

using System.Text;
using System.IO;

using prismic;
using prismic.extensions;



namespace YPortal.Web.Controls
{
    public partial class YPageImageSlide : System.Web.UI.UserControl
    {

        private prismic.Api.Document document = null;

        public prismic.Api.Document Document
        {
            get
            {
                return document;
            }
            set
            {
                document = value;
            }
        }


        private YPageImageSlide ctrl = null;
        
        /// <summary>
        /// Get Control content
        /// </summary>
        /// <returns></returns>
        public String GetControl()
            {
                string html = null;
                ctrl = (YPageImageSlide)LoadControl("/User_Control/YPageImageSlide.ascx");

                var images = GetGroupContent(Document, "Images");
                if (images == null || images.Count == 0)
                {
                    return html;
                }

                ctrl.rptImageList.DataSource = images;
                ctrl.rptImageList.DataBind();

                StringBuilder sb = new StringBuilder();
                StringWriter tw = new StringWriter(sb);
                HtmlTextWriter hw = new HtmlTextWriter(tw);
                ctrl.Render(hw);
                html = sb.ToString();
                return html;
            }
          
        

        
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void OnItemDataBound_rptImageList(object sender, RepeaterItemEventArgs e)
        {
            prismic.Fragments.GroupDoc document = e.Item.DataItem as prismic.Fragments.GroupDoc;
            if (document == null)
            {
                return;
            }

            HtmlGenericControl imagePanel = e.Item.FindControl("ImagePanel") as HtmlGenericControl;
            Image coverImg = e.Item.FindControl("imgCover") as Image;

            if (imagePanel == null || coverImg == null)
            {
                return;
            }

            imagePanel.Attributes.Add("class", rptImageList.Items.Count == 0 ? "item active" : "item");
            coverImg.ImageUrl = GetImageURL(document, "Image");

        }

        /// <summary>
        /// TODO : Refactor to base class
        /// </summary>
        /// <param name="Document"></param>
        /// <param name="Field"></param>
        /// <returns></returns>
        protected List<prismic.Fragments.GroupDoc> GetGroupContent(prismic.Api.Document Document, string Field)
        {
            List<prismic.Fragments.GroupDoc> content = null; ;
            var groupFragment = Document.Get(String.Format("{0}.{1}", Document.typ, Field));
            if (groupFragment != null)
            {
                var group = groupFragment.Value as prismic.Fragments.Fragment.Group;
                if (group != null)
                {
                    content = group.Item.ToList();
                }
            }
            return content;
        }

        /// <summary>
        ///  TODO : Refactor to base class
        /// </summary>
        /// <param name="Document"></param>
        /// <param name="Field"></param>
        /// <returns></returns>
        protected String GetImageURL(prismic.Fragments.GroupDoc Document, String Field)
        {
            string url = String.Empty;
            if (Document == null)
            {
                return url;
            }

            var fragment = Document.GetImageView(Field, "main");
            if (fragment != null)
            {
                url = fragment.Value.url;
            }
            return url;
        }
   
    }
}