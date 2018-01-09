using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.ComponentModel;

using prismic;
using prismic.extensions;
using PrismicIOAPI.Ext;
using PrismicIOAPI.api;


namespace YPortal.Web.User_Control
{

    public class CarouselItem
    {
        public string CoverImageURL { get; set; }
        public string CoverLabelText { get; set; }
        public string ActionButtonText { get; set; }
        public string ActionButtonURL { get; set; }
    }


    public partial class YDCarouselControlV2 : System.Web.UI.UserControl
    {
        private string dataSource = null;

        [Description("DataSource"), Browsable(true), DefaultValue(""), Category("Appearance"), Bindable(true)]
        public string DataSource
        {
            get
            {
                return dataSource.Replace("'", @"""");
            }
            set
            {
                dataSource = value;
            }
        }



        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {            
            BindContent();
        }
        

        /// <summary>
        /// 
        /// </summary>
        private void BindContent()
        {
            rptCarouselContent.DataSource = GetContent();
            rptCarouselContent.DataBind();
        }


        /// <summary>
        /// 
        /// </summary>
        private List<CarouselItem> GetContent()
        {
            List<CarouselItem> carouselItems = null;
            var contentController = new ContentController();
            var documents = contentController.Get(DataSource) as List<prismic.Api.Document>;
            prismic.Api.Document document = null;

            if (documents != null && documents.Count > 0)
            {
                document = documents.FirstOrDefault();
            }

            var carouselCoverGroupFragment = document.Get(String.Format("{0}.{1}", document.typ, "CarouselCover"));

            if (carouselCoverGroupFragment != null)
            {
                var carouselCoverGroup = carouselCoverGroupFragment.Value as prismic.Fragments.Fragment.Group;

                if (carouselCoverGroup != null)
                {
                    var carouselCoverList = carouselCoverGroup.Item.ToList();
                    if (carouselCoverList != null && carouselCoverList.Count > 0)
                    {
                        carouselItems = new List<CarouselItem>();

                        carouselCoverList.ForEach(carouselCoverElem =>
                        {
                            var ActionButtonTextFrag = carouselCoverElem.GetText("ActionButtonText");
                            var ActionButtonURLFrag = carouselCoverElem.GetText("ActionButtonURL");
                            var CoverLabelTextFrag = carouselCoverElem.GetText("LargeLabel");
                            var CoverImageURLFrag = carouselCoverElem.GetImageView("Image", "main");

                            if (CoverImageURLFrag != null 
                                && ActionButtonURLFrag != null 
                                && CoverLabelTextFrag != null 
                                && CoverImageURLFrag != null)
                            {
                                carouselItems.Add(new CarouselItem
                                {
                                    ActionButtonText = ActionButtonTextFrag.Value,
                                    ActionButtonURL = ActionButtonURLFrag.Value,
                                    CoverLabelText = CoverLabelTextFrag.Value,
                                    CoverImageURL = CoverImageURLFrag.Value.url
                                });
                            }
                        });
                    }
                }
            }
            return carouselItems;
        } 
        

        #region Events
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void OnItemDataBound_rptCarouselContent(object sender, RepeaterItemEventArgs e)
        {
            CarouselItem carouselItem = e.Item.DataItem as CarouselItem;
            if (carouselItem != null)
            {
                HtmlGenericControl templatePanel = e.Item.FindControl("TemplatePanel") as HtmlGenericControl;
                Image coverImg = e.Item.FindControl("imgCover") as Image;
                Literal ltlCarouselLabel = e.Item.FindControl("ltlCarouselLabel") as Literal;
                HyperLink ancActionBtn = e.Item.FindControl("ancActionBtn") as HyperLink;
                Literal ltlActionBtnText = e.Item.FindControl("ltlActionBtnText") as Literal;

                if (templatePanel != null 
                    && coverImg != null 
                    && ltlCarouselLabel != null 
                    && ancActionBtn != null 
                    && ltlActionBtnText != null)
                {
                    templatePanel.Attributes.Add("class", rptCarouselContent.Items.Count == 0 ? "item active" : "item");
                    coverImg.ImageUrl = carouselItem.CoverImageURL;
                    ltlCarouselLabel.Text = carouselItem.CoverLabelText;
                    ltlActionBtnText.Text = carouselItem.ActionButtonText;
                    ancActionBtn.Attributes.Add("href", carouselItem.ActionButtonURL);
                    ancActionBtn.Target = carouselItem.ActionButtonURL.ToUpper().Contains("HTTP")?"_blank":"_self";
                }
            }
        }
        #endregion Events
    }
}