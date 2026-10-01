<%@ Page Title="Notifications"
    Language="C#"
    MasterPageFile="~/User_HTML/User_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="User_Notifications.aspx.cs"
    Inherits="Empower_Her_1.User_HTML.User_Notifications" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/User_Css/User_Notifications.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="notifications-page">


        <!-- ================= PAGE HEADER ================= -->

        <div class="notifications-header">

            <h1>
                Notifications
            </h1>

            <p>
                Stay updated with the latest alerts and updates.
            </p>

        </div>


        <!-- ================= NOTIFICATIONS LIST ================= -->

        <div class="notifications-list">


            <!-- Notification 1 -->

            <div class="notification-item">

                <div class="notification-icon">
                    ♧
                </div>

                <div class="notification-message">

                    <p>
                        Yor product "Handmade Bag" has been approved.
                    </p>

                </div>

                <div class="notification-time">
                    2 hours ago
                </div>

            </div>


            <!-- Notification 2 -->

            <div class="notification-item">

                <div class="notification-icon">
                    ♧
                </div>

                <div class="notification-message">

                    <p>
                        New government scheme "PM Mudra Loan" added.
                    </p>

                </div>

                <div class="notification-time">
                    1 days ago
                </div>

            </div>


            <!-- Notification 3 -->

            <div class="notification-item">

                <div class="notification-icon">
                    ♧
                </div>

                <div class="notification-message">

                    <p>
                        New course "Digital Marketing Basics" is now available.
                    </p>

                </div>

                <div class="notification-time">
                    2 days ago
                </div>

            </div>


            <!-- Notification 4 -->

            <div class="notification-item">

                <div class="notification-icon">
                    ♧
                </div>

                <div class="notification-message">

                    <p>
                        Embroidery Workshop on 20 May 2026.
                    </p>

                </div>

                <div class="notification-time">
                    3 days ago
                </div>

            </div>


            <!-- Notification 5 -->

            <div class="notification-item">

                <div class="notification-icon">
                    ♧
                </div>

                <div class="notification-message">

                    <p>
                        Your certificate for "Embroidery Basics" is ready.
                    </p>

                </div>

                <div class="notification-time">
                    5 days ago
                </div>

            </div>


        </div>


    </div>


</asp:Content>