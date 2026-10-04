<%@ Page Title="Financial Literacy"
    Language="C#"
    MasterPageFile="~/User_HTML/User_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="User_Financial_Literacy.aspx.cs"
    Inherits="Empower_Her_1.User_HTML.User_Financial_Literacy" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/User_Css/User_Financial_Literacy.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="financial-page">


        <!-- ================= PAGE HEADER ================= -->

        <div class="financial-header">

            <h1>
                Financial Literacy
            </h1>

            <p>
                Learn how to manage your money wisely.
            </p>

        </div>


        <!-- ================= FINANCIAL CATEGORIES ================= -->

        <div class="financial-categories">


            <!-- Savings -->

            <div class="financial-card savings-card">

                <div class="financial-icon">
                    🐷
                </div>

                <h3>
                    Savings
                </h3>

                <p>
                    Learn to solve<br />
                    money for your<br />
                    future
                </p>

            </div>


            <!-- Banking -->

            <div class="financial-card banking-card">

                <div class="financial-icon">
                    🏦
                </div>

                <h3>
                    Banking
                </h3>

                <p>
                    Understand<br />
                    banking services<br />
                    and accounts.
                </p>

            </div>


            <!-- Investments -->

            <div class="financial-card investment-card">

                <div class="financial-icon">
                    💹
                </div>

                <h3>
                    Investments
                </h3>

                <p>
                    Grow your money<br />
                    with smart<br />
                    investments.
                </p>

            </div>


            <!-- Insurance -->

            <div class="financial-card insurance-card">

                <div class="financial-icon">
                    🛡
                </div>

                <h3>
                    Insurance
                </h3>

                <p>
                    Protect yourself<br />
                    and your family<br />
                    with insurance.
                </p>

            </div>


        </div>


        <!-- ================= RECOMMENDED ================= -->

        <div class="recommended-section">

            <h2>
                Recommended for you
            </h2>


            <div class="recommended-grid">


                <!-- Course 1 -->

                <div class="recommended-card">

                    <div class="recommended-image">

                        <img
                            src="../User_Images/user_financial1.png"
                            alt="How to Save Money Daily" />

                    </div>


                    <div class="recommended-info">

                        <h3>
                            How to Save Money Daily
                        </h3>

                        <p>
                            5 Lessons
                        </p>

                    </div>

                </div>


                <!-- Course 2 -->

                <div class="recommended-card">

                    <div class="recommended-image">

                        <img
                            src="../User_Images/user_financial2.png"
                            alt="Understanding Bank Accounts" />

                    </div>


                    <div class="recommended-info">

                        <h3>
                            Understanding Bank Accounts
                        </h3>

                        <p>
                            4 Lessons
                        </p>

                    </div>

                </div>


            </div>

        </div>


    </div>


</asp:Content>