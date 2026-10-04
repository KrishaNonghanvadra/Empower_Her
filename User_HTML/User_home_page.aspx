<%@ Page Title="Dashboard"
    Language="C#"
    MasterPageFile="~/User_HTML/User_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="User_home_page.aspx.cs"
    Inherits="Empower_Her_1.User_HTML.User_home_page" %>


<!-- PAGE CSS -->
<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/User_CSS/User_home_page.css") %>"
          rel="stylesheet" />

</asp:Content>


<!-- PAGE BODY -->
<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="dashboard">

        <!-- Dashboard Title -->
        <h1>Dashboard</h1>


        <!-- Welcome Section -->
        <div class="welcome-box">

            <div class="welcome-text">

                <h2>Welcome back, krisha!</h2>

                <p>
                    Keep learning keep growing and<br />
                    be an inspiration.
                </p>

                <button type="button">
                    Keep Learning
                </button>

            </div>

            <div class="welcome-image">

                <img src="../Images/dashboard-welcome.png"
                     alt="Welcome" />

            </div>

        </div>


        <!-- Statistics -->
        <div class="dashboard-stats">

            <!-- My Learning -->
            <div class="stat-card">

                <h3>My Learning</h3>

                <div class="stat-number">
                    5

                    <span class="stat-icon">📖</span>
                </div>

                <p>Courses Enrolled</p>

            </div>


            <!-- Products -->
            <div class="stat-card">

                <h3>Products</h3>

                <div class="stat-number">
                    6

                    <span class="stat-icon">📖</span>
                </div>

                <p>Products Listed</p>

            </div>


            <!-- Schemes -->
            <div class="stat-card">

                <h3>Schemes</h3>

                <div class="stat-number">
                    4

                    <span class="stat-icon">🏛</span>
                </div>

                <p>Schemes Available</p>

            </div>


            <!-- Courses -->
            <div class="stat-card">

                <h3>Courses</h3>

                <div class="stat-number">
                    6

                    <span class="stat-icon">📖</span>
                </div>

                <p>Courses Available</p>

            </div>

        </div>


        <!-- Bottom Section -->
        <div class="dashboard-bottom">


            <!-- Continue Learning -->
            <div class="continue-learning">

                <h2>Continue Learning</h2>

                <div class="learning-card">

                    <img src="../Images/embroidery.jpg"
                         alt="Embroidery Basics" />

                    <div class="learning-info">

                        <h3>Embroidery Basics</h3>

                        <p>
                            Learn beautiful embroidery<br />
                            Step by step
                        </p>

                    </div>

                    <button type="button">
                        Continue
                    </button>

                </div>

            </div>


            <!-- Recent Notifications -->
            <div class="recent-notifications">

                <div class="notification-title">

                    <h2>Recent Notifications</h2>

                    <a href="#">View All</a>

                </div>


                <div class="notification-item">

                    <p>
                        New scheme “PM Mudra Loan” added
                    </p>

                    <span>2 hours ago</span>

                </div>


                <div class="notification-item">

                    <p>
                        Your product “Handmade Bag” is approved
                    </p>

                    <span>1 day ago</span>

                </div>


                <div class="notification-item">

                    <p>
                        New course “Digital Marketing Basics” added
                    </p>

                    <span>2 days ago</span>

                </div>

            </div>

        </div>

    </div>

</asp:Content>