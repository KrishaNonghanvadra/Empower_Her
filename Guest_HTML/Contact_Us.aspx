<%@ Page Title="Contact Us"
    Language="C#"
    MasterPageFile="~/Guest_HTML/Guest_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Contact_Us.aspx.cs"
    Inherits="Empower_Her_1.Contact_Us" %>

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
                        placeholder="Enter your name">
                    </asp:TextBox>

                </div>


                <div class="form-group">

                    <label>Email Address</label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="contact-input"
                        placeholder="Enter your email">
                    </asp:TextBox>

                </div>


                <div class="form-group">

                    <label>Subject</label>

                    <asp:TextBox
                        ID="txtSubject"
                        runat="server"
                        CssClass="contact-input"
                        placeholder="Enter your subject">
                    </asp:TextBox>

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

                </div>


                <asp:Button
                    ID="btnSendMessage"
                    runat="server"
                    Text="➤  Send Message"
                    CssClass="send-message-button" />

            </div>

        </div>

    </section>

</asp:Content>
