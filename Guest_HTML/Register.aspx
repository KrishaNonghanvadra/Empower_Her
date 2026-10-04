<%@ Page Title="Register"
    Language="C#"
    MasterPageFile="~/Guest_HTML/Guest_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Register.aspx.cs"
    Inherits="Empower_Her_1.Register"
    UnobtrusiveValidationMode="None" %>

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



                <!-- =========================
                     ROW 1
                     Full Name + Village/City
                     ========================= -->

                <div class="form-row">


                    <!-- Full Name -->

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

                        <asp:RequiredFieldValidator
                            ID="NAMETXT"
                            runat="server"
                            ControlToValidate="txtFullName"
                            ErrorMessage="Full Name is required."
                            ForeColor="#FF3300">
                            *Full Name is required
                        </asp:RequiredFieldValidator>

                    </div>



                    <!-- Village / City -->

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

                        <asp:RequiredFieldValidator
                            ID="VCTXT"
                            runat="server"
                            ControlToValidate="txtVillageCity"
                            ErrorMessage="Village/City is required"
                            ForeColor="#FF3300">
                            *Village/City is required
                        </asp:RequiredFieldValidator>

                    </div>

                </div>



                <!-- =========================
                     ROW 2
                     Email + Password
                     ========================= -->

                <div class="form-row">


                    <!-- Email -->

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

                        <asp:RequiredFieldValidator
                            ID="EMAILTXT"
                            runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Email is required"
                            ForeColor="#FF3300">
                            *Email is required
                        </asp:RequiredFieldValidator>

                        <br />

                        <asp:RegularExpressionValidator
                            ID="EMLTXT"
                            runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Please enter valid email address"
                            ForeColor="#FF3300"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                            *Please enter valid email
                        </asp:RegularExpressionValidator>

                    </div>



                    <!-- Password -->

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

                        <asp:RequiredFieldValidator
                            ID="PassTXT"
                            runat="server"
                            ControlToValidate="txtPassword"
                            ErrorMessage="Password is required"
                            ForeColor="#FF3300">
                            *Password is required
                        </asp:RequiredFieldValidator>

                        <br />

                        <asp:RegularExpressionValidator
                            ID="PASSWORDTXT"
                            runat="server"
                            ControlToValidate="txtPassword"
                            ErrorMessage="Password must contain at least 8 characters, one uppercase letter, one lowercase letter, one number and one special character."
                            ForeColor="#FF3300"
                            ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[^A-Za-z0-9]).{8,}$">
                            *Password must contain 8+ characters, uppercase, lowercase, number &amp; special character
                        </asp:RegularExpressionValidator>

                    </div>

                </div>



                <!-- =========================
                     ROW 3
                     Mobile + Confirm Password
                     ========================= -->

                <div class="form-row">


                    <!-- Mobile Number -->

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

                        <asp:RequiredFieldValidator
                            ID="MNTXT"
                            runat="server"
                            ControlToValidate="txtMobile"
                            ErrorMessage="Mobile number is required"
                            ForeColor="#FF3300">
                            *Mobile number is required
                        </asp:RequiredFieldValidator>

                        <br />

                        <asp:RegularExpressionValidator
                            ID="RegularExpressionValidator1"
                            runat="server"
                            ControlToValidate="txtMobile"
                            ErrorMessage="Please enter a valid 10-digit mobile number."
                            ForeColor="#FF3300"
                            ValidationExpression="^[0-9]{10}$">
                            *Enter a valid 10-digit mobile number
                        </asp:RegularExpressionValidator>

                    </div>



                    <!-- Confirm Password -->

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

                        <asp:RequiredFieldValidator
                            ID="CPTXT"
                            runat="server"
                            ControlToValidate="txtConfirmPassword"
                            ErrorMessage="Confirm Password is required."
                            ForeColor="#FF3300">
                            *Confirm Password is required
                        </asp:RequiredFieldValidator>

                        <br />

                        <asp:CompareValidator
                            ID="CONFMTXT"
                            runat="server"
                            ControlToCompare="txtPassword"
                            ControlToValidate="txtConfirmPassword"
                            ErrorMessage="Passwords do not match."
                            ForeColor="#FF3300">
                            *Passwords do not match
                        </asp:CompareValidator>

                    </div>

                </div>



                <!-- =========================
                     REGISTER BUTTON
                     ========================= -->

                <asp:Button
    ID="btnRegister"
    runat="server"
    Text="Register"
    CssClass="register-button"
    OnClick="btnRegister_Click" />



                <!-- =========================
                     LOGIN LINK
                     ========================= -->

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