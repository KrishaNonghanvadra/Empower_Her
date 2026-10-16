
<%@ Page Title="Products"
    Language="C#"
    MasterPageFile="~/Admin_HTML/Admin_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Admin_products_page.aspx.cs"
    Inherits="Empower_Her_1.Admin_HTML.Admin_products_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/Admin_CSS/admin_product_css.css") %>"
        rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="product-container">

        <div class="product-header">
            <div class="product-title">
                <h2>Products</h2>
                <p>Add, edit and delete product</p>
            </div>

            <asp:Button ID="btnAddProduct" runat="server"
                Text="＋ Add Product"
                CssClass="add-btn"
                CausesValidation="false"
                UseSubmitBehavior="true"
                OnClick="btnAddProduct_Click" />
        </div>

        
            <asp:TextBox
                ID="txtSearch"
                runat="server"
                CssClass="search-box"
                placeholder="⌕  Search products....."
                AutoPostBack="true"
                OnTextChanged="txtSearch_TextChanged">
            </asp:TextBox>

            <asp:Button
                ID="btnSearch"
                runat="server"
                Text="Search"
                CssClass="search-btn"
                CausesValidation="false"
                OnClick="btnSearch_Click" />

            <asp:Button
                ID="btnClearSearch"
                runat="server"
                Text="Clear"
                CssClass="clear-search-btn"
                CausesValidation="false"
                OnClick="btnClearSearch_Click" />


        <div class="table-wrapper">

            <asp:GridView ID="gvProducts" runat="server"
                AutoGenerateColumns="false"
                DataKeyNames="Id"
                CssClass="product-table"
                GridLines="None"
                EmptyDataText="No products found."
                OnRowCommand="gvProducts_RowCommand">

                <Columns>

                    <asp:BoundField DataField="Id" HeaderText="id" />

                    <asp:BoundField DataField="ProductName" HeaderText="Products" />

                    <asp:BoundField DataField="Category" HeaderText="Category" />

                    <asp:BoundField DataField="Price" HeaderText="Price"
                        DataFormatString="{0:0.##}" />

                    <asp:BoundField DataField="Seller" HeaderText="Seller" />

                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <span class="status-active">
                                <%# Eval("Status") %>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>

                            <asp:LinkButton ID="btnView" runat="server"
                                CssClass="action-btn view-btn"
                                CommandName="ViewProduct"
                                CommandArgument='<%# Eval("Id") %>'
                                CausesValidation="false"
                                ToolTip="View product">
                                <i class="fa-solid fa-eye"></i>
                            </asp:LinkButton>

                            <asp:LinkButton ID="btnEdit" runat="server"
                                CssClass="action-btn edit-btn"
                                CommandName="EditProduct"
                                CommandArgument='<%# Eval("Id") %>'
                                CausesValidation="false"
                                ToolTip="Edit product">
                                <i class="fa-solid fa-pen-to-square"></i>
                            </asp:LinkButton>

                            <asp:LinkButton ID="btnDelete" runat="server"
                                CssClass="action-btn delete-btn"
                                CommandName="DeleteProduct"
                                CommandArgument='<%# Eval("Id") %>'
                                CausesValidation="false"
                                ToolTip="Delete product"
                                OnClientClick="return confirm('Are you sure you want to delete this product?');">
                                <i class="fa-solid fa-trash"></i>
                            </asp:LinkButton>

                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>

        </div>
    </div>

    <!-- Product popup -->
    <asp:Panel ID="pnlProductModal" runat="server"
        CssClass="modal-overlay" Visible="false">

        <div class="product-modal">

            <h3>
                <asp:Literal ID="litModalTitle" runat="server"
                    Text="Add Product" />
            </h3>

            <asp:HiddenField ID="hfProductId" runat="server" />

            <asp:ValidationSummary ID="vsProduct" runat="server"
                ValidationGroup="ProductForm"
                CssClass="validation-summary"
                HeaderText="Please correct the following:" />

            <div class="form-field">
                <label>Product Name *</label>
                <asp:TextBox ID="txtProductName" runat="server"
                    CssClass="form-control" MaxLength="150" />

                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="txtProductName"
                    ErrorMessage="Product name is required."
                    CssClass="validation-error"
                    ValidationGroup="ProductForm"
                    Display="Dynamic" />
            </div>

            <div class="form-field">
                <label>Category *</label>
                <asp:TextBox ID="txtCategory" runat="server"
                    CssClass="form-control" MaxLength="100" />

                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="txtCategory"
                    ErrorMessage="Category is required."
                    CssClass="validation-error"
                    ValidationGroup="ProductForm"
                    Display="Dynamic" />
            </div>

            <div class="form-field">
                <label>Price (₹) *</label>
                <asp:TextBox ID="txtPrice" runat="server"
                    CssClass="form-control" MaxLength="10" />

                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="txtPrice"
                    ErrorMessage="Price is required."
                    CssClass="validation-error"
                    ValidationGroup="ProductForm"
                    Display="Dynamic" />

                <asp:RegularExpressionValidator runat="server"
                    ControlToValidate="txtPrice"
                    ValidationExpression="^\d{1,8}(\.\d{1,2})?$"
                    ErrorMessage="Enter a valid price with up to 2 decimal places."
                    CssClass="validation-error"
                    ValidationGroup="ProductForm"
                    Display="Dynamic" />
            </div>

            <div class="form-field">
                <label>Seller *</label>
                <asp:TextBox ID="txtSeller" runat="server"
                    CssClass="form-control" MaxLength="100" />

                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="txtSeller"
                    ErrorMessage="Seller name is required."
                    CssClass="validation-error"
                    ValidationGroup="ProductForm"
                    Display="Dynamic" />
            </div>

            <div class="form-field">
                <label>Status</label>
                <asp:DropDownList ID="ddlStatus" runat="server"
                    CssClass="form-control">
                    <asp:ListItem Text="Active" Value="Active" />
                    <asp:ListItem Text="Pending" Value="Pending" />
                    <asp:ListItem Text="Inactive" Value="Inactive" />
                </asp:DropDownList>
            </div>

            <asp:Label ID="lblProductMessage" runat="server"
                CssClass="form-message" />

            <div class="modal-actions">
                <asp:Button ID="btnSaveProduct" runat="server"
                    Text="Save Product"
                    CssClass="modal-btn save-btn"
                    ValidationGroup="ProductForm"
                    OnClick="btnSaveProduct_Click" />

                <asp:Button ID="btnCancelProduct" runat="server"
                    Text="Cancel"
                    CssClass="modal-btn cancel-btn"
                    CausesValidation="false"
                    OnClick="btnCancelProduct_Click" />
            </div>

        </div>
    </asp:Panel>

</asp:Content>
