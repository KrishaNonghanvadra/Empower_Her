<%@ Page Title="About Us"
    Language="C#"
    MasterPageFile="~/Guest_HTML/Guest_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="About_Us.aspx.cs"
    Inherits="Empower_Her_1.About_Us" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../Guest_CSS/about_us_css.css"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <section class="about-page">

        <!-- =========================
             ABOUT INTRODUCTION
             ========================= -->

        <div class="about-intro">

            <!-- LEFT SIDE -->

            <div class="about-content">

                <h1>About Us</h1>

                <h2>
                    Empowering Women.
                    Building Stronger Communities.
                </h2>

                <p>
                    EmpowerHer is a platform dedicated to the skill
                    development and empowerment of rural women.
                    Our mission is to provide free access to quality
                    learning resources, business guidance, financial
                    literacy and information about government schemes
                    to help women become independent and confident.
                </p>


                <!-- Buttons -->

                <div class="about-buttons">

                    <asp:Button
                        ID="btnRegister"
                        runat="server"
                        Text="Register"
                        CssClass="about-primary-button" />

                    <asp:Button
                        ID="btnContact"
                        runat="server"
                        Text="Contact us"
                        CssClass="about-primary-button" />

                </div>

            </div>


            <!-- RIGHT SIDE IMAGE -->

            <div class="about-image">

                <img
                    src="images/Rectangle 242.png"
                    alt="Women learning together" />

            </div>

        </div>


        <!-- =========================
             FEATURE CARDS
             ========================= -->

        <div class="about-features">


            <!-- Skill Development -->

            <div class="about-feature-card">

                <img
                    src="images/mdi_university.png"
                    alt="Skill Development"
                    class="about-feature-icon" />

                <h3>Skill Development</h3>

                <p>
                    Provide access to practical
                    skills and knowledge.
                </p>

            </div>


            <!-- Business Guidance -->

            <div class="about-feature-card">

                <img
                    src="images/basil_bag-solid.png"
                    alt="Business Guidance"
                    class="about-feature-icon" />

                <h3>Business Guidance</h3>

                <p>
                    Support women to start
                    and grow their business.
                </p>

            </div>


            <!-- Financial Literacy -->

            <div class="about-feature-card">

                <img
                    src="images/ri_money-rupee-circle-fill.png"
                    alt="Financial Literacy"
                    class="about-feature-icon" />

                <h3>Financial Literacy</h3>

                <p>
                    Learn to manage and
                    grow your money.
                </p>

            </div>


            <!-- Government Schemes -->

            <div class="about-feature-card">

                <img
                    src="images/ri_government-fill.png"
                    alt="Government Schemes"
                    class="about-feature-icon" />

                <h3>Government Schemes</h3>

                <p>
                    Find and apply for latest
                    government schemes.
                </p>

            </div>


        </div>

    </section>

</asp:Content>