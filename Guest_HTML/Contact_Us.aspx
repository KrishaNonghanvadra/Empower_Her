<%@ Page Title="Contact Us"
    Language="C#"
    MasterPageFile="~/Guest_HTML/Guest_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Contact_Us.aspx.cs"
    Inherits="Empower_Her_1.Contact_Us"
    UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../Guest_CSS/contact_us_css.css"
        rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <section class="contact-page">

        <div class="contact-container">

            <!-- LEFT SIDE -->
            <div class="contact-information">

                <h1>
                    Contact <span>Us</span>
                </h1>

                <p class="contact-intro">
                    We are here to help you. You can contact us anytime.
                </p>


                <!-- Address -->
                <div class="contact-item">

                    <div class="contact-icon">
                        📍
                    </div>

                    <div class="contact-details">
                        <h3>Address</h3>

                        <p>
                            407, Plot No 16, Lok Terraces,<br />
                            Sector 17, Vashi, Navi Mumbai
                        </p>
                    </div>

                </div>


                <!-- Phone -->
                <div class="contact-item">

                    <div class="contact-icon">
                        ☎
                    </div>

                    <div class="contact-details">
                        <h3>Phone</h3>

                        <p>
                            +91 99675 09876
                        </p>
                    </div>

                </div>


                <!-- Email -->
                <div class="contact-item">

                    <div class="contact-icon">
                        ✉
                    </div>

                    <div class="contact-details">
                        <h3>Email</h3>

                        <p>
                            support@empowerher.com
                        </p>
                    </div>

                </div>


                <!-- Working Hours -->
                <div class="contact-item">

                    <div class="contact-icon">
                        ◷
                    </div>

                    <div class="contact-details">
                        <h3>Working Hours</h3>

                        <p>
                            Monday - Saturday<br />
                            9:00 AM - 6:00 PM<br />
                            Sunday - <strong>Closed</strong>
                        </p>
                    </div>

                </div>


                <!-- Girl Image -->
                <div class="contact-image">

                    <img src="images/my_girl.png"
                         alt="Woman using laptop" />

                </div>

            </div>


            <!-- RIGHT SIDE -->
            <div class="contact-form">

                <div class="form-group">

                    <label>Your Name</label>
                    
                    <asp:TextBox
                        ID="txtName"
                        runat="server"
                        CssClass="contact-input"
                        placeholder="Enter your name"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="NAMETXT0" runat="server" ControlToValidate="txtName" ErrorMessage="please enter your good name" ForeColor="#FF3300">*Name is required</asp:RequiredFieldValidator>

                </div>


                <div class="form-group">

                    <label>Email Address</label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="contact-input"
                        placeholder="Enter your email">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator ID="EMAILTXT" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="#FF3300">*Email is required</asp:RequiredFieldValidator>

                    <label>
                    <asp:RegularExpressionValidator ID="EMAILTXT2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please eenter a valid email address." ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*Please enter a valid email</asp:RegularExpressionValidator>
                    </label>

                </div>


                <div class="form-group">

                    <label>Subject</label>

                    <asp:TextBox
                        ID="txtSubject"
                        runat="server"
                        CssClass="contact-input"
                        placeholder="Enter your subject">
                    </asp:TextBox>

                    <label>
                    <asp:RequiredFieldValidator ID="SUBTXT" runat="server" ControlToValidate="txtSubject" ErrorMessage="Subject is required" ForeColor="#FF3300">*Subject is required</asp:RequiredFieldValidator>
                    </label>

                </div>


                <div class="form-group">

                    <label>Message</label>

                    <asp:TextBox
                        ID="txtMessage"
                        runat="server"
                        CssClass="contact-message"
                        TextMode="MultiLine"
                        placeholder="Enter your message">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator ID="MESSAGETXT" runat="server" ControlToValidate="txtMessage" ErrorMessage="Message is required" ForeColor="#FF3300">*Message is required</asp:RequiredFieldValidator>

                </div>


<asp:Label
    ID="lblSuccessMessage"
    runat="server"
    CssClass="success-message">
</asp:Label>

<asp:Button
    ID="btnSendMessage"
    runat="server"
    Text="➤  Send Message"
    CssClass="send-message-button"
    OnClick="btnSendMessage_Click" />

            </div>

        </div>

    </section>

</asp:Content>
