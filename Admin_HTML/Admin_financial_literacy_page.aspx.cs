using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empower_Her_1.Admin_HTML
{
    public partial class Admin_financial_literacy_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTopics();
            }
        }


        private void LoadTopics()
        {
            var topics = new[]
            {
                new
                {
                    Id = 1,
                    TopicTitle = "Savings and Budgeting",
                    Category = "Savings",
                    Status = "Active"
                },

                new
                {
                    Id = 2,
                    TopicTitle = "Understanding Loans",
                    Category = "Loans",
                    Status = "Active"
                },

                new
                {
                    Id = 3,
                    TopicTitle = "Digital Banking",
                    Category = "Banking",
                    Status = "Active"
                },

                new
                {
                    Id = 4,
                    TopicTitle = "Investment Basics",
                    Category = "Investment",
                    Status = "Active"
                }
            };


            gvTopics.DataSource = topics;

            gvTopics.DataBind();
        }


        protected void btnAddTopic_Click(object sender, EventArgs e)
        {
            // Add topic functionality will be added later.

            // If you create the add page later,
            // you can use:
            //
            // Response.Redirect("Admin_add_financial_topic.aspx");
        }


        protected void gvTopics_RowCommand(
            object sender,
            GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditTopic")
            {
                int topicId = Convert.ToInt32(e.CommandArgument);

                // Edit functionality will be added later.
            }


            if (e.CommandName == "DeleteTopic")
            {
                int topicId = Convert.ToInt32(e.CommandArgument);

                // Delete functionality will be added later.
            }
        }
    }
}