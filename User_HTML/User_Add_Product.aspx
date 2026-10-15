<%@ Page
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="User_Add_Product.aspx.cs"
    Inherits="Empower_Her_1.User_HTML.User_Add_Product"
    MasterPageFile="~/User_HTML/User_Master_Page.Master"
    UnobtrusiveValidationMode="None"
%>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/User_CSS/User_Add_Product.css") %>"
          rel="stylesheet" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="add-product-page">

        <!-- PAGE HEADER -->

        <div class="page-header">

            <div>
                <h1>Add New Product</h1>

                <p>
                    Add your handmade product and showcase it to the world.
                </p>
            </div>

            <a href="User_My_Products.aspx" class="back-btn">
                ← Back to Products
            </a>

        </div>


        <!-- PRODUCT FORM -->

        <div class="product-form-card">

            <h2>Product Information</h2>

            <p class="form-description">
                Enter the details of your product below.
            </p>


            <!-- SUCCESS MESSAGE -->

            <asp:Label
                ID="lblSuccessMessage"
                runat="server"
                CssClass="success-message">
            </asp:Label>


            <!-- PRODUCT NAME -->

            <div class="form-group">

                <label>Product Name</label>

                <asp:TextBox
                    ID="txtProductName"
                    runat="server"
                    CssClass="form-input"
                    placeholder="Enter product name">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvProductName"
                    runat="server"
                    ControlToValidate="txtProductName"
                    ErrorMessage="Product name is required."
                    Text="* Product name is required"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <!-- CATEGORY -->

            <div class="form-group">

                <label>Category</label>

                <asp:DropDownList
                    ID="ddlCategory"
                    runat="server"
                    CssClass="form-input">

                    <asp:ListItem Text="Select Category" Value=""></asp:ListItem>
                    <asp:ListItem Text="Handmade Bags" Value="Bags"></asp:ListItem>
                    <asp:ListItem Text="Embroidery" Value="Embroidery"></asp:ListItem>
                    <asp:ListItem Text="Home Decor" Value="Home Decor"></asp:ListItem>
                    <asp:ListItem Text="Clothing" Value="Clothing"></asp:ListItem>
                    <asp:ListItem Text="Jewellery" Value="Jewellery"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>

                </asp:DropDownList>

                <asp:RequiredFieldValidator
                    ID="rfvCategory"
                    runat="server"
                    ControlToValidate="ddlCategory"
                    InitialValue=""
                    ErrorMessage="Please select a category."
                    Text="* Please select a category"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <!-- PRICE -->

            <div class="form-group">

                <label>Price</label>

                <asp:TextBox
                    ID="txtPrice"
                    runat="server"
                    CssClass="form-input"
                    placeholder="Enter price">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvPrice"
                    runat="server"
                    ControlToValidate="txtPrice"
                    ErrorMessage="Price is required."
                    Text="* Price is required"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="revPrice"
                    runat="server"
                    ControlToValidate="txtPrice"
                    ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$"
                    ErrorMessage="Please enter a valid price."
                    Text="* Enter a valid price"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>

            </div>


            <!-- DESCRIPTION -->

            <div class="form-group">

                <label>Product Description</label>

                <asp:TextBox
                    ID="txtDescription"
                    runat="server"
                    CssClass="form-input description-input"
                    TextMode="MultiLine"
                    Rows="5"
                    placeholder="Describe your product...">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvDescription"
                    runat="server"
                    ControlToValidate="txtDescription"
                    ErrorMessage="Product description is required."
                    Text="* Product description is required"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <!-- PRODUCT IMAGE -->

            <div class="form-group">

                <label>Product Image</label>

                <asp:FileUpload
                    ID="fuProductImage"
                    runat="server"
                    CssClass="file-input" />

                <p class="image-note">
                    Upload a clear image of your product.
                </p>

            </div>


            <!-- BUTTONS -->

            <div class="form-buttons">

                <a
                    href="User_My_Products.aspx"
                    class="cancel-btn">
                    Cancel
                </a>

                <asp:Button
                    ID="btnAddProduct"
                    runat="server"
                    Text="Add Product"
                    CssClass="add-product-btn"
                    OnClick="btnAddProduct_Click" />

            </div>

        </div>

    </div>

</asp:Content>