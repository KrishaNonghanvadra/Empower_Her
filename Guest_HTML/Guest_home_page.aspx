<%@ Page Title="Home"
    Language="C#"
    MasterPageFile="~/Guest_HTML/Guest_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Guest_home_page.aspx.cs"
    Inherits="Empower_Her_1.WebForm1" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../Guest_CSS/guest_home_css.css"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <section class="hero-section">

        <div class="hero-content">

            <h1 class="hero-title">
                Empowering Rural
                <span>Women Through Skills</span>
                <span>&amp; Opportunities</span>
            </h1>

            <p class="hero-description">
                Learn new skills, Grow your business,
                get financial literacy and explore
                government schemes - all in one place.
            </p>

            <div class="hero-buttons">

    <asp:Button ID="btnGetStarted"
        runat="server"
        Text="Get Started"
        CssClass="btn-primary"
        PostBackUrl="~/Guest_HTML/Register.aspx" />

    <asp:Button ID="btnLearnMore"
        runat="server"
        Text="Learn More"
        CssClass="btn-secondary"
        PostBackUrl="~/Guest_HTML/About_Us.aspx" />

</div>

        </div>


        <div class="hero-image">

            <img src="images/image 2.svg"
                 alt="Women learning skills" />

        </div>

    </section>


    <section class="features-section">

        <div class="feature-card">

            <img src="images/S.svg"
                 class="feature-icon"
                 alt="Skill Development" />

            <h3>Skill Development</h3>

            <p>
                Learn computer, crafts,
                marketing &amp; more.
            </p>

        </div>


        <div class="feature-card">

            <img src="images/P.svg"
                 class="feature-icon"
                 alt="Product Showcase" />

            <h3>Product Showcase</h3>

            <p>
                Sell your handmade
                products online.
            </p>

        </div>


        <div class="feature-card">

            <img src="images/G.svg"
                 class="feature-icon"
                 alt="Government Schemes" />

            <h3>Government Schemes</h3>

            <p>
                Find and apply for latest
                Schemes.
            </p>

        </div>


        <div class="feature-card">

            <img src="images/F.svg"
                 class="feature-icon"
                 alt="Financial Literacy" />

            <h3>Financial Literacy</h3>

            <p>
                Learn to manage and
                grow your money.
            </p>

        </div>

    </section>

</asp:Content>