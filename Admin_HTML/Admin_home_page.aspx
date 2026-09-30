<%@ Page Title="Admin Dashboard"
    Language="C#"
    MasterPageFile="~/Admin_HTML/Admin_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Admin_home_page.aspx.cs"
    Inherits="Empower_Her_1.Admin_HTML.Admin_home_page" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/Admin_CSS/Admin_home_page.css") %>"
          rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <section class="dashboard">

        <h1>
            Welcome Back, Admin
        </h1>

        <p>
            Here's what's happening today
        </p>


        <div class="dashboard-cards">

            <div class="dashboard-card">
                <h3>Total Users</h3>
                <strong>1258</strong>
            </div>

            <div class="dashboard-card">
                <h3>Products</h3>
                <strong>520</strong>
            </div>

            <div class="dashboard-card">
                <h3>Schemes</h3>
                <strong>24</strong>
            </div>

            <div class="dashboard-card">
                <h3>Courses</h3>
                <strong>89</strong>
            </div>

            <div class="dashboard-card">
                <h3>Literacy</h3>
                <strong>125</strong>
            </div>

            <div class="dashboard-card">
                <h3>Notifications</h3>
                <strong>25</strong>
            </div>

            <div class="dashboard-card">
                <h3>Testimonials</h3>
                <strong>25</strong>
            </div>

        </div>

    </section>

</asp:Content>