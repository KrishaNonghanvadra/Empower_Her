<%@ Page Title="Edit Profile"
    Language="C#"
    MasterPageFile="~/User_HTML/User_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="User_Edit_Profile.aspx.cs"
    Inherits="Empower_Her_1.User_HTML.User_Edit_Profile" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/User_Css/User_Edit_Profile.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="edit-profile-page">


        <!-- ================= PAGE HEADER ================= -->

        <div class="edit-profile-header">

            <h1>
                Edit Profile
            </h1>

            <p>
                Update your personal information.
            </p>

        </div>


        <!-- ================= FORM CARD ================= -->

        <div class="edit-profile-card">


            <!-- LEFT COLUMN -->

            <div class="form-column">


                <!-- Full Name -->

                <div class="form-group">

                    <label>
                        Full Name
                    </label>

                    <input
                        type="text"
                        value="Krisha patel" id="name" aria-orientation="vertical" />

                </div>


                <!-- Email -->

                <div class="form-group">

                    <label>
                        Email
                    </label>

                    <input
                        type="email"
                        value="Krisha123@gmail.com" />

                </div>


                <!-- Phone Number -->

                <div class="form-group">

                    <label>
                        Phone Number
                    </label>

                    <input
                        type="text"
                        value="+91 8888897548" />

                </div>


                <!-- Gender -->

                <div class="form-group">

                    <label>
                        Gender
                    </label>

                    <input
                        type="text"
                        value="Female" />

                </div>


            </div>


            <!-- RIGHT COLUMN -->

            <div class="form-column">


                <!-- Date of Birth -->

                <div class="form-group">

                    <label>
                        Date Of Birth
                    </label>

                    <input
                        type="text"
                        value="24/24/0098" />

                </div>


                <!-- Village / City -->

                <div class="form-group">

                    <label>
                        Village/ City
                    </label>

                    <input
                        type="text"
                        value="Rajkot" />

                </div>


                <!-- State -->

                <div class="form-group">

                    <label>
                        State
                    </label>

                    <input
                        type="text"
                        value="Gujarat" />

                </div>


                <!-- Pincode -->

                <div class="form-group">

                    <label>
                        Pincode
                    </label>

                    <input
                        type="text"
                        value="364710" />

                </div>


            </div>


            <!-- BUTTONS -->

            <div class="form-buttons">

                <a href="User_My_Profile.aspx"
                   class="cancel-btn">

                    Cancel

                </a>


                <button
                    type="button"
                    class="save-btn"
                    onclick="window.location.href='User_My_Profile.aspx';">

                    Save Changes

                </button>

            </div>


        </div>


    </div>


</asp:Content>