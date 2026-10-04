<%@ Page Title="Courses"
    Language="C#"
    MasterPageFile="~/Admin_HTML/Admin_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Admin_courses_page.aspx.cs"
    Inherits="Empower_Her_1.Admin_HTML.Admin_courses_page" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/Admin_CSS/admin_courses_page_css.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="course-container">

        <div class="course-header">

            <div class="course-title">

                <h2>Courses</h2>

                <p>Manage learning courses and moduls</p>

            </div>


            <asp:Button
                ID="btnAddCourse"
                runat="server"
                Text="＋ Add Course"
                CssClass="add-course-btn"
                OnClick="btnAddCourse_Click" />

        </div>


        <asp:TextBox
            ID="txtSearch"
            runat="server"
            CssClass="course-search"
            placeholder="⌕  Search courses.....">
        </asp:TextBox>


        <div class="course-table-wrapper">

            <asp:GridView
                ID="gvCourses"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="course-table"
                GridLines="None"
                OnRowCommand="gvCourses_RowCommand">

                <Columns>

                    <asp:BoundField
                        DataField="Id"
                        HeaderText="id" />

                    <asp:BoundField
                        DataField="CourseTitle"
                        HeaderText="Courses Title" />

                    <asp:BoundField
                        DataField="Category"
                        HeaderText="Category" />

                    <asp:BoundField
                        DataField="Lessons"
                        HeaderText="Lesson" />

                    <asp:BoundField
                        DataField="Enrolled"
                        HeaderText="Enrolled" />

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
                                CssClass="course-action edit-course"
                                CommandName="EditCourse"
                                CommandArgument='<%# Eval("Id") %>'
                                ToolTip="Edit Course">

                                <i class="fa-solid fa-pen"></i>

                            </asp:LinkButton>


                            <asp:LinkButton
                                ID="btnDelete"
                                runat="server"
                                CssClass="course-action delete-course"
                                CommandName="DeleteCourse"
                                CommandArgument='<%# Eval("Id") %>'
                                ToolTip="Delete Course"
                                OnClientClick="return confirm('Are you sure you want to delete this course?');">

                                <i class="fa-solid fa-trash"></i>

                            </asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>

    </div>

</asp:Content>
