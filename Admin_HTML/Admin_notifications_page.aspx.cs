using System;
using System.Web.UI;

namespace Empower_Her_1.Admin_HTML
{
    public partial class Admin_notifications_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlType.SelectedValue = "General";
                ddlSendTo.SelectedValue = "All Users";
            }
        }


        protected void btnSendNotification_Click(
            object sender,
            EventArgs e)
        {
            string title = txtTitle.Text.Trim();

            string message = txtMessage.Text.Trim();

            string type = ddlType.SelectedValue;

            string sendTo = ddlSendTo.SelectedValue;


            if (title == "")
            {
                lblResult.Text = "Please enter notification title.";
                return;
            }


            if (message == "")
            {
                lblResult.Text = "Please enter notification message.";
                return;
            }


            // Notification sending functionality
            // will be connected to database later.


            lblResult.Text =
                "Notification sent successfully.";


            txtTitle.Text = "";

            txtMessage.Text = "";
        }
    }
}