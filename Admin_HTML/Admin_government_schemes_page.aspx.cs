using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empower_Her_1.Admin_HTML
{
    public partial class Admin_government_schemes_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadSchemes();
            }
        }

        private void LoadSchemes()
        {
            var schemes = new[]
            {
                new
                {
                    Id = 1,
                    SchemeName = "PM Mudra Loan",
                    Category = "Loan Schemes",
                    Status = "Active"
                },

                new
                {
                    Id = 2,
                    SchemeName = "Beti Bachao Beti Padhao",
                    Category = "Women Welfare",
                    Status = "Active"
                },

                new
                {
                    Id = 3,
                    SchemeName = "Stand Up India",
                    Category = "Business Loan",
                    Status = "Active"
                },

                new
                {
                    Id = 4,
                    SchemeName = "Sukanya Samriddhi Yojana",
                    Category = "Savings Scheme",
                    Status = "Active"
                }
            };

            gvSchemes.DataSource = schemes;
            gvSchemes.DataBind();
        }

        protected void btnAddScheme_Click(object sender, EventArgs e)
        {
            // Add scheme functionality later
        }

        protected void gvSchemes_RowCommand(
            object sender,
            GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditScheme")
            {
                int schemeId = Convert.ToInt32(e.CommandArgument);
            }

            if (e.CommandName == "DeleteScheme")
            {
                int schemeId = Convert.ToInt32(e.CommandArgument);
            }
        }
    }
}