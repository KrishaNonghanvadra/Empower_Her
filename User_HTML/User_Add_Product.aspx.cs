using System;

namespace Empower_Her_1.User_HTML
{
    public partial class User_Add_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblSuccessMessage.Text =
                    "Product added successfully!";

                txtProductName.Text = "";
                ddlCategory.SelectedIndex = 0;
                txtPrice.Text = "";
                txtDescription.Text = "";
            }
        }
    }
}