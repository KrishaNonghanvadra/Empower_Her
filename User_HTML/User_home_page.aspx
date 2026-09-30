<%@ Page Title="" Language="C#" MasterPageFile="~/User_HTML/User_Master_Page.Master" AutoEventWireup="true" CodeBehind="User_home_page.aspx.cs" Inherits="Empower_Her_1.User_HTML.User_home_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Home Page CSS -->
    <link href="../CSS/User_home_page.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- ================= HOME PAGE ================= -->

    <section class="home-section">

        <h1>
            Welcome to EmpowerHer
        </h1>

        <p>
            Empowering Women Through Skills & Opportunities
        </p>

        <button class="get-started-btn">
            Get Started
        </button>

    </section>


    <!-- YOUR DASHBOARD CONTENT WILL COME HERE -->
</asp:Content>

