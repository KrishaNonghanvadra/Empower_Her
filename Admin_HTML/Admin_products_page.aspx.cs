using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empower_Her_1.Admin_HTML
{
    public partial class Admin_products_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
            }
        }

        private void LoadProducts()
        {
            var products = new[]
            {
                new
                {
                    Id = 1,
                    ProductName = "Handmade Bags",
                    Category = "Handicraft",
                    Price = 599,
                    Seller = "Priya",
                    Status = "Active"
                },

                new
                {
                    Id = 2,
                    ProductName = "Organic Soap",
                    Category = "Beauty",
                    Price = 249,
                    Seller = "Anjali",
                    Status = "Active"
                },

                new
                {
                    Id = 3,
                    ProductName = "Handmade Jewelry",
                    Category = "Jewelry",
                    Price = 799,
                    Seller = "Meera",
                    Status = "Pending"
                }
            };

            gvProducts.DataSource = products;
            gvProducts.DataBind();
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_add_product.aspx");
        }

        protected void gvProducts_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewProduct")
            {
                int productId = Convert.ToInt32(e.CommandArgument);

                // View product logic later
            }

            if (e.CommandName == "DeleteProduct")
            {
                int productId = Convert.ToInt32(e.CommandArgument);

                // Delete product logic later
            }
        }
    }
}