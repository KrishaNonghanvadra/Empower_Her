
<%@ Page Title="Users"
    Language="C#"
    MasterPageFile="~/Admin_HTML/Admin_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Admin_users_page.aspx.cs"
    Inherits="Empower_Her_1.Admin_HTML.Admin_users_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/Admin_CSS/admin_users_css.css") %>"
          rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="users-container">

        <div class="users-header">
            <div>
                <h2>Users</h2>
                <p>Manage all registered users</p>
            </div>

            <asp:Button ID="btnAddUser" runat="server"
                Text="＋ Add User"
                CssClass="add-btn"
                CausesValidation="false"
                OnClick="btnAddUser_Click" />
        </div>

        <div class="search-row">
            <asp:TextBox ID="txtSearch" runat="server"
                CssClass="search-box"
                placeholder="⌕  Search users..."
                AutoPostBack="true"
                OnTextChanged="txtSearch_TextChanged" />

            <asp:Button ID="btnClearSearch" runat="server"
                Text="Clear"
                CssClass="clear-btn"
                CausesValidation="false"
                OnClick="btnClearSearch_Click" />
        </div>

        <div class="table-wrapper">
            <asp:GridView ID="gvUsers" runat="server"
                AutoGenerateColumns="False"
                CssClass="users-table"
                GridLines="None"
                DataKeyNames="Id"
                OnRowCommand="gvUsers_RowCommand"
                EmptyDataText="No users found.">

                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    <asp:BoundField DataField="JoinedOn" HeaderText="Joined on"
                        DataFormatString="{0:dd-MM-yyyy}" />

                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <span class='<%# Convert.ToString(Eval("Status")) == "Active" ? "status-active" : "status-inactive" %>'>
                                <%# Eval("Status") %>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnView" runat="server"
                                CssClass="action-btn view-btn"
                                CommandName="ViewUser"
                                CommandArgument='<%# Eval("Id") %>'
                                CausesValidation="false"
                                ToolTip="View user">
                                <i class="fa-solid fa-eye"></i>
                            </asp:LinkButton>

                            <asp:LinkButton ID="btnEdit" runat="server"
                                CssClass="action-btn edit-btn"
                                CommandName="EditUser"
                                CommandArgument='<%# Eval("Id") %>'
                                CausesValidation="false"
                                ToolTip="Edit user">
                                <i class="fa-solid fa-pen-to-square"></i>
                            </asp:LinkButton>

                            <asp:LinkButton ID="btnDelete" runat="server"
                                CssClass="action-btn delete-btn"
                                CommandName="DeleteUser"
                                CommandArgument='<%# Eval("Id") %>'
                                CausesValidation="false"
                                ToolTip="Delete user"
                                OnClientClick="return confirm('Are you sure you want to delete this user?');">
                                <i class="fa-solid fa-trash"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

        <asp:Label ID="lblMessage" runat="server" CssClass="message-label" />

    </div>

    <!-- ADD / EDIT POPUP -->
    <asp:Panel ID="pnlUserForm" runat="server"
        CssClass="modal-overlay" Visible="false">

        <div class="modal-card">
            <h3>
                <asp:Label ID="lblFormTitle" runat="server" Text="Add User" />
            </h3>

            <asp:HiddenField ID="hfUserId" runat="server" />

            <div class="form-field">
                <label for="<%= txtName.ClientID %>">Full Name</label>
                <asp:TextBox ID="txtName" runat="server"
                    CssClass="form-input" MaxLength="100" />

                <asp:RequiredFieldValidator ID="rfvName" runat="server"
                    ControlToValidate="txtName"
                    ErrorMessage="Name is required."
                    CssClass="validation-error"
                    Display="Dynamic" ValidationGroup="UserForm" />

                <asp:RegularExpressionValidator ID="revName" runat="server"
                    ControlToValidate="txtName"
                    ValidationExpression="^[A-Za-z][A-Za-z .'-]{1,99}$"
                    ErrorMessage="Enter a valid name (at least 2 characters)."
                    CssClass="validation-error"
                    Display="Dynamic" ValidationGroup="UserForm" />
            </div>

            <div class="form-field">
                <label for="<%= txtEmail.ClientID %>">Email</label>
                <asp:TextBox ID="txtEmail" runat="server"
                    CssClass="form-input" MaxLength="150" />

                <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Email is required."
                    CssClass="validation-error"
                    Display="Dynamic" ValidationGroup="UserForm" />

                <asp:RegularExpressionValidator ID="revEmail" runat="server"
                    ControlToValidate="txtEmail"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                    ErrorMessage="Enter a valid email address."
                    CssClass="validation-error"
                    Display="Dynamic" ValidationGroup="UserForm" />
                <asp:CustomValidator ID="cvEmail" runat="server"
                    ErrorMessage="This email address is already registered."
                    CssClass="validation-error"
                    Display="Dynamic"
                    ValidationGroup="UserForm"
                    EnableClientScript="false" />
            </div>

            <div class="form-field">
                <label for="<%= txtPhone.ClientID %>">Phone</label>
                <asp:TextBox ID="txtPhone" runat="server"
                    CssClass="form-input" MaxLength="10" />

                <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                    ControlToValidate="txtPhone"
                    ErrorMessage="Phone number is required."
                    CssClass="validation-error"
                    Display="Dynamic" ValidationGroup="UserForm" />

                <asp:RegularExpressionValidator ID="revPhone" runat="server"
                    ControlToValidate="txtPhone"
                    ValidationExpression="^[0-9]{10}$"
                    ErrorMessage="Enter exactly 10 digits."
                    CssClass="validation-error"
                    Display="Dynamic" ValidationGroup="UserForm" />
            </div>

            <div class="form-field">
                <label for="<%= ddlStatus.ClientID %>">Status</label>
                <asp:DropDownList ID="ddlStatus" runat="server"
                    CssClass="form-input">
                    <asp:ListItem Text="Active" Value="Active" />
                    <asp:ListItem Text="Inactive" Value="Inactive" />
                </asp:DropDownList>
            </div>

            <div class="modal-actions">
                <asp:Button ID="btnSaveUser" runat="server"
                    Text="Save User"
                    CssClass="save-btn"
                    ValidationGroup="UserForm"
                    OnClick="btnSaveUser_Click" />

                <asp:Button ID="btnCancelForm" runat="server"
                    Text="Cancel"
                    CssClass="cancel-btn"
                    CausesValidation="false"
                    OnClick="btnCancelForm_Click" />
            </div>
        </div>
    </asp:Panel>

    <!-- VIEW USER POPUP -->
    <asp:Panel ID="pnlViewUser" runat="server"
        CssClass="modal-overlay" Visible="false">

        <div class="modal-card view-card">
            <h3>User Details</h3>

            <p><strong>ID:</strong>
                <asp:Label ID="lblViewId" runat="server" /></p>

            <p><strong>Name:</strong>
                <asp:Label ID="lblViewName" runat="server" /></p>

            <p><strong>Email:</strong>
                <asp:Label ID="lblViewEmail" runat="server" /></p>

            <p><strong>Phone:</strong>
                <asp:Label ID="lblViewPhone" runat="server" /></p>

            <p><strong>Joined on:</strong>
                <asp:Label ID="lblViewJoined" runat="server" /></p>

            <p><strong>Status:</strong>
                <asp:Label ID="lblViewStatus" runat="server" /></p>

            <div class="modal-actions">
                <asp:Button ID="btnCloseView" runat="server"
                    Text="Close"
                    CssClass="cancel-btn"
                    CausesValidation="false"
                    OnClick="btnCloseView_Click" />
            </div>
        </div>
    </asp:Panel>

</asp:Content>
