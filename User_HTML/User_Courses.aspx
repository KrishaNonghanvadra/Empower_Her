<%@ Page Title="Courses"
    Language="C#"
    MasterPageFile="~/User_HTML/User_Master_Page.Master"
    AutoEventWireup="true"
    CodeBehind="User_Courses.aspx.cs"
    Inherits="Empower_Her_1.User_HTML.User_Courses" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/User_CSS/User_Courses.css") %>"
        rel="stylesheet" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="courses-page">


        <!-- ================= PAGE HEADER ================= -->

        <div class="courses-header">

            <h1>
                Courses
            </h1>

            <p>
                Manage learning courses and modules
            </p>

        </div>


        <!-- ================= SEARCH ================= -->

        <div class="course-search">

            <span class="search-icon">
                ⌕
            </span>

            <input
                type="text"
                placeholder="Search courses....." />

        </div>


        <!-- ================= COURSE LIST ================= -->

        <div class="courses-container">


            <div class="courses-grid">


                <!-- COURSE 1 -->

                <div class="course-card">

                    <img
                        src="../User_Images/courses_image1.jpg.png"
                        alt="Computer Skills" />

                    <div class="course-info">

                        <h3>
                            Computer skills
                        </h3>

                        <p class="youtube-title">
                            Youtube link:
                        </p>

                        <a href="#"
                           class="youtube-link">

                            https://youtu.be/m2T
                            yhaFIOY?si=M_q2N
                            RaWZvxkbBw

                        </a>

                    </div>

                </div>


                <!-- COURSE 2 -->

                <div class="course-card">

                    <img
                        src="../Images/computer-course.jpg"
                        alt="Computer Skills" />

                    <div class="course-info">

                        <h3>
                            Computer skills
                        </h3>

                        <p class="youtube-title">
                            Youtube link:
                        </p>

                        <a href="#"
                           class="youtube-link">

                            https://youtu.be/m2T
                            yhaFIOY?si=M_q2N
                            RaWZvxkbBw

                        </a>

                    </div>

                </div>


                <!-- COURSE 3 -->

                <div class="course-card">

                    <img
                        src="../Images/computer-course.jpg"
                        alt="Computer Skills" />

                    <div class="course-info">

                        <h3>
                            Computer skills
                        </h3>

                        <p class="youtube-title">
                            Youtube link:
                        </p>

                        <a href="#"
                           class="youtube-link">

                            https://youtu.be/m2T
                            yhaFIOY?si=M_q2N
                            RaWZvxkbBw

                        </a>

                    </div>

                </div>


                <!-- COURSE 4 -->

                <div class="course-card">

                    <img
                        src="../Images/computer-course.jpg"
                        alt="Computer Skills" />

                    <div class="course-info">

                        <h3>
                            Computer skills
                        </h3>

                        <p class="youtube-title">
                            Youtube link:
                        </p>

                        <a href="#"
                           class="youtube-link">

                            https://youtu.be/m2T
                            yhaFIOY?si=M_q2N
                            RaWZvxkbBw

                        </a>

                    </div>

                </div>


                <!-- COURSE 5 -->

                <div class="course-card">

                    <img
                        src="../Images/computer-course.jpg"
                        alt="Computer Skills" />

                    <div class="course-info">

                        <h3>
                            Computer skills
                        </h3>

                        <p class="youtube-title">
                            Youtube link:
                        </p>

                        <a href="#"
                           class="youtube-link">

                            https://youtu.be/m2T
                            yhaFIOY?si=M_q2N
                            RaWZvxkbBw

                        </a>

                    </div>

                </div>


                <!-- COURSE 6 -->

                <div class="course-card">

                    <img
                        src="../Images/computer-course.jpg"
                        alt="Computer Skills" />

                    <div class="course-info">

                        <h3>
                            Computer skills
                        </h3>

                        <p class="youtube-title">
                            Youtube link:
                        </p>

                        <a href="#"
                           class="youtube-link">

                            https://youtu.be/m2T
                            yhaFIOY?si=M_q2N
                            RaWZvxkbBw

                        </a>

                    </div>

                </div>


            </div>


        </div>


    </div>


</asp:Content>