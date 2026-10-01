<%@ Page Title="Financial Literacy"
    Language="C#"
    MasterPageFile="~/Admin_HTML/Admin_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Admin_financial_literacy_page.aspx.cs"
    Inherits="Empower_Her_1.Admin_HTML.Admin_financial_literacy_page" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/Admin_CSS/admin_financial_literacy_page_css.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="literacy-container">

        <div class="literacy-header">

            <div class="literacy-title">

                <h2>Financial Literacy Topic</h2>

                <p>Add, edit and delete financial literacy topics</p>

            </div>


            <asp:Button
                ID="btnAddTopic"
                runat="server"
                Text="＋ Add Topic"
                CssClass="add-topic-btn"
                OnClick="btnAddTopic_Click" />

        </div>


        <asp:TextBox
            ID="txtSearch"
            runat="server"
            CssClass="literacy-search"
            placeholder="⌕  Search topics.....">
        </asp:TextBox>


        <div class="literacy-table-wrapper">

            <asp:GridView
                ID="gvTopics"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="literacy-table"
                GridLines="None"
                OnRowCommand="gvTopics_RowCommand">

                <Columns>

                    <asp:BoundField
                        DataField="Id"
                        HeaderText="id" />

                    <asp:BoundField
                        DataField="TopicTitle"
                        HeaderText="Topic title" />

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
                                CssClass="topic-action edit-topic"
                                CommandName="EditTopic"
                                CommandArgument='<%# Eval("Id") %>'
                                ToolTip="Edit Topic">

                                <i class="fa-solid fa-pen"></i>

                            </asp:LinkButton>


                            <asp:LinkButton
                                ID="btnDelete"
                                runat="server"
                                CssClass="topic-action delete-topic"
                                CommandName="DeleteTopic"
                                CommandArgument='<%# Eval("Id") %>'
                                ToolTip="Delete Topic"
                                OnClientClick="return confirm('Are you sure you want to delete this topic?');">

                                <i class="fa-solid fa-trash"></i>

                            </asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>

    </div>

</asp:Content>