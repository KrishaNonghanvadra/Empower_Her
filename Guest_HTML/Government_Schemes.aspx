
<%@ Page Title="Government Schemes"
    Language="C#"
    MasterPageFile="~/Guest_HTML/Guest_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="Government_Schemes.aspx.cs"
    Inherits="Empower_Her_1.Government_Schemes" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../Guest_CSS/government_schemes_css.css"
        rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <section class="schemes-page">

        <!-- PAGE HEADING -->

        <div class="schemes-heading">

            <h1>
                Government <span>Schemes</span>
            </h1>

            <p>
                Explore various government schemes for women empowerment.
            </p>

        </div>


        <!-- SEARCH AND CATEGORY FILTER -->

        <div class="scheme-filter">

            <div class="search-area">

                <span class="search-icon">⌕</span>

                <asp:TextBox
                    ID="txtSearch"
                    runat="server"
                    CssClass="search-input"
                    placeholder="Search schemes...">
                </asp:TextBox>

            </div>

            <asp:DropDownList
                ID="ddlCategory"
                runat="server"
                CssClass="category-dropdown">

                <asp:ListItem
                    Text="All Categories"
                    Value="All">
                </asp:ListItem>

                <asp:ListItem
                    Text="Loan Schemes"
                    Value="Loan">
                </asp:ListItem>

                <asp:ListItem
                    Text="Skill Development"
                    Value="Skill">
                </asp:ListItem>

                <asp:ListItem
                    Text="Women Empowerment"
                    Value="Women">
                </asp:ListItem>

            </asp:DropDownList>

        </div>


        <!-- NO RESULTS MESSAGE -->

        <div id="noSchemesMessage"
            style="display:none; text-align:center; padding:25px;">

            No schemes found. Try another search or category.

        </div>


        <!-- GOVERNMENT SCHEME CARDS -->

        <div class="schemes-grid" id="schemesGrid">


            <!-- PM MUDRA YOJANA -->

            <div class="scheme-card" data-category="Loan">

                <div class="scheme-icon mudra-icon">
                    ₹
                </div>

                <div class="scheme-content">

                    <h3>PM Mudra Yojana</h3>

                    <p>
                        Offers collateral-free micro-loans
                        to women starting or expanding
                        small businesses.
                    </p>

                </div>

            </div>


            <!-- SKILL INDIA MISSION -->

            <div class="scheme-card" data-category="Skill">

                <div class="scheme-icon skill-icon">
                    ▣
                </div>

                <div class="scheme-content">

                    <h3>Skill India Mission</h3>

                    <p>
                        It offers free or low-cost vocational
                        training and 30% reservation in ITIs,
                        and has trained over 35 million women
                        in traditional.
                    </p>

                </div>

            </div>


            <!-- STAND-UP INDIA -->

            <div class="scheme-card" data-category="Loan">

                <div class="scheme-icon standup-icon">
                    ♧
                </div>

                <div class="scheme-content">

                    <h3>Stand-Up India</h3>

                    <p>
                        Provides bank loans between ₹10 lakh
                        and ₹1 crore specifically to women
                        entrepreneurs.
                    </p>

                </div>

            </div>


            <!-- MAHILA E-HAAT -->

            <div class="scheme-card" data-category="Women">

                <div class="scheme-icon ehaat-icon">
                    🛒
                </div>

                <div class="scheme-content">

                    <h3>Mahila E-Haat</h3>

                    <p>
                        Extends micro-finance and skill training
                        to women from backward and disadvantaged
                        backgrounds.
                    </p>

                </div>

            </div>


            <!-- BETI BACHAO BETI PADHAO -->

            <div class="scheme-card" data-category="Women">

                <div class="scheme-icon beti-icon">
                    👧
                </div>

                <div class="scheme-content">

                    <h3>Beti Bachao Beti Padhao</h3>

                    <p>
                        Promotes, protection, and education of
                        the girl child to prevent gender bias
                        and prevent gender-biased sex selection.
                    </p>

                </div>

            </div>


            <!-- NATIONAL RURAL LIVELIHOOD MISSION -->

            <div class="scheme-card" data-category="Women">

                <div class="scheme-icon nrlm-icon">
                    ♟
                </div>

                <div class="scheme-content">

                    <h3>National Rural Livelihood Mission</h3>

                    <p>
                        It organizes rural poor women into
                        Self-Help Groups (SHGs), providing
                        bank credit links and skill development.
                    </p>

                </div>

            </div>


        </div>

    </section>


    <!-- SEARCH AND CATEGORY FILTER FUNCTIONALITY -->

    <script>
(function() {

    var searchBox = document.getElementById(
                '<%= txtSearch.ClientID %>'
            );

            var categoryDropdown = document.getElementById(
                '<%= ddlCategory.ClientID %>'
            );

            var schemeCards = document.querySelectorAll(
                '#schemesGrid .scheme-card'
            );

            var noResults = document.getElementById(
                'noSchemesMessage'
            );

            function filterSchemes() {

                var searchText = searchBox.value
                    .toLowerCase()
                    .trim();

                var selectedCategory = categoryDropdown.value;

                var visibleCount = 0;

                schemeCards.forEach(function (card) {

                    var cardText = card.textContent.toLowerCase();

                    var cardCategory = card.getAttribute(
                        'data-category'
                    );

                    var matchesSearch =
                        cardText.indexOf(searchText) !== -1;

                    var matchesCategory =
                        selectedCategory === 'All' ||
                        cardCategory === selectedCategory;

                    if (matchesSearch && matchesCategory) {

                        card.style.display = '';

                        visibleCount++;

                    } else {

                        card.style.display = 'none';

                    }

                });

                noResults.style.display =
                    visibleCount === 0 ? 'block' : 'none';

            }

            searchBox.addEventListener(
                'input',
                filterSchemes
            );

            categoryDropdown.addEventListener(
                'change',
                filterSchemes
            );

        })();
    </script>

</asp:Content>
