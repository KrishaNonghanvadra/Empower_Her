<%@ Page Title="Government Schemes"
    Language="C#"
    MasterPageFile="~/User_HTML/User_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="User_Government_Schemes.aspx.cs"
    Inherits="Empower_Her_1.User_HTML.User_Government_Schemes" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/User_CSS/User_Government_Schemes.css") %>"
        rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="schemes-page">

        <div class="schemes-header">

            <h1>Government Schemes</h1>

            <p>
                Explore government schemes for women empowerment.
            </p>

        </div>


        <div class="scheme-search">

            <span class="search-icon">⌕</span>

            <input
                type="text"
                placeholder="Search products....." />

        </div>


        <div class="schemes-list">


            <div class="scheme-card">

                <div class="scheme-image">

                    <img
                        src="../Images/mudra-loan.png"
                        alt="PM Mudra Loan" />

                </div>

                <div class="scheme-info">

                    <h3>PM Mudra Loan</h3>

                    <p>
                        Collateral-free loans up to $10 lakh
                        for women entrepreneurs.
                    </p>

                    <span class="scheme-category">
                        Loan Schemes
                    </span>

                </div>

            </div>


            <div class="scheme-card">

                <div class="scheme-image">

                    <img
                        src="../Images/mudra-loan.png"
                        alt="PM Mudra Loan" />

                </div>

                <div class="scheme-info">

                    <h3>PM Mudra Loan</h3>

                    <p>
                        Collateral-free loans up to $10 lakh
                        for women entrepreneurs.
                    </p>

                    <span class="scheme-category">
                        Loan Schemes
                    </span>

                </div>

            </div>


            <div class="scheme-card">

                <div class="scheme-image">

                    <img
                        src="../Images/mudra-loan.png"
                        alt="PM Mudra Loan" />

                </div>

                <div class="scheme-info">

                    <h3>PM Mudra Loan</h3>

                    <p>
                        Collateral-free loans up to $10 lakh
                        for women entrepreneurs.
                    </p>

                    <span class="scheme-category">
                        Loan Schemes
                    </span>

                </div>

            </div>


            <div class="scheme-card">

                <div class="scheme-image">

                    <img
                        src="../Images/mudra-loan.png"
                        alt="PM Mudra Loan" />

                </div>

                <div class="scheme-info">

                    <h3>PM Mudra Loan</h3>

                    <p>
                        Collateral-free loans up to $10 lakh
                        for women entrepreneurs.
                    </p>

                    <span class="scheme-category">
                        Loan Schemes
                    </span>

                </div>

            </div>


        </div>

    </div>

</asp:Content>