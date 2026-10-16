
using System;

namespace Empower_Her_1.User_HTML
{
    public partial class User_Change_Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnUpdatePassword_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblSuccessMessage.Text =
                    "Password fields validated successfully!";

                CP.Text = "";
                Np.Text = "";
                Cnp.Text = "";
            }
        }
    }
}
