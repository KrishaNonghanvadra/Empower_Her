
<%@ Page Title="Change Password"
    Language="C#"
    MasterPageFile="~/User_HTML/User_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="User_Change_Password.aspx.cs"
    Inherits="Empower_Her_1.User_HTML.User_Change_Password"
    UnobtrusiveValidationMode="None"
%>

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

        <!-- PAGE HEADER -->

        <div class="change-password-header">

            <h1>Change Password</h1>

            <p>
                Create a new password to secure your account.
            </p>

        </div>


        <!-- MAIN CONTENT -->

        <div class="change-password-content">

            <!-- PASSWORD FORM -->

            <div class="password-card">

                <!-- CURRENT PASSWORD -->

                <div class="password-group">

                    <label for="<%= CP.ClientID %>">
                        Current Password
                    </label>

                    <asp:TextBox
                        ID="CP"
                        runat="server"
                        TextMode="Password"
                        placeholder="Enter current Password">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1"
                        runat="server"
                        ControlToValidate="CP"
                        ErrorMessage="Please enter your current password."
                        Text="* Please enter your current password"
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- NEW PASSWORD -->

                <div class="password-group">

                    <label for="<%= Np.ClientID %>">
                        New Password
                    </label>

                    <asp:TextBox
                        ID="Np"
                        runat="server"
                        TextMode="Password"
                        placeholder="Enter your new password">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2"
                        runat="server"
                        ControlToValidate="Np"
                        ErrorMessage="Please enter a new password."
                        Text="* Please enter a new password"
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revNewPassword"
                        runat="server"
                        ControlToValidate="Np"
                        ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[^A-Za-z0-9]).{8,}$"
                        ErrorMessage="Password must contain at least 8 characters, including uppercase, lowercase, number and special character."
                        Text="* Use 8+ characters with uppercase, lowercase, number and special character"
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- CONFIRM NEW PASSWORD -->

                <div class="password-group">

                    <label for="<%= Cnp.ClientID %>">
                        Confirm New Password
                    </label>

                    <asp:TextBox
                        ID="Cnp"
                        runat="server"
                        TextMode="Password"
                        placeholder="Confirm new password">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvConfirmPassword"
                        runat="server"
                        ControlToValidate="Cnp"
                        ErrorMessage="Please confirm your new password."
                        Text="* Please confirm your new password"
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:CompareValidator
                        ID="CompareValidator1"
                        runat="server"
                        ControlToCompare="Np"
                        ControlToValidate="Cnp"
                        Operator="Equal"
                        Type="String"
                        ErrorMessage="New passwords do not match."
                        Text="* New passwords do not match"
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:CompareValidator>

                </div>


                <!-- SUCCESS MESSAGE -->

                <asp:Label
                    ID="lblSuccessMessage"
                    runat="server"
                    ForeColor="Green"
                    EnableViewState="false">
                </asp:Label>


                <!-- UPDATE PASSWORD BUTTON -->

                <asp:Button
                    ID="btnUpdatePassword"
                    runat="server"
                    Text="Update Password"
                    CssClass="update-password-btn"
                    OnClick="btnUpdatePassword_Click" />

            </div>


            <!-- ILLUSTRATION -->

            <div class="password-image">

                <img
                    src="../User_Images/lock.png"
                    alt="Change Password" />

            </div>

        </div>

    </div>

</asp:Content>
