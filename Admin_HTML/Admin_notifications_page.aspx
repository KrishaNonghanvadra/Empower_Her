<%@ Page Title="Notifications"
    Language="C#"
    MasterPageFile="~/Admin_HTML/Admin_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Admin_notifications_page.aspx.cs"
    Inherits="Empower_Her_1.Admin_HTML.Admin_notifications_page" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/Admin_CSS/admin_notifications_page_css.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="notification-container">


        <!-- Page Header -->

        <div class="notification-title">

            <h2>Send Notifications</h2>

            <p>send notification to all user</p>

        </div>


        <div class="notification-content">


            <!-- LEFT FORM -->

            <div class="notification-form">


                <!-- Title -->

                <div class="form-group">

                    <asp:Label
                        ID="lblTitle"
                        runat="server"
                        Text="Title"
                        CssClass="form-label">
                    </asp:Label>


                    <asp:TextBox
                        ID="txtTitle"
                        runat="server"
                        CssClass="notification-input"
                        placeholder="Enter notification title">
                    </asp:TextBox>

                </div>


                <!-- Message -->

                <div class="form-group">

                    <asp:Label
                        ID="lblMessage"
                        runat="server"
                        Text="Message"
                        CssClass="form-label">
                    </asp:Label>


                    <asp:TextBox
                        ID="txtMessage"
                        runat="server"
                        CssClass="notification-message"
                        TextMode="MultiLine"
                        Rows="5"
                        placeholder="Enter notification message">
                    </asp:TextBox>

                </div>


                <!-- Type -->

                <div class="form-group small-group">

                    <asp:Label
                        ID="lblType"
                        runat="server"
                        Text="Type"
                        CssClass="form-label">
                    </asp:Label>


                    <asp:DropDownList
                        ID="ddlType"
                        runat="server"
                        CssClass="notification-dropdown">

                        <asp:ListItem Text="General"
                            Value="General">
                        </asp:ListItem>

                        <asp:ListItem Text="Course"
                            Value="Course">
                        </asp:ListItem>

                        <asp:ListItem Text="Government Scheme"
                            Value="Government Scheme">
                        </asp:ListItem>

                        <asp:ListItem Text="Financial Literacy"
                            Value="Financial Literacy">
                        </asp:ListItem>

                        <asp:ListItem Text="Important"
                            Value="Important">
                        </asp:ListItem>

                    </asp:DropDownList>

                </div>


                <!-- Send To -->

                <div class="form-group small-group">

                    <asp:Label
                        ID="lblSendTo"
                        runat="server"
                        Text="Send To"
                        CssClass="form-label">
                    </asp:Label>


                    <asp:DropDownList
                        ID="ddlSendTo"
                        runat="server"
                        CssClass="notification-dropdown">

                        <asp:ListItem Text="All Users"
                            Value="All Users">
                        </asp:ListItem>

                        <asp:ListItem Text="Active Users"
                            Value="Active Users">
                        </asp:ListItem>

                        <asp:ListItem Text="Course Students"
                            Value="Course Students">
                        </asp:ListItem>

                    </asp:DropDownList>

                </div>


                <!-- Send Button -->

                <asp:Button
                    ID="btnSendNotification"
                    runat="server"
                    Text="Send Notification"
                    CssClass="send-notification-btn"
                    OnClick="btnSendNotification_Click" />


                <!-- Message -->

                <asp:Label
                    ID="lblResult"
                    runat="server"
                    CssClass="notification-result">
                </asp:Label>


            </div>


            <!-- RIGHT ILLUSTRATION -->

            <div class="notification-image">

                <img
                    src="../Admin_Images/notification.png"
                    alt="Send Notification" />

            </div>


        </div>

    </div>

</asp:Content>
