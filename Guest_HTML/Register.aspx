<%@ Page Title="Register"
    Language="C#"
    MasterPageFile="~/Guest_HTML/Guest_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Register.aspx.cs"
    Inherits="Empower_Her_1.Register" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../Guest_CSS/register_css.css"
        rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <section class="register-page">

        <div class="register-container">

            <!-- =========================
                 LEFT WELCOME SECTION
                 ========================= -->

            <div class="register-welcome">

                <div class="welcome-logo">

                    <img src="images/image 5.png"
                         alt="EmpowerHer Logo" />

                    <span>EmpowerHer</span>

                </div>

                <h1>
                    Join Us Today!
                </h1>

                <p>
                    Create account &amp; start your
                    learning and empowerment journey.
                </p>

                <div class="register-image">

                    <img src="images/my_girl.png"
                         alt="Woman learning with laptop" />

                </div>

            </div>


            <!-- =========================
                 RIGHT REGISTER FORM
                 ========================= -->

            <div class="register-form">

                <h2>
                    Create Account
                </h2>

                <p class="register-subtitle">
                    Fill the details to create an account...
                </p>


                <!-- ROW 1 -->

                <div class="form-row">

                    <div class="register-form-group">

                        <label>
                            Full Name
                        </label>

                        <asp:TextBox
                            ID="txtFullName"
                            runat="server"
                            CssClass="register-input"
                            placeholder="Enter your full name">
                        </asp:TextBox>

                    </div>


                    <div class="register-form-group">

                        <label>
                            Village/City
                        </label>

                        <asp:TextBox
                            ID="txtVillageCity"
                            runat="server"
                            CssClass="register-input"
                            placeholder="Enter your village/city">
                        </asp:TextBox>

                    </div>

                </div>


                <!-- ROW 2 -->

                <div class="form-row">

                    <div class="register-form-group">

                        <label>
                            Email
                        </label>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="register-input"
                            placeholder="Enter your email">
                        </asp:TextBox>

                    </div>


                    <div class="register-form-group">

                        <label>
                            Password
                        </label>

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            CssClass="register-input"
                            TextMode="Password"
                            placeholder="Enter your password">
                        </asp:TextBox>

                    </div>

                </div>


                <!-- ROW 3 -->

                <div class="form-row">

                    <div class="register-form-group">

                        <label>
                            Mobile Number
                        </label>

                        <asp:TextBox
                            ID="txtMobile"
                            runat="server"
                            CssClass="register-input"
                            placeholder="Enter your mobile number">
                        </asp:TextBox>

                    </div>


                    <div class="register-form-group">

                        <label>
                            Confirm Password
                        </label>

                        <asp:TextBox
                            ID="txtConfirmPassword"
                            runat="server"
                            CssClass="register-input"
                            TextMode="Password"
                            placeholder="Confirm your password">
                        </asp:TextBox>

                    </div>

                </div>


                <!-- REGISTER BUTTON -->

                <asp:Button
                    ID="btnRegister"
                    runat="server"
                    Text="Register"
                    CssClass="register-button" />


                <!-- LOGIN LINK -->

                <p class="login-text">
                    Already have an account?

                    <a href="Login.aspx">
                        Login
                    </a>
                </p>

            </div>

        </div>

    </section>

</asp:Content>