
<%@ Page Title="Government Schemes"
    Language="C#"
    MasterPageFile="~/Admin_HTML/Admin_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Admin_government_schemes_page.aspx.cs"
    Inherits="Empower_Her_1.Admin_HTML.Admin_government_schemes_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/Admin_CSS/admin_government_schemes_page_css.css") %>"
          rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="scheme-container">

        <div class="scheme-header">
            <div>
                <h2>Government Schemas</h2>
                <p>Add, edit and delete government schemes</p>
            </div>

            <asp:Button ID="btnAddScheme" runat="server"
                Text="＋ Add Schema"
                CssClass="add-btn"
                CausesValidation="false"
                OnClick="btnAddScheme_Click" />
        </div>

        <asp:TextBox ID="txtSearch" runat="server"
            CssClass="search-box"
            placeholder="⌕  Search schemes....."
            AutoPostBack="true"
            OnTextChanged="txtSearch_TextChanged" />

        <asp:Label ID="lblMessage" runat="server" CssClass="message" />

        <div class="table-wrapper">
            <asp:GridView ID="gvSchemes" runat="server"
                AutoGenerateColumns="false"
                CssClass="scheme-table"
                GridLines="None"
                DataKeyNames="Id"
                OnRowCommand="gvSchemes_RowCommand">

                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="id" />

                    <asp:BoundField DataField="SchemeName" HeaderText="Schemas" />

                    <asp:BoundField DataField="Category" HeaderText="Category" />

                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <span class="status-active"><%# Eval("Status") %></span>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnView" runat="server"
                                CssClass="action-btn view-btn"
                                CommandName="ViewScheme"
                                CommandArgument='<%# Eval("Id") %>'
                                CausesValidation="false"
                                ToolTip="View scheme">
                                <i class="fa-solid fa-eye"></i>
                            </asp:LinkButton>

                            <asp:LinkButton ID="btnEdit" runat="server"
                                CssClass="action-btn edit-btn"
                                CommandName="EditScheme"
                                CommandArgument='<%# Eval("Id") %>'
                                CausesValidation="false"
                                ToolTip="Edit scheme">
                                <i class="fa-solid fa-pen"></i>
                            </asp:LinkButton>

                            <asp:LinkButton ID="btnDelete" runat="server"
                                CssClass="action-btn delete-btn"
                                CommandName="DeleteScheme"
                                CommandArgument='<%# Eval("Id") %>'
                                CausesValidation="false"
                                ToolTip="Delete scheme"
                                OnClientClick="return confirm('Are you sure you want to delete this scheme?');">
                                <i class="fa-solid fa-trash"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <EmptyDataTemplate>
                    <div class="empty-message">No government schemes found.</div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>

    </div>

    <!-- Add/Edit/View popup -->
    <asp:Panel ID="pnlSchemeModal" runat="server"
        CssClass="modal-overlay" Visible="false">

        <div class="scheme-modal">
            <h3>
                <asp:Label ID="lblModalTitle" runat="server" Text="Add Scheme" />
            </h3>

            <asp:HiddenField ID="hfSchemeId" runat="server" />

            <div class="form-group">
                <label>Scheme Name *</label>
                <asp:TextBox ID="txtSchemeName" runat="server"
                    CssClass="form-input" MaxLength="150" />
                <asp:RequiredFieldValidator ID="rfvSchemeName" runat="server"
                    ControlToValidate="txtSchemeName"
                    ErrorMessage="Scheme name is required."
                    CssClass="validation-error"
                    Display="Dynamic"
                    ValidationGroup="SchemeForm" />
            </div>

            <div class="form-group">
                <label>Category *</label>
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-input">
                    <asp:ListItem Text="-- Select category --" Value="" />
                    <asp:ListItem Text="Loan Schemes" Value="Loan Schemes" />
                    <asp:ListItem Text="Business Support" Value="Business Support" />
                    <asp:ListItem Text="Education" Value="Education" />
                    <asp:ListItem Text="Employment" Value="Employment" />
                    <asp:ListItem Text="Other" Value="Other" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCategory" runat="server"
                    ControlToValidate="ddlCategory"
                    InitialValue=""
                    ErrorMessage="Please select a category."
                    CssClass="validation-error"
                    Display="Dynamic"
                    ValidationGroup="SchemeForm" />
            </div>

            <div class="form-group">
                <label>Description *</label>
                <asp:TextBox ID="txtDescription" runat="server"
                    CssClass="form-input description-input"
                    TextMode="MultiLine" Rows="4" MaxLength="1000" />
                <asp:RequiredFieldValidator ID="rfvDescription" runat="server"
                    ControlToValidate="txtDescription"
                    ErrorMessage="Description is required."
                    CssClass="validation-error"
                    Display="Dynamic"
                    ValidationGroup="SchemeForm" />
            </div>

            <div class="form-group">
                <label>Status</label>
                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-input">
                    <asp:ListItem Text="Active" Value="Active" />
                    <asp:ListItem Text="Inactive" Value="Inactive" />
                </asp:DropDownList>
            </div>

            <asp:Label ID="lblFormMessage" runat="server" CssClass="validation-error" />

            <div class="modal-actions">
                <asp:Button ID="btnSaveScheme" runat="server"
                    Text="Save Scheme"
                    CssClass="save-btn"
                    ValidationGroup="SchemeForm"
                    OnClick="btnSaveScheme_Click" />

                <asp:Button ID="btnCloseModal" runat="server"
                    Text="Close"
                    CssClass="cancel-btn"
                    CausesValidation="false"
                    OnClick="btnCloseModal_Click" />
            </div>
        </div>
    </asp:Panel>

</asp:Content>
