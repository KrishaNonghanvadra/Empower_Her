<%@ Page Title="Change Password"
    Language="C#"
    MasterPageFile="~/User_HTML/User_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="User_Change_Password.aspx.cs"
    Inherits="Empower_Her_1.User_HTML.User_Change_Password" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/User_CSS/User_Change_Password.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="change-password-page">

        <!-- PAGE HEADER -->

        <div class="change-password-header">

            <h1>Change Password</h1>

            <p>
                Create a new password to secure your account.
            </p>

        </div>


        <!-- PASSWORD SECTION -->

        <div class="password-section">

            <!-- PASSWORD FORM -->

            <div class="password-form">

                <!-- Current Password -->

                <div class="form-group">

                    <label>Current Password</label>

                    <input type="password"
                        class="password-input"
                        placeholder="Enter current Password" />

                </div>


                <!-- New Password -->

                <div class="form-group">

                    <label>New Password</label>

                    <input type="password"
                        class="password-input"
                        placeholder="Enter your new password" />

                </div>


                <!-- Confirm Password -->

                <div class="form-group">

                    <label>Confirm new Password</label>

                    <input type="password"
                        class="password-input"
                        placeholder="Confirm new password" />

                </div>


                <!-- Update Button -->

                <button type="button"
                    class="update-password-btn">

                    Update Password

                </button>

            </div>


            <!-- IMAGE -->

            <div class="password-image">

                <img src="../User_Images/lock.png"
                    alt="Change Password" />

            </div>

        </div>

    </div>

</asp:Content>