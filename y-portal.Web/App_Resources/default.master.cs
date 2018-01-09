using System;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using YPortal.Web.Api_Services;

namespace YPortal.Web.App_Resources
{
    public partial class _default : System.Web.UI.MasterPage
    {
        #region Fields

        private string _EntryId = null;
        private string _MenuId = null;
        private string _GroupEntryId = null;
        private string _ParentGroup = null;
        private string _TypeEntryId = null;

        #endregion Fields

        #region Properties

        /// <summary>
        /// Individual Entry Identifier
        /// </summary>
        protected string EntryId
        {
            get
            {

                if (HttpContext.Current.Session["EntryId"] != null)
                {
                    _EntryId = HttpContext.Current.Session["EntryId"].ToString();
                }
                return _EntryId;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        protected string MenuId
        {
            get
            {

                if (HttpContext.Current.Session["MenuId"] != null)
                {
                    _MenuId = HttpContext.Current.Session["MenuId"].ToString();
                }
                return _MenuId;
            }
        }

        /// <summary>
        /// Group Entry Identifier
        /// </summary>
        protected string GroupEntryId
        {
            get
            {
                if (HttpContext.Current.Session["GroupEntryId"] != null)
                {
                    _GroupEntryId = HttpContext.Current.Session["GroupEntryId"].ToString();
                }
                return _GroupEntryId;
            }
        }

        protected string ParentGroup
        {
            get
            {
                if (HttpContext.Current.Session["ParentGroup"] != null)
                {
                    _ParentGroup = HttpContext.Current.Session["ParentGroup"].ToString();
                }
                return _ParentGroup;
            }
        }

        /// <summary>
        /// Group Entry Identifier
        /// </summary>
        protected string TypeEntryId
        {
            get
            {
                if (HttpContext.Current.Session["TypeEntryId"] != null)
                {
                    _TypeEntryId = HttpContext.Current.Session["TypeEntryId"].ToString();
                }
                return _TypeEntryId;
            }
        }

        #endregion Properties

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            Page.Header.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Meta1.EntryId = EntryId;
            Meta1.GroupEntryId = GroupEntryId;
            Meta1.MenuId = MenuId;
            Meta1.ParentGroup = ParentGroup;

            var alertsControlller = new AlertController();
            var alerts = alertsControlller.Get();

            AlertPnl.Visible = (alerts != null && alerts.Count > 0 && alerts.FirstOrDefault(elem => elem.Title.Length > 0) != null);
            Div1.Visible = (alerts != null && alerts.Count > 0 && alerts.FirstOrDefault(elem => elem.Title.Length > 0) != null);
            rptAlerts.DataSource = alerts.Where(elem => elem.Title.Length > 0).ToList();
            rptAlerts.DataBind();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void OnItemDataBound_rptAlerts(object sender, RepeaterItemEventArgs e)
        {
            var alert = e.Item.DataItem as YAlert;
            if (alert == null)
            {
                return;
            }

            var title = e.Item.FindControl("ltlTitle") as Literal;
            var description = e.Item.FindControl("ltlDescription") as Literal;

            if (title != null && description != null)
            {
                title.Text = String.Format("{0} - {1}", alert.DateCreated.ToString("MM/dd/yyyy"), alert.Title);
                description.Text = alert.Description;
            }
        }
    }
}