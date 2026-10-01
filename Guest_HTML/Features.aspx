<%@ Page Title="Features"
    Language="C#"
    MasterPageFile="~/Guest_HTML/Guest_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Features.aspx.cs"
    Inherits="Empower_Her_1.Features" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../Guest_CSS/features_css.css"
        rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <section class="features-page">

        <!-- Heading -->
        <div class="features-heading">

            <h1>
                Our <span>Features</span>
            </h1>

            <p>
                Everything you need to learn, grow and succeed
            </p>

        </div>


        <!-- Feature Cards -->
        <div class="features-grid">


            <!-- 1. Skill Learning -->
            <div class="feature-card">

                <img src="images/healthicons_register-book.png"
                     alt="Skill Learning"
                     class="feature-icon" />

                <h3>Skill Learning</h3>

                <p>
                    Learn computer, crafts, marketing &amp; more
                    anytime &amp; anywhere.
                </p>

            </div>


            <!-- 2. Product Showcase -->
            <div class="feature-card">

                <img src="images/at-icons_shop.png"
                     alt="Product Showcase"
                     class="feature-icon" />

                <h3>Product Showcase</h3>

                <p>
                    Showcase and Sell your handmade products
                    online.
                </p>

            </div>


            <!-- 3. Government Schemes -->
            <div class="feature-card">

                <img src="images/ri_government-fill.png"
                     alt="Government Schemes"
                     class="feature-icon" />

                <h3>Government Schemes</h3>

                <p>
                    Find and apply for latest Government Schemes.
                </p>

            </div>


            <!-- 4. Financial Literacy -->
            <div class="feature-card">

                <img src="images/tdesign_money.png"
                     alt="Financial Literacy"
                     class="feature-icon" />

                <h3>Financial Literacy</h3>

                <p>
                    Learn to manage and grow your money like
                    savings and investments.
                </p>

            </div>


            <!-- 5. Notifications -->
            <div class="feature-card">

                <div class="feature-symbol notification-symbol">
                    🔔
                </div>

                <h3>Notifications</h3>

                <p>
                    Stay updated with important updates and
                    alerts.
                </p>

            </div>


            <!-- 6. Testimonials -->
            <div class="feature-card">

                <div class="feature-symbol testimonial-symbol">
                    ☆
                </div>

                <h3>Testimonials</h3>

                <p>
                    You can review our work and let us know
                    how much you are liking.
                </p>

            </div>


        </div>

    </section>

</asp:Content>