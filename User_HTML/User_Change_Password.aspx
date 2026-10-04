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

    <link href="<%= ResolveUrl("~/User_Css/User_Change_Password.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="change-password-page">


        <!-- ================= PAGE HEADER ================= -->

        <div class="change-password-header">

            <h1>
                Change Password
            </h1>

            <p>
                Create a new password to secure your account.
            </p>

        </div>


        <!-- ================= MAIN CONTENT ================= -->

        <div class="change-password-content">


            <!-- ================= PASSWORD FORM ================= -->

            <div class="password-card">


                <!-- Current Password -->

                <div class="password-group">

                    <label>
                        Current Password
                    </label>

                    <input
                        type="password"
                        placeholder="Enter current Password" />

                </div>


                <!-- New Password -->

                <div class="password-group">

                    <label>
                        New Password
                    </label>

                    <input
                        type="password"
                        placeholder="Enter your new password" />

                </div>


                <!-- Confirm Password -->

                <div class="password-group">

                    <label>
                        Conform new Password
                    </label>

                    <input
                        type="password"
                        placeholder="Conform new password" />

                </div>


                <!-- Update Button -->

                <button
                    type="button"
                    class="update-password-btn">

                    Update Password

                </button>


            </div>


            <!-- ================= ILLUSTRATION ================= -->

            <div class="password-image">

                <img
                    src="../User_Images/lock.png"
                    alt="Change Password" />

            </div>


        </div>


    </div>


</asp:Content>