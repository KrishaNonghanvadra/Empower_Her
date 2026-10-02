using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empower_Her_1.Admin_HTML
{
    public partial class Admin_courses_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCourses();
            }
        }


        private void LoadCourses()
        {
            var courses = new[]
            {
                new
                {
                    Id = 1,
                    CourseTitle = "Basic Computer Skills",
                    Category = "Computer training",
                    Lessons = 12,
                    Enrolled = 245,
                    Status = "Active"
                },

                new
                {
                    Id = 2,
                    CourseTitle = "Digital Marketing",
                    Category = "Marketing",
                    Lessons = 10,
                    Enrolled = 180,
                    Status = "Active"
                },

                new
                {
                    Id = 3,
                    CourseTitle = "Financial Literacy",
                    Category = "Finance",
                    Lessons = 8,
                    Enrolled = 210,
                    Status = "Active"
                },

                new
                {
                    Id = 4,
                    CourseTitle = "Entrepreneurship Basics",
                    Category = "Business",
                    Lessons = 15,
                    Enrolled = 156,
                    Status = "Active"
                }
            };


            gvCourses.DataSource = courses;

            gvCourses.DataBind();
        }


        protected void btnAddCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_add_course.aspx");
        }


        protected void gvCourses_RowCommand(
            object sender,
            GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditCourse")
            {
                int courseId = Convert.ToInt32(e.CommandArgument);

                // Edit course functionality will be added later.
            }


            if (e.CommandName == "DeleteCourse")
            {
                int courseId = Convert.ToInt32(e.CommandArgument);

                // Delete course functionality will be added later.
            }
        }
    }
}