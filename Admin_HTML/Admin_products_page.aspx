<%@ Page Title="Products"
    Language="C#"
    MasterPageFile="~/Admin_HTML/Admin_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Admin_products_page.aspx.cs"
    Inherits="Empower_Her_1.Admin_HTML.Admin_products_page" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/Admin_CSS/admin_product_css.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="product-container">


        <!-- Page Header -->

        <div class="product-header">

            <div class="product-title">

                <h2>Products</h2>

                <p>
                    View and manage products
                </p>

            </div>


            <asp:Button
                ID="btnAddProduct"
                runat="server"
                Text="＋ Add Product"
                CssClass="add-btn"
                OnClick="btnAddProduct_Click" />

        </div>


        <!-- Search -->

        <asp:TextBox
            ID="txtSearch"
            runat="server"
            CssClass="search-box"
            placeholder="🔍  Search products...">
        </asp:TextBox>


        <!-- Product Table -->

        <div class="table-wrapper">

            <asp:GridView
                ID="gvProducts"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="product-table"
                GridLines="Both"
                OnRowCommand="gvProducts_RowCommand"
                style="display:table; width:100%;border:1px solid black;">

                <Columns>


                    <asp:BoundField
                        DataField="Id"
                        HeaderText="ID" />


                    <asp:BoundField
                        DataField="ProductName"
                        HeaderText="Product" />


                    <asp:BoundField
                        DataField="Category"
                        HeaderText="Category" />


                    <asp:BoundField
                        DataField="Price"
                        HeaderText="Price" />


                    <asp:BoundField
                        DataField="Seller"
                        HeaderText="Seller" />


                    <asp:BoundField
                        DataField="Status"
                        HeaderText="Status" />


                    <asp:TemplateField
                        HeaderText="Action">

                        <ItemTemplate>


                            <!-- View -->

                            <asp:LinkButton
                                ID="btnView"
                                runat="server"
                                CssClass="action-btn view-btn"
                                CommandName="ViewProduct"
                                CommandArgument='<%# Eval("Id") %>'
                                ToolTip="View">

                                <i class="fa-solid fa-eye"></i>

                            </asp:LinkButton>


                            <!-- Delete -->

                            <asp:LinkButton
                                ID="btnDelete"
                                runat="server"
                                CssClass="action-btn delete-btn"
                                CommandName="DeleteProduct"
                                CommandArgument='<%# Eval("Id") %>'
                                ToolTip="Delete"
                                OnClientClick="return confirm('Are you sure you want to delete this product?');">

                                <i class="fa-solid fa-trash"></i>

                            </asp:LinkButton>


                        </ItemTemplate>

                    </asp:TemplateField>


                </Columns>

            </asp:GridView>

        </div>


    </div>


</asp:Content>