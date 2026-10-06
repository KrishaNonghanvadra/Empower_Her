<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="User_home_page.aspx.cs" 
    Inherits="Empower_Her_1.User_HTML.User_home_page"
    MasterPageFile="~/User_HTML/User_Master_Page.Master"
%>


<asp:Content 
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/User_Css/User_home_page.css") %>"
          rel="stylesheet" />

</asp:Content>


<asp:Content 
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="dashboard">

        <!-- TITLE -->
        <h1>Dashboard</h1>


        <!-- WELCOME BOX -->
        <div class="welcome-box">

            <div class="welcome-text">

                <h2>Welcome back, krisha!</h2>

                <p>
                    Keep learning keep growing and<br />
                    be an inspiration.
                </p>

<a href="User_Courses.aspx" class="keep-learning-btn">
    Keep Learning
</a>

            </div>

            <div class="welcome-image">

                <img src="../User_Images/girl.png"
                     alt="Welcome" />

            </div>

        </div>


        <!-- STATISTICS -->
        <div class="dashboard-stats">

            <div class="stat-card">

                <h3>My Learning</h3>

                <div class="stat-number">
                    5
                </div>

                <p>Courses Enrolled</p>

            </div>


            <div class="stat-card">

                <h3>Products</h3>

                <div class="stat-number">
                    6
                </div>

                <p>Products Listed</p>

            </div>


            <div class="stat-card">

                <h3>Schemes</h3>

                <div class="stat-number">
                    4
                </div>

                <p>Schemes Available</p>

            </div>


            <div class="stat-card">

                <h3>Courses</h3>

                <div class="stat-number">
                    6
                </div>

                <p>Courses Available</p>

            </div>

        </div>


        <!-- BOTTOM SECTION -->
        <div class="dashboard-bottom">


            <!-- CONTINUE LEARNING -->
            <div class="continue-learning">

                <h2>Continue Learning</h2>

                <div class="learning-card">

                    <img src="../User_Images/User_cources5.jpg.png"
                         alt="Embroidery Basics" />

                    <div class="learning-info">

                        <h3>Embroidery Basics</h3>

                        <p>
                            Learn beautiful embroidery<br />
                            Step by step
                        </p>

<a href="User_Courses.aspx" class="continue-btn">
    Continue
</a>

                    </div>

                </div>

            </div>


            <!-- RECENT NOTIFICATIONS -->
            <div class="recent-notifications">

                <div class="notification-title">

                    <h2>Recent Notifications</h2>

                    <a href="#">
                        View All
                    </a>

                </div>


                <div class="notification-item">

                    <p>
                        New scheme “PM Mudra Loan” added
                    </p>

                    <small>
                        2 hours ago
                    </small>

                </div>


                <div class="notification-item">

                    <p>
                        Your product “Handmade Bag” is approved
                    </p>

                    <small>
                        1 day ago
                    </small>

                </div>


                <div class="notification-item">

                    <p>
                        New course “Digital Marketing Basics” added
                    </p>

                    <small>
                        2 days ago
                    </small>

                </div>

            </div>

        </div>

    </div>

</asp:Content>