<%@ Page Title="My Profile"
    Language="C#"
    MasterPageFile="~/User_HTML/User_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="User_My_Profile.aspx.cs"
    Inherits="Empower_Her_1.User_HTML.User_My_Profile" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/User_CSS/User_My_Profile.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="profile-page">


        <!-- ================= PAGE TITLE ================= -->

        <div class="profile-header">

            <h1>
                My Profile
            </h1>

        </div>


        <!-- ================= PROFILE CARD ================= -->

        <div class="profile-card">


            <!-- TOP SECTION -->

            <div class="profile-top">


                <!-- PROFILE IMAGE -->

                <div class="profile-photo">

                    <img
                        src="../User_Images/user_profile.png"
                        alt="Krisha Patel" />

                </div>


                <!-- USER INFORMATION -->

                <div class="profile-info">

                    <h3>
                        Krisha Patel
                    </h3>

                    <p>
                        krisha123@gmail.com
                    </p>

                    <p>
                        +91 8888887771
                    </p>

                    <p>
                        Botad, Gujarat
                    </p>

                </div>


                <!-- EDIT BUTTON -->

                <div class="profile-edit">

                    <a href="User_Edit_Profile.aspx"
                       class="edit-profile-btn">

                        Edit Profile

                    </a>

                </div>


            </div>


            <!-- DIVIDER -->

            <div class="profile-divider">
            </div>


            <!-- ABOUT SECTION -->

            <div class="profile-about">


                <div class="about-text">

                    <h2>
                        About Me
                    </h2>

                    <p>
                        I love learning new skills and creating handmade products.
                    </p>

                    <p>
                        I aim to become a successful entrepreneur and help other women.
                    </p>

                </div>


                <!-- JOINED DATE -->

                <div class="joined-date">

                    <h3>
                        Joined On
                    </h3>

                    <p>
                        15 March 2026
                    </p>

                </div>


            </div>

        </div>
    </div>
</asp:Content>