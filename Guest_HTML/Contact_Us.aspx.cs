using System;

namespace Empower_Her_1
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblSuccessMessage.Text =
                    "Your message has been sent successfully! Thank you for contacting us.";

                txtName.Text = "";
                txtEmail.Text = "";
                txtSubject.Text = "";
                txtMessage.Text = "";
            }
        }
    }
}