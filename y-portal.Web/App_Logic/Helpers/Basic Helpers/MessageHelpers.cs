using System.Web.UI.HtmlControls;

namespace YPortal.Helpers
{
    public class MessageHelpers
    {
        public class BusinessMessage
        {
            public const string INVALID_USER_PASSWORD = "Invalid Username or Password. Please try again.";
            public const string USERNAME_PASS_REQ = "Both Username and Password required. Please try again.";

            //Old messages from other projects
            public const string EMGCONTACT_SUCCESSFUL_MESSAGE = "Your request has been submitted to a representative. We will contact you as soon as possible to service your request. Thank you for choosing Dunbar.";

            public const string CONTACT_SUCCESSFUL_MESSAGE = "Thank you for contacting Dunbar-Corp! One of our representatives will get in touch with you shortly. Thank you for choosing Dunbar.";

            public const string IMAGE_FILE_FORMAT_ERROR = "Invalid Image format. File format supported: jpg, png, gif, jpeg, bmp, pjpeg, x-png.";
            public const string INVALID_IMAGE_SIZE = "Invalid image size. ";

            public const string DATA_UPDATED_SUCCESSFULLY = "Data updated successfully.";
            public const string TITLE_AND_IMAGE_REQUIRED = "Title & Image is required for adding new home page banner.";
            public const string NEW_BANNER_CREATED = "New banner created successfully.";

            public const string DISPLAY_ORDER_REQUIRED = "Display Order cannot be empty.";
            public const string DISPLAY_ORDER_INVALID = "Display Order should be number only.";

            public const string DATA_DELETED_SUCCESSFULLY = "Data deleted successfully.";

            public const string ACCESSURL_ALREADY_EXISTS = "This Category Name Already Exits.";

            public const string DATA_ADDED_SUCCESSFULLY = "Data Added Successfully.";

            public const string INVALID_PDF_FILE = "Invalid PDF file format.";

            public const string TITLE_REQUIRED = "Title required.";

            public const string TITLE_THUMBNAIL_PDF_REQUIRED = "Title, thumbnail image and PDF file required. Please check if you miss any of them.";

            public const string CONFIRM_NEW_PASS_NOT_MATCHED = "New Passoword doesn't match with Confirm New Password.";

            public const string SOMETHING_WENT_WRONG = "Something went wrong. Please try again.";

            public const string NEW_ADDRESS_CREATED = "New address created successfully.";

            public const string CANNOT_DELETE_ADDRESS = "Cannot delete this address because it's a default address.";

            public const string THANK_YOU_MESSAGE = "Thank you for contacting us. One of our representatives will contact you by the next business day.";

            public const string EMAIL_ADDRESS_DOESNT_EXIST = "Your email address doesn't exist.";
            public const string USER_ALREADY_EXIST = "Your email address already exist. Try using <a href=\"log-in.aspx\">Forgot Password</a>";

            public const string SENT_PASSWORD = "We've sent your password to your email address. Please check your inbox for your password information. Thank you.";

            public const string NO_DATA_FOUND = "Cannot export because there is no data.";
        }

        public static void ShowMessage(HtmlGenericControl div, string msg, string cssClass)
        {
            div.Style.Add("display", "block");
            div.Attributes.Add("class", cssClass);
            div.InnerHtml = msg;
        }

        public static void ClearMessage(HtmlGenericControl div)
        {
            div.Style.Add("display", "none");
            div.InnerHtml = string.Empty;
        }
    }
}