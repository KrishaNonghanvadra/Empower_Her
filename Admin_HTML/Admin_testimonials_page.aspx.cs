using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empower_Her_1.Admin_HTML
{
    public partial class Admin_testimonials_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTestimonials();
            }
        }


        private void LoadTestimonials()
        {
            var testimonials = new[]
            {
                new
                {
                    Id = 1,
                    UserName = "Krisha Patel",
                    Feedback = "To live happily ever after is a dream girls hold on to and then one day her dream comes true.",
                    Rating = "Active"
                },

                new
                {
                    Id = 2,
                    UserName = "Krisha Patel",
                    Feedback = "To live happily ever after is a dream girls hold on to and then one day her dream comes true.",
                    Rating = "Active"
                },

                new
                {
                    Id = 3,
                    UserName = "Krisha Patel",
                    Feedback = "To live happily ever after is a dream girls hold on to and then one day her dream comes true.",
                    Rating = "Active"
                },

                new
                {
                    Id = 4,
                    UserName = "Krisha Patel",
                    Feedback = "To live happily ever after is a dream girls hold on to and then one day her dream comes true.",
                    Rating = "Active"
                }
            };


            gvTestimonials.DataSource = testimonials;

            gvTestimonials.DataBind();
        }


        protected void gvTestimonials_RowCommand(
            object sender,
            GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditTestimonial")
            {
                int testimonialId =
                    Convert.ToInt32(e.CommandArgument);

                // Edit functionality will be added later.
            }


            if (e.CommandName == "DeleteTestimonial")
            {
                int testimonialId =
                    Convert.ToInt32(e.CommandArgument);

                // Delete functionality will be added later.
            }
        }
    }
}