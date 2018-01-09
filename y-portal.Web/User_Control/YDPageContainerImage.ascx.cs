using System;
using System.Collections.Generic;
using System.ComponentModel;
using PrismicIOAPI.api;
using prismic.extensions;

namespace YPortal.Web.User_Control
{
    public partial class YDPageContainerImage : YBaseUC
    {
        #region Private Member Variables

        private string dataSource = null;
        private string imageUrl = null;

        #endregion

        #region Public Properties

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

        public string ImageUrl
        {
            get
            {
                if (imageUrl == null)
                {
                    return string.Empty;
                }
                else
                {
                    return imageUrl;
                }
            }
            set
            { 
                imageUrl = value; 
            }
        }

        #endregion

        #region Private Methods

        private String GetImageURL(prismic.Api.Document Document, String Element, String Thumbnail)
        {
            string url = null;
            if (String.IsNullOrEmpty(Thumbnail))
            {
                Thumbnail = "main";
            }

            var coverImageViewFragment = Document.GetImageView(String.Format("{0}.{1}", Document.typ, Element), Thumbnail);
            if (coverImageViewFragment != null)
            {
                url = coverImageViewFragment.Value.url;
            }
            return url;
        }

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            var contentController = new ContentController();
            List<prismic.Api.Document> documents = contentController.Get(DataSource) as List<prismic.Api.Document>;
            this.ImageUrl = GetImageURL(documents[0], "Image", null);
        }
    }
}