<%@ Page Title="Government Schemes"
    Language="C#"
    MasterPageFile="~/Guest_HTML/Guest_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Government_Schemes.aspx.cs"
    Inherits="Empower_Her_1.Government_Schemes" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../Guest_CSS/government_schemes_css.css"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <section class="schemes-page">

        <!-- Page Heading -->

        <div class="schemes-heading">

            <h1>
                Government <span>Schemes</span>
            </h1>

            <p>
                Explore various government schemes for women empowerment.
            </p>

        </div>


        <!-- Search and Category -->

        <div class="scheme-filter">

            <div class="search-area">

                <span class="search-icon">⌕</span>

                <asp:TextBox
                    ID="txtSearch"
                    runat="server"
                    CssClass="search-input"
                    placeholder="Search schemes...">
                </asp:TextBox>

            </div>


            <asp:DropDownList
                ID="ddlCategory"
                runat="server"
                CssClass="category-dropdown">

                <asp:ListItem Text="All Categories"
                    Value="All">
                </asp:ListItem>

                <asp:ListItem Text="Loan Schemes"
                    Value="Loan">
                </asp:ListItem>

                <asp:ListItem Text="Skill Development"
                    Value="Skill">
                </asp:ListItem>

                <asp:ListItem Text="Women Empowerment"
                    Value="Women">
                </asp:ListItem>

            </asp:DropDownList>

        </div>


        <!-- Government Scheme Cards -->

        <div class="schemes-grid">


            <!-- PM Mudra Yojana -->

            <div class="scheme-card">

                <div class="scheme-icon mudra-icon">
                    ₹
                </div>

                <div class="scheme-content">

                    <h3>PM Mudra Yojana</h3>

                    <p>
                        Offers collateral-free micro-loans
                        to women starting or expanding
                        small businesses.
                    </p>

                </div>

            </div>


            <!-- Skill India Mission -->

            <div class="scheme-card">

                <div class="scheme-icon skill-icon">
                    ▣
                </div>

                <div class="scheme-content">

                    <h3>Skill India Mission</h3>

                    <p>
                        It offers free or low-cost vocational
                        training and 30% reservation in ITIs,
                        and has trained over 35 million women
                        in traditional.
                    </p>

                </div>

            </div>


            <!-- Stand-Up India -->

            <div class="scheme-card">

                <div class="scheme-icon standup-icon">
                    ♧
                </div>

                <div class="scheme-content">

                    <h3>Stand-Up India</h3>

                    <p>
                        Provides bank loans between ₹10 lakh
                        and ₹1 crore specifically to women
                        entrepreneurs.
                    </p>

                </div>

            </div>


            <!-- Mahila E-Haat -->

            <div class="scheme-card">

                <div class="scheme-icon ehaat-icon">
                    🛒
                </div>

                <div class="scheme-content">

                    <h3>Mahila E-Haat</h3>

                    <p>
                        Extends micro-finance and skill training
                        to women from backward and disadvantaged
                        backgrounds.
                    </p>

                </div>

            </div>


            <!-- Beti Bachao Beti Padhao -->

            <div class="scheme-card">

                <div class="scheme-icon beti-icon">
                    👧
                </div>

                <div class="scheme-content">

                    <h3>Beti Bachao Beti Padhao</h3>

                    <p>
                        Promotes, protection, and education of
                        the girl child to prevent gender bias
                        and prevent gender-biased sex selection.
                    </p>

                </div>

            </div>


            <!-- National Rural Livelihood Mission -->

            <div class="scheme-card">

                <div class="scheme-icon nrlm-icon">
                    ♟
                </div>

                <div class="scheme-content">

                    <h3>National Rural Livelihood Mission</h3>

                    <p>
                        It organizes rural poor women into
                        Self-Help Groups (SHGs), providing
                        bank credit links and skill development.
                    </p>

                </div>

            </div>


        </div>

    </section>

</asp:Content>