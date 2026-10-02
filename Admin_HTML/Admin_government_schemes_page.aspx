<%@ Page Title="Government Schemes"
    Language="C#"
    MasterPageFile="~/Admin_HTML/Admin_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Admin_government_schemes_page.aspx.cs"
    Inherits="Empower_Her_1.Admin_HTML.Admin_government_schemes_page" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/Admin_CSS/admin_government_schemes_page_css.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="scheme-container">

        <div class="scheme-header">

            <div class="scheme-title">

                <h2>Government Schemas</h2>

                <p>Add, edit and delete government schemas</p>

            </div>


            <asp:Button
                ID="btnAddScheme"
                runat="server"
                Text="＋ Add Schema"
                CssClass="add-scheme-btn"
                OnClick="btnAddScheme_Click" />

        </div>


        <asp:TextBox
            ID="txtSearch"
            runat="server"
            CssClass="scheme-search"
            placeholder="⌕  Search schemas.....">
        </asp:TextBox>


        <div class="scheme-table-wrapper">

            <asp:GridView
                ID="gvSchemes"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="scheme-table"
                GridLines="None"
                OnRowCommand="gvSchemes_RowCommand">

                <Columns>

                    <asp:BoundField
                        DataField="Id"
                        HeaderText="id" />

                    <asp:BoundField
                        DataField="SchemeName"
                        HeaderText="Schemas" />

                    <asp:BoundField
                        DataField="Category"
                        HeaderText="Category" />

                    <asp:TemplateField
                        HeaderText="Status">

                        <ItemTemplate>

                            <span class="status-active">
                                <%# Eval("Status") %>
                            </span>

                        </ItemTemplate>

                    </asp:TemplateField>


                    <asp:TemplateField
                        HeaderText="Action">

                        <ItemTemplate>

                            <asp:LinkButton
                                ID="btnEdit"
                                runat="server"
                                CssClass="scheme-action edit-scheme"
                                CommandName="EditScheme"
                                CommandArgument='<%# Eval("Id") %>'
                                ToolTip="Edit Scheme">

                                <i class="fa-solid fa-pen"></i>

                            </asp:LinkButton>


                            <asp:LinkButton
                                ID="btnDelete"
                                runat="server"
                                CssClass="scheme-action delete-scheme"
                                CommandName="DeleteScheme"
                                CommandArgument='<%# Eval("Id") %>'
                                ToolTip="Delete Scheme"
                                OnClientClick="return confirm('Are you sure you want to delete this scheme?');">

                                <i class="fa-solid fa-trash"></i>

                            </asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>

    </div>

</asp:Content>
