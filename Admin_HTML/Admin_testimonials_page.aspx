<%@ Page Title="Testimonials"
    Language="C#"
    MasterPageFile="~/Admin_HTML/Admin_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Admin_testimonials_page.aspx.cs"
    Inherits="Empower_Her_1.Admin_HTML.Admin_testimonials_page" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/Admin_CSS/admin_testimonials_page_css.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="testimonial-container">


        <div class="testimonial-header">

            <div class="testimonial-title">

                <h2>Testimonial</h2>

                <p>Manage users Testimonial</p>

            </div>

        </div>


        <asp:TextBox
            ID="txtSearch"
            runat="server"
            CssClass="testimonial-search"
            placeholder="⌕  Search Testimonial.....">
        </asp:TextBox>


        <div class="testimonial-table-wrapper">

            <asp:GridView
                ID="gvTestimonials"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="testimonial-table"
                GridLines="None"
                OnRowCommand="gvTestimonials_RowCommand">

                <Columns>

                    <asp:BoundField
                        DataField="Id"
                        HeaderText="id" />

                    <asp:BoundField
                        DataField="UserName"
                        HeaderText="User" />

                    <asp:BoundField
                        DataField="Feedback"
                        HeaderText="Feedback" />

                    <asp:TemplateField
                        HeaderText="Rating">

                        <ItemTemplate>

                            <span class="status-active">
                                <%# Eval("Rating") %>
                            </span>

                        </ItemTemplate>

                    </asp:TemplateField>


                    <asp:TemplateField
                        HeaderText="Action">

                        <ItemTemplate>

                            <asp:LinkButton
                                ID="btnEdit"
                                runat="server"
                                CssClass="testimonial-action edit-testimonial"
                                CommandName="EditTestimonial"
                                CommandArgument='<%# Eval("Id") %>'
                                ToolTip="Edit Testimonial">

                                <i class="fa-solid fa-pen"></i>

                            </asp:LinkButton>


                            <asp:LinkButton
                                ID="btnDelete"
                                runat="server"
                                CssClass="testimonial-action delete-testimonial"
                                CommandName="DeleteTestimonial"
                                CommandArgument='<%# Eval("Id") %>'
                                ToolTip="Delete Testimonial"
                                OnClientClick="return confirm('Are you sure you want to delete this testimonial?');">

                                <i class="fa-solid fa-trash"></i>

                            </asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>

    </div>

</asp:Content>
