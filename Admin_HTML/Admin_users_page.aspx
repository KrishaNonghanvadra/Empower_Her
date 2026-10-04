<%@ Page Title="Users"
    Language="C#"
    MasterPageFile="~/Admin_HTML/Admin_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Admin_users_page.aspx.cs"
    Inherits="Empower_Her_1.Admin_HTML.Admin_users_page" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/Admin_CSS/admin_users_css.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="users-container">

        <!-- Page Header -->

        <div class="users-header">

            <div class="users-title">

                <h2>Users</h2>

                <p>Manage all registered users</p>

            </div>


            <asp:Button
                ID="btnAddUser"
                runat="server"
                Text="＋  Add User"
                CssClass="add-user-btn"
                OnClick="btnAddUser_Click" />

        </div>


        <!-- Search -->

        <asp:TextBox
            ID="txtSearch"
            runat="server"
            CssClass="user-search"
            placeholder="⌕  Search users.....">
        </asp:TextBox>


        <!-- User Table -->

        <div class="user-table-wrapper">

            <asp:GridView
                ID="gvUsers"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="user-table"
                GridLines="None"
                OnRowCommand="gvUsers_RowCommand">

                <Columns>


                    <%-- ID column --%>

                    <asp:BoundField
                        DataField="Id"
                        HeaderText="id" />


                    <%-- Name --%>

                    <asp:BoundField
                        DataField="Name"
                        HeaderText="Name" />


                    <%-- Email --%>

                    <asp:BoundField
                        DataField="Email"
                        HeaderText="Email" />


                    <%-- Phone --%>

                    <asp:BoundField
                        DataField="Phone"
                        HeaderText="Phone" />


                    <%-- Joined Date --%>

                    <asp:BoundField
                        DataField="JoinedOn"
                        HeaderText="Joined on" />


                    <%-- Status --%>

                    <asp:TemplateField HeaderText="Status">

                        <ItemTemplate>

                            <span class="status-active">
                                <%# Eval("Status") %>
                            </span>

                        </ItemTemplate>

                    </asp:TemplateField>


                    <%-- Action --%>

                    <asp:TemplateField HeaderText="Action">

                        <ItemTemplate>


                            <!-- View -->

                            <asp:LinkButton
                                ID="btnView"
                                runat="server"
                                CssClass="user-action view-user"
                                CommandName="ViewUser"
                                CommandArgument='<%# Eval("Id") %>'
                                ToolTip="View User">

                                <i class="fa-solid fa-eye"></i>

                            </asp:LinkButton>


                            <!-- Delete -->

                            <asp:LinkButton
                                ID="btnDelete"
                                runat="server"
                                CssClass="user-action delete-user"
                                CommandName="DeleteUser"
                                CommandArgument='<%# Eval("Id") %>'
                                ToolTip="Delete User"
                                OnClientClick="return confirm('Are you sure you want to delete this user?');">

                                <i class="fa-solid fa-trash"></i>

                            </asp:LinkButton>


                        </ItemTemplate>

                    </asp:TemplateField>


                </Columns>

            </asp:GridView>

        </div>

    </div>


</asp:Content>