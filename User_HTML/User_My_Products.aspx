<%@ Page Title="My Products"
    Language="C#"
    MasterPageFile="~/User_HTML/User_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="User_My_Products.aspx.cs"
    Inherits="Empower_Her_1.User_HTML.User_My_Products" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/User_CSS/User_My_Products.css") %>"
        rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="products-page">

        <div class="products-header">

            <div>
                <h1>My Products</h1>

                <p>
                    Showcase your handmade products to the world.
                </p>
            </div>

            <button type="button"
                class="add-product-btn">

                <span>+</span>
                Add Product

            </button>

        </div>


        <div class="product-search">

            <span class="search-icon">⌕</span>

            <input type="text"
                placeholder="Search products....." />

        </div>


        <div class="products-grid">


            <div class="product-card">

                <img src="../User_Images/user_product1.png"
                    alt="Handmade Bag" />

                <div class="product-info">

                    <h3>Handmade Bag</h3>

                    <p>$350</p>

                </div>

            </div>


            <div class="product-card">

                <img src="../User_Images/user_product2.png"
                    alt="Embroidery Frame" />

                <div class="product-info">

                    <h3>Embroidery Frame</h3>

                    <p>$350</p>

                </div>

            </div>


            <div class="product-card">

                <img src="../User_Images/user_product3.png"
                    alt="Decorative Candle" />

                <div class="product-info">

                    <h3>Decorative Candle</h3>

                    <p>$350</p>

                </div>

            </div>


            <div class="product-card">

                <img src="../User_Images/user_product4.png"
                    alt="Crochet Basket" />

                <div class="product-info">

                    <h3>Crochet Basket</h3>

                    <p>$350</p>

                </div>

            </div>


            <div class="product-card">

                <img src="../User_Images/user_product5.png"
                    alt="Wall Hanging" />

                <div class="product-info">

                    <h3>Wall Hanging</h3>

                    <p>$350</p>

                </div>

            </div>


            <div class="product-card">

                <img src="../User_Images/user_product6.png"
                    alt="Jute Handbag" />

                <div class="product-info">

                    <h3>Jute Handbag</h3>

                    <p>$350</p>

                </div>

            </div>


        </div>

    </div>

</asp:Content>