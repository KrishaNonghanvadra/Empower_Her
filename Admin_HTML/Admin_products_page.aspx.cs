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
                    ProductName = "Decorative Candle Set",
                    Category = "Home Decor",
                    Price = 500,
                    Seller = "Krisha Patel",
                    Status = "Active"
                },

                new
                {
                    Id = 2,
                    ProductName = "Handmade Bag",
                    Category = "Handicraft",
                    Price = 750,
                    Seller = "Priya Shah",
                    Status = "Active"
                },

                new
                {
                    Id = 3,
                    ProductName = "Organic Soap",
                    Category = "Beauty",
                    Price = 250,
                    Seller = "Anjali Patel",
                    Status = "Active"
                },

                new
                {
                    Id = 4,
                    ProductName = "Handmade Necklace",
                    Category = "Jewelry",
                    Price = 900,
                    Seller = "Meera Joshi",
                    Status = "Active"
                }
            };


            gvProducts.DataSource = products;

            gvProducts.DataBind();
        }


        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_add_product.aspx");
        }


        protected void gvProducts_RowCommand(
            object sender,
            GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewProduct")
            {
                int productId = Convert.ToInt32(e.CommandArgument);

                // View product functionality will be added later.
            }


            if (e.CommandName == "DeleteProduct")
            {
                int productId = Convert.ToInt32(e.CommandArgument);

                // Delete product functionality will be added later.
            }
        }
    }
}