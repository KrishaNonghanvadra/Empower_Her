
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empower_Her_1.Admin_HTML
{
    public partial class Admin_products_page : Page
    {
        // Sample data stored in application memory, not in a database.
        private static readonly List<Product> products = new List<Product>
        {
            new Product
            {
                Id = 1,
                ProductName = "Decorative candle set",
                Category = "Home Decor",
                Price = 500,
                Seller = "Krisha Patel",
                Status = "Active"
            },
            new Product
            {
                Id = 2,
                ProductName = "Handmade Bag",
                Category = "Handicraft",
                Price = 750,
                Seller = "Priya Shah",
                Status = "Active"
            },
            new Product
            {
                Id = 3,
                ProductName = "Organic Soap",
                Category = "Beauty",
                Price = 250,
                Seller = "Anjali Patel",
                Status = "Active"
            },
            new Product
            {
                Id = 4,
                ProductName = "Handmade Necklace",
                Category = "Jewelry",
                Price = 900,
                Seller = "Meera Joshi",
                Status = "Active"
            }
        };

        private static int nextId = 5;

        public class Product
        {
            public int Id { get; set; }
            public string ProductName { get; set; }
            public string Category { get; set; }
            public decimal Price { get; set; }
            public string Seller { get; set; }
            public string Status { get; set; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
            }
        }


        private void BindProducts()
        {
            string search = txtSearch.Text.Trim();

            IEnumerable<Product> filteredProducts = products;

            if (!string.IsNullOrWhiteSpace(search))
            {
                filteredProducts = products.Where(p =>
                    p.ProductName.IndexOf(
                        search, StringComparison.OrdinalIgnoreCase) >= 0 ||

                    p.Category.IndexOf(
                        search, StringComparison.OrdinalIgnoreCase) >= 0 ||

                    p.Seller.IndexOf(
                        search, StringComparison.OrdinalIgnoreCase) >= 0);
            }

            gvProducts.DataSource = filteredProducts.ToList();
            gvProducts.DataBind();
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            BindProducts();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindProducts();
        }

        protected void btnClearSearch_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
            BindProducts();
        }


        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            ClearForm();

            litModalTitle.Text = "Add Product";
            btnSaveProduct.Text = "Save Product";

            SetFormEnabled(true);
            pnlProductModal.Visible = true;
        }

        protected void gvProducts_RowCommand(
            object sender, GridViewCommandEventArgs e)
        {
            int id;

            if (!int.TryParse(Convert.ToString(e.CommandArgument), out id))
                return;

            Product product = products.FirstOrDefault(p => p.Id == id);

            if (product == null)
            {
                BindProducts();
                return;
            }

            if (e.CommandName == "ViewProduct")
            {
                FillForm(product);

                litModalTitle.Text = "Product Details";
                SetFormEnabled(false);
                pnlProductModal.Visible = true;
            }
            else if (e.CommandName == "EditProduct")
            {
                FillForm(product);

                litModalTitle.Text = "Edit Product";
                btnSaveProduct.Text = "Update Product";

                SetFormEnabled(true);
                pnlProductModal.Visible = true;
            }
            else if (e.CommandName == "DeleteProduct")
            {
                products.Remove(product);
                BindProducts();
            }
        }

        private void FillForm(Product product)
        {
            ClearForm();

            hfProductId.Value = product.Id.ToString();
            txtProductName.Text = product.ProductName;
            txtCategory.Text = product.Category;
            txtPrice.Text = product.Price.ToString(
                "0.##", CultureInfo.InvariantCulture);
            txtSeller.Text = product.Seller;

            if (ddlStatus.Items.FindByValue(product.Status) != null)
                ddlStatus.SelectedValue = product.Status;

            lblProductMessage.Text = "";
        }

        protected void btnSaveProduct_Click(object sender, EventArgs e)
        {
            pnlProductModal.Visible = true;

            Page.Validate("ProductForm");

            if (!Page.IsValid)
                return;

            string name = txtProductName.Text.Trim();
            string category = txtCategory.Text.Trim();
            string seller = txtSeller.Text.Trim();

            decimal price;

            if (!decimal.TryParse(
                    txtPrice.Text.Trim(),
                    NumberStyles.AllowDecimalPoint,
                    CultureInfo.InvariantCulture,
                    out price) || price < 0 || price > 99999999.99m)
            {
                lblProductMessage.Text =
                    "Enter a valid non-negative price with up to 2 decimal places.";
                return;
            }

            if (string.IsNullOrWhiteSpace(name) ||
                string.IsNullOrWhiteSpace(category) ||
                string.IsNullOrWhiteSpace(seller))
            {
                lblProductMessage.Text = "Please fill in all required fields.";
                return;
            }

            bool isEdit = !string.IsNullOrWhiteSpace(hfProductId.Value);

            if (isEdit)
            {
                int id;

                if (!int.TryParse(hfProductId.Value, out id))
                {
                    lblProductMessage.Text = "Invalid product ID.";
                    return;
                }

                Product existingProduct =
                    products.FirstOrDefault(p => p.Id == id);

                if (existingProduct == null)
                {
                    lblProductMessage.Text = "Product was not found.";
                    return;
                }

                existingProduct.ProductName = name;
                existingProduct.Category = category;
                existingProduct.Price = price;
                existingProduct.Seller = seller;
                existingProduct.Status = ddlStatus.SelectedValue;
            }
            else
            {
                Product newProduct = new Product
                {
                    Id = nextId++,
                    ProductName = name,
                    Category = category,
                    Price = price,
                    Seller = seller,
                    Status = ddlStatus.SelectedValue
                };

                products.Add(newProduct);
            }

            pnlProductModal.Visible = false;
            ClearForm();
            BindProducts();
        }

        protected void btnCancelProduct_Click(object sender, EventArgs e)
        {
            pnlProductModal.Visible = false;
            ClearForm();
        }

        

        private void ClearForm()
        {
            hfProductId.Value = "";
            txtProductName.Text = "";
            txtCategory.Text = "";
            txtPrice.Text = "";
            txtSeller.Text = "";
            lblProductMessage.Text = "";

            ddlStatus.SelectedValue = "Active";
            btnSaveProduct.Visible = true;
        }

        private void SetFormEnabled(bool enabled)
        {
            txtProductName.Enabled = enabled;
            txtCategory.Enabled = enabled;
            txtPrice.Enabled = enabled;
            txtSeller.Enabled = enabled;
            ddlStatus.Enabled = enabled;

            btnSaveProduct.Visible = enabled;
        }
    }
}
