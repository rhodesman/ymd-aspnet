using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using Microsoft.FSharp.Core;
using prismic;
using prismic.extensions;
using PrismicIOAPI.Ext;
using PrismicIOAPI.Utility;
using YPortal.Web.App_Logic;
using YPortal.Web.User_Control;

namespace YPortal.Web.Controls
{
    [DefaultProperty("ContentId")]
    [ToolboxData("<{0}:YGenericControl runat=server></{0}:PrismicGeneric>")]
    public class YGenericControl : YBaseUC, ICallbackEventHandler
    {
        protected const string CONTROL_LAYOUT_TEMPLATE = @"<div class=""col-md-8"">
                                                        <input type=hidden value=""{3}"">
                                                        <div class=""main-body"">
                                                            {0}
                                                        </div>
                                                        </div>
                                                        <div class=""col-md-4"">
                                                            {1}
                                                            <div class=""side-bar video-holder"">
                                                            {2}{5}
                                                        </div>
                                                            {4}
                                                        </div>";


        protected const string ACTION_BUTTON_TEMPLATE = @"<a href=""{0}"" target=""{1}"" class=""common-btn btn-velvet""><span class=""btn-velvet-border"">{2}</span></a>";
        protected const string ACTION_PUPUP_BUTTON_TEMPLATE = @"<a href="""" class=""common-btn btn-velvet"" data-toggle=""modal"" data-target="".bs-example-modal-lg""><span class=""btn-velvet-border"">{0}</span></a>";

        protected const string IMAGE_TEMPLATE = @"<a class=""{3}"" {4}></a><img class=""{2}"" src=""{0}"" alt=""{1}"">";

        protected const string SLIDER_IMAGE_TEMPLATE = @"<div class=""item""><img src=""{0}"" alt=""{1}""></div>";
        protected const string SLIDER_IMAGE_TEMPLATE_PREFIX = @"<div data-interval=""4000"" id=""carousel-example-generic"" class=""carousel slide"" data-ride=""carousel""><div class=""carousel-inner"" >";
        protected const string SLIDER_IMAGE_TEMPLATE_SUFFIX = @"</div><a class=""left carousel-control"" href=""#carousel-example-generic"" role=""button"" data-slide=""prev""><span class=""glyphicon glyphicon-chevron-left"" aria-hidden=""true""></span><span class=""sr-only"">Previous</span></a><a class=""right carousel-control"" href=""#carousel-example-generic"" role=""button"" data-slide=""next""><span class=""glyphicon glyphicon-chevron-right"" aria-hidden=""true""></span><span class=""sr-only"">Next</span></a></div>";
        private const string ACTION_GENERIC_POPUP_BUTTON_TEMPLATE = @"<a href=""{0}""  class=""common-btn btn-velvet"" onclick=""return WindowPopup('{0}')""><span class=""btn-velvet-border"">{1}</span></a>";

        private const string VIDEO_TEMPLATE = @"
<iframe height=""235"" width=""100%"" frameborder=""0"" allowfullscreen src=""{0}?enablejsapi=1&html5=1"" style=""display: none;""></iframe>
";

        private string _video;
        private string _imageSlide;
        private string _actionButton;
        private string _remarketingPixel;
        private string _remarketingPixelCode;
        private string videos = string.Empty;

        private FSharpOption<Fragments.ImageView> _pageImageView = null;
        protected FSharpOption<Fragments.ImageView> PageImageView
        {
            get
            {
                if (_pageImageView == null)
                {
                    _pageImageView = PrismicDocument.GetImageView(String.Format("{0}.Image", PrismicDocument.typ), "main");
                }
                return _pageImageView;
            }
            set
            {
                _pageImageView = value;
            }
        }

        protected String ImageSlide
        {
            get
            {
                var ctrl = new YPageImageSlide { Document = PrismicDocument };
                _imageSlide = ctrl.GetControl();
                return _imageSlide;
            }
            set
            {
                _imageSlide = value;
            }
        }

        protected String Video
        {
            get
            {
                if (_video == null)
                {
                    var videoFragmentlFragment = PrismicDocument.GetText(String.Format("{0}.{1}", PrismicDocument.typ, "Video"));
                    if (videoFragmentlFragment != null)
                    {
                        if (!String.IsNullOrEmpty(videoFragmentlFragment.Value))
                        {
                            _video = videoFragmentlFragment.Value;
                        }
                    }
                }
                return _video;
            }
            set
            {
                _video = value;
            }
        }

        protected String PageImageUrl
        {
            get
            {
                string imageUrl = "";
                if (PageImageView != null)
                {
                    if (PageImageView.Value != null && String.IsNullOrEmpty(PageImageView.Value.url) == false)
                    {
                        String alt = PageImageView != null && PageImageView.Value != null && PageImageView.Value.alt != null && PageImageView.Value.alt.Value != null ? PageImageView.Value.alt.Value : "";

                        imageUrl = String.Format(IMAGE_TEMPLATE, PageImageView.Value.url, alt,
                            (!string.IsNullOrEmpty(PageVideo) ? "video-img" : ""),
                            (!string.IsNullOrEmpty(PageVideo) ? "videoPreviewImageYoutube play-img" : ""),
                            (!string.IsNullOrEmpty(PageVideo) ?
                            ("data-toggle=\"modal\" data-target=\"#videoModal\" data-theVideo=\"" + PageVideo + "\"")
                            : "")
                            );
                    }
                }
                return imageUrl;
            }
        }

        protected String PageVideo
        {
            get
            {
                if (string.IsNullOrEmpty(videos))
                {
                    var videoLink = PrismicDocument.GetLink(String.Format("{0}.{1}", PrismicDocument.typ, "videos"));
                    if (videoLink != null && videoLink.BindAsWebLink() != null && videoLink.BindAsWebLink().Value != null && String.IsNullOrEmpty(videoLink.BindAsWebLink().Value.url) == false)
                    {
                        var videoUrl = videoLink.BindAsWebLink().Value.url;
                        if (videoUrl.Contains("www.youtube.com"))
                        {
                            _video = videoUrl.Replace("watch?v=", "embed/");
                            _video += "?autoplay=1";
                        }
                        else if (videoUrl.Contains("vimeo.com"))
                        {
                            _video = videoUrl.Replace("vimeo.com", "player.vimeo.com/video");//https://vimeo.com/114983933 
                            _video += "?api=1&autoplay=1";//https://player.vimeo.com/video/114983933?api=1&autoplay=1
                        }
                        //else
                        //{
                        //    _video = videoUrl;
                        //}
                    }
                    else
                    {
                        _video = "";
                    }
                }
                else
                {
                    _video = "";
                }
                return _video;
            }
        }

        /// <summary>
        ///  Remarketing Pixel
        /// </summary>
        protected String RemarketingPixel
        {
            get
            {
                if (RemarketingPixelCode != null)
                {
                    _remarketingPixel = String.Format(@"<script type=""text/javascript"">
                    /* <![CDATA[ */
                    var google_conversion_id = {0};
                    var google_custom_params = window.google_tag_params;
                    var google_remarketing_only = true;
                    /* ]]> */
                    </script>
                    <script type=""text/javascript"" src=""//www.googleadservices.com/pagead/conversion.js"">
                    </script>
                    <noscript>
                    <div style='display:inline;'>
                    <img height='1' width='1' style='border-style:none;' alt="""" src=""//googleads.g.doubleclick.net/pagead/viewthroughconversion/{0}/?value=0&amp;guid=ON&amp;script=0""/>
                    </div></noscript>", RemarketingPixelCode);
                }
                else
                {
                    _remarketingPixel = null;
                }

                return _remarketingPixel;
            }
        }

        protected String RemarketingPixelCode
        {
            get
            {
                if (_remarketingPixelCode == null)
                {
                    var remarketingPixelCodeFragment = PrismicDocument.GetText(String.Format("{0}.{1}", PrismicDocument.typ, "RemarketingPixelCode"));
                    if (remarketingPixelCodeFragment != null)
                    {
                        if (!String.IsNullOrEmpty(remarketingPixelCodeFragment.Value))
                        {
                            _remarketingPixelCode = remarketingPixelCodeFragment.Value;
                        }
                    }
                }
                return _remarketingPixelCode;
            }
        }

        /// <summary>
        ///  Action Button
        /// </summary>
        protected string ActionButton
        {
            get
            {
                if (_actionButton == null)
                {
                    FSharpOption<String> actionButtonCaptionFrag = null;
                    FSharpOption<String> actionButtonUrlFrag = null;
                    FSharpOption<String> actionButtonPopUpFrag = null;

                    actionButtonCaptionFrag = PrismicDocument.GetText(String.Format("{0}.{1}", PrismicDocument.typ, "ActionButtonCaption"));
                    actionButtonUrlFrag = PrismicDocument.GetText(String.Format("{0}.{1}", PrismicDocument.typ, "ActionButtonUrl"));
                    actionButtonPopUpFrag = PrismicDocument.GetText(String.Format("{0}.{1}", PrismicDocument.typ, "ActionPopUp"));

                    if (actionButtonCaptionFrag != null)
                    {
                        if (actionButtonPopUpFrag != null && actionButtonPopUpFrag.Value.ToUpper() == "YES")
                        {
                            if (actionButtonUrlFrag == null || String.IsNullOrEmpty(actionButtonUrlFrag.Value))
                            {
                                _actionButton = String.Format(ACTION_PUPUP_BUTTON_TEMPLATE, actionButtonCaptionFrag.Value);
                            }
                            else
                            {
                                _actionButton = String.Format(ACTION_GENERIC_POPUP_BUTTON_TEMPLATE,
                                        actionButtonUrlFrag.Value, actionButtonCaptionFrag.Value);
                            }
                        }
                        else
                        {
                            if (actionButtonUrlFrag != null)
                            {
                                if (actionButtonUrlFrag.Value.ToUpper().Contains("HTTP"))
                                {
                                    _actionButton = String.Format(ACTION_BUTTON_TEMPLATE,
                                      Common.RemoveSiteRoot(actionButtonUrlFrag.Value),
                                       "_blank",
                                       actionButtonCaptionFrag.Value);
                                }
                                else
                                {
                                    _actionButton = String.Format(ACTION_BUTTON_TEMPLATE,
                                        Common.EncodeClenupLink(actionButtonUrlFrag.Value),
                                        "_self",
                                        actionButtonCaptionFrag.Value);
                                }
                            }
                        }
                    }
                }
                return _actionButton;
            }
        }

        private string BuildSliderHtml()
        {
            string sliderImagesHtml = "";
            List<prismic.Fragments.GroupDoc> sliderGroupList = GetGroupContent(PrismicDocument, "ImageTitle");
            if (sliderGroupList != null && sliderGroupList.Count > 0)
            {
                sliderImagesHtml += SLIDER_IMAGE_TEMPLATE_PREFIX.Replace("carousel-example-generic", GenerateDynamicIdForImageSlider());
                int cn = 0;
                foreach (prismic.Fragments.GroupDoc sliderImage in sliderGroupList)
                {
                    var fragment = sliderImage.GetImageView("SingleImage", "main");
                    if (fragment != null)
                    {
                        string url = fragment.Value.url;
                        if (cn == 0)
                        {
                            sliderImagesHtml += String.Format(SLIDER_IMAGE_TEMPLATE.Replace("item", "item active"), url, fragment.Value.alt);
                        }
                        else
                        {
                            sliderImagesHtml += String.Format(SLIDER_IMAGE_TEMPLATE, url, fragment.Value.alt);
                        }
                        cn++;
                    }
                }
                sliderImagesHtml += SLIDER_IMAGE_TEMPLATE_SUFFIX.Replace("carousel-example-generic", GenerateDynamicIdForImageSlider());
            }
            return sliderImagesHtml;
        }

        /// <summary>
        /// 
        /// </summary>
        protected override string FormattedContent
        {
            get
            {
                string html = null;
                string contentHtml = "Document was found, but the content is not defined";
                FSharpOption<Fragments.Fragment> contentFragment = null;

                if (PrismicDocument == null)
                {
                    var documents = RawContent as List<prismic.Api.Document>;
                    if (documents == null)
                    {
                        return html;
                    }
                    PrismicDocument = documents.FirstOrDefault();
                }


                if (PrismicDocument == null)
                {
                    return "Document was not found";
                }

                contentFragment = PrismicDocument.Get(String.Format("{0}.{1}", PrismicDocument.typ, "content"));
                if (contentFragment != null)
                {
                    var resolver = PrismicUtils.GetDocumentLinkResolver();

                    var serializer = HtmlSerializer.For((elt, body) =>
                    {
                        if (elt is Fragments.Span.Hyperlink)
                        {
                            var link = ((Fragments.Span.Hyperlink)elt);

                            var mediaLink = link.Item.Item3 as Fragments.Link.MediaLink;
                            if (mediaLink != null && mediaLink.Item.url.Contains("http"))
                            {
                                return String.Format("<a target='_blank' href=\"{0}\">{1}</a>", mediaLink.Item.url, body);
                            }
                            if (mediaLink == null)
                            {
                                var anyLink = link.Item.Item3 as Fragments.Link.WebLink;
                                if (anyLink != null && anyLink.Item.url.Contains("http"))
                                {
                                    return String.Format("<a target='_blank' href=\"{0}\">{1}</a>", anyLink.Item.url, body);
                                }
                            }
                        }
                        return null;
                    });

                    contentHtml = contentFragment.Value.AsHtml(resolver, serializer);
                    contentHtml = contentHtml.MarkdownToHTML(true, true, false);
                }

                string sliderImagesHtml = BuildSliderHtml();

                html = String.Format(CONTROL_LAYOUT_TEMPLATE, contentHtml, ActionButton, PageImageUrl, PrismicDocument.id, RemarketingPixel, sliderImagesHtml);

                html = CorrectRelLinks(html);
                return html;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="e"></param>
        protected override void OnLoad(EventArgs e)
        {
            if (this.Async)
            {
                string _callbackMethod = null;
                if (!String.IsNullOrEmpty(this.Callback))
                {
                    _callbackMethod = string.Format("{0}(arg, context);", this.Callback);
                }
                string _callbackHandler = Page.ClientScript.GetCallbackEventReference(this, "args", String.Format("{0}procResult", this.ClientID), "context");
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ClientCallBackRqst",
                                                            String.Format(CLIENT_CALLBACK_RQST_TEMPLATE, this.ClientID, _callbackHandler), true);
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ClientCallBackRsp",
                                                             String.Format(CLIENT_CALLBACK_RSP_TEMPLATE, this.ClientID, _callbackMethod ?? _callbackMethod), true);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="writer"></param>
        protected override void Render(HtmlTextWriter writer)
        {
            string _HTML = null;
            if (!String.IsNullOrEmpty(this.ContentTypeId) || !String.IsNullOrEmpty(this.EntryId))
            {
                string ctrlId = string.Format("YGC_{0}.{1}.{2}", ID, ContentTypeId, EntryId);
                if (isCached)
                {
                    // CacheController.GetCachedObject<String>(ref _HTML, ctrlId);
                    if (_HTML == null)
                    {
                        _HTML = FormattedContent;
                        CacheController.GetCachedObject<String>(ref _HTML, ctrlId);
                    }
                }
                else
                {
                    _HTML = FormattedContent;
                }
                writer.Write(!this.Async ? _HTML : "Loading....");
            }
            else
            {
                _HTML = "Could not locate content";
                writer.Write(!this.Async ? _HTML : "Loading....");
            }
        }

        #region ICallbackEventHandler Implementation

        /// <summary>
        ///  Return Async Call result
        /// </summary>
        /// <returns></returns>
        public string GetCallbackResult()
        {
            return m_callbackResult;
        }

        /// <summary>
        /// Async Call Handle
        /// </summary>
        /// <param name="eventArgument"></param>
        public void RaiseCallbackEvent(string eventArgument)
        {
            //TODO REMOVE Long running Code:
            // System.Threading.Thread.Sleep(5000);
            m_callbackResult = FormattedContent;
        }

        #endregion ICallbackEventHandler Implementation

        protected string HtmlEncode(string value)
        {
            value = value.Replace("&", "_AND_");
            return HttpContext.Current.Server.HtmlEncode(value);
        }

        protected string HtmlDecode(string value)
        {
            if (String.IsNullOrEmpty(value))
            {
                return null;
            }
            value = value.Replace("_AND_", "&");
            return HttpContext.Current.Server.HtmlDecode(value);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        protected string CorrectRelLinks(string data)
        {
            List<string> links = GetLinks(data);
            if (links != null && links.Count > 0)
            {
                links.ForEach(link =>
                {
                    var originalLink = link;
                    var newLink = Common.RemoveSiteRoot(link);

                    //data = Regex.Replace(data, originalLink, newLink, RegexOptions.IgnoreCase);
                    data = data.Replace(originalLink, newLink);
                });
            }
            return data;
        }

        protected List<string> GetLinks(string message)
        {
            var list = new List<string>();
            var urlRx = new Regex(@"((https?|ftp|file)\://|www.)[A-Za-z0-9\.\-]+(/[A-Za-z0-9\?\&\=;\+!'\(\)\*\-\._~%]*)*", RegexOptions.IgnoreCase);

            MatchCollection matches = urlRx.Matches(message);
            foreach (Match match in matches)
            {
                list.Add(match.Value);
            }
            return list;
        }

        private string GenerateDynamicIdForImageSlider()
        {
            return ("carousel-example-generic-" + ID).Replace(" ", "");
        }
    }
}