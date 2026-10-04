<%@ Page Title="Login"
    Language="C#"
    MasterPageFile="~/Guest_HTML/Guest_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="Empower_Her_1.Login" 
    UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../Guest_CSS/login_css.css"
        rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <section class="login-page">

        <div class="login-container">

            <!-- LEFT WELCOME SECTION -->

            <div class="login-welcome">

                <div class="welcome-logo">

                    <img src="images/image 5.png"
                         alt="EmpowerHer Logo" />

                    <span>EmpowerHer</span>

                </div>

                <h1>
                    Welcome Back!
                </h1>

                <p>
                    Login to continue your
                    learning and empowerment
                    journey.
                </p>

                <div class="login-image">

                    <img src="images/my_girl.png"
                         alt="Woman learning with laptop" />

                </div>

            </div>


            <!-- RIGHT LOGIN FORM -->

            <div class="login-form">

                <h2>
                    Login
                </h2>

                <p class="login-subtitle">
                    Please enter your credentials to Login...
                </p>


                <div class="login-form-group">

                    <label>
                        Email or Mobile Number
                    </label>

                    <asp:TextBox
                        ID="txtEmailMobile"
                        runat="server"
                        CssClass="login-input"
                        placeholder="Enter your email or mobile number">
                    </asp:TextBox>

                    <asp:RegularExpressionValidator ID="METXT" runat="server" ControlToValidate="txtEmailMobile" ErrorMessage="Enter a valid email or mobile number" ForeColor="#FF3300" ValidationExpression="(^[^\s@]+@[^\s@]+\.[^\s@]+$)|(^[6-9][0-9]{9}$)">*Enter a valid email or mobile number</asp:RegularExpressionValidator>
                    <br />

                    <asp:RequiredFieldValidator ID="EMTXT" runat="server" ControlToValidate="txtEmailMobile" ErrorMessage="Email or mobile number is required" ForeColor="Red">*Email or mobile number is required</asp:RequiredFieldValidator>

                </div>


                <div class="login-form-group">

                    <label>
                        Password
                    </label>

                    <div class="password-wrapper">

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            CssClass="login-input password-input"
                            TextMode="Password"
                            placeholder="Enter your password">
                        </asp:TextBox>


                        <asp:RequiredFieldValidator ID="passtxt" runat="server" ControlToValidate="txtPassword" ErrorMessage="password is required" ForeColor="#FF3300">*Password is required</asp:RequiredFieldValidator>


                   <span class="password-eye"
                    onclick="togglePassword()">

                  <img src="images/basil_eye-outline.png"
                 alt="Show Password" />

                   </span>

                    </div>

                </div>


                <asp:Button
    ID="btnLogin"
    runat="server"
    Text="Login"
    CssClass="login-button"
    OnClick="btnLogin_Click" />


                <p class="register-text">
                    Don't have an account?

                    <a href="Register.aspx">
                        Register
                    </a>
                </p>

                <!-- Password Show / Hide JavaScript -->

        <script>

            function togglePassword() {

                var password =
                    document.getElementById('<%= txtPassword.ClientID %>');

                if (password.type === "password") {

                    password.type = "text";

                }
                else {

                    password.type = "password";

                }

            }

        </script>


            </div>

        </div>

    </section>



</asp:Content>

