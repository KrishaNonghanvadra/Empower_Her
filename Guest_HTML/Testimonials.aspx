<%@ Page Title="Testimonials"
    Language="C#"
    MasterPageFile="~/Guest_HTML/Guest_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Testimonials.aspx.cs"
    Inherits="Empower_Her_1.Testimonials" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../Guest_CSS/testimonials_css.css"
        rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <section class="testimonials-page">

        <!-- Heading -->
        <div class="testimonials-heading">

            <h1>
                What <span>Women Say</span>
            </h1>

            <p>
                Real stories from real women.
            </p>

        </div>


        <!-- Testimonials Cards -->
        <div class="testimonials-grid">


            <!-- Testimonial 1 -->
            <div class="testimonial-card">

                <div class="quote-mark">
                    “
                </div>

                <p class="testimonial-text">
                    EmpowerHer helped me learn digital marketing
                    and grow my handmade business. Now I can earn
                    from home and support my family.
                </p>

                <div class="testimonial-user">

                    <img src="images/icon-park_women.png"
                      alt="Skill Learning"
                         class="feature-icon" />

                    <div class="user-info">

                        <h3>Priya Sharma</h3>

                        <p>Gujarat</p>

                    </div>

                </div>

                <div class="stars">
                    ★ ★ ★ ★ ★
                </div>

            </div>


            <!-- Testimonial 2 -->
            <div class="testimonial-card">

                <div class="quote-mark">
                    “
                </div>

                <p class="testimonial-text">
                    Through the courses, I gained confidence
                    and started my own embroidery business.
                    Thank you EmpowerHer!
                </p>

                <div class="testimonial-user">

                    <img src="images/icon-park_women.png"
                      alt="Skill Learning"
                         class="feature-icon" />

                    <div class="user-info">

                        <h3>Santa Devi</h3>

                        <p>Rajasthan</p>

                    </div>

                </div>

                <div class="stars">
                    ★ ★ ★ ★ 
                </div>

            </div>


            <!-- Testimonial 3 -->
            <div class="testimonial-card">

                <div class="quote-mark">
                    “
                </div>

                <p class="testimonial-text">
                    I got information about a government loan
                    scheme and started my small food business.
                    EmpowerHer is really changing lives.
                </p>

                <div class="testimonial-user">

                    <img src="images/icon-park_women.png"
                      alt="Skill Learning"
                         class="feature-icon" />

                    <div class="user-info">

                        <h3>Kavya Vekariya</h3>

                        <p>Madhya Pradesh</p>

                    </div>

                </div>

                <div class="stars">
                    ★ ★ ★ ★ 
                </div>

            </div>


        </div>

    </section>

</asp:Content>