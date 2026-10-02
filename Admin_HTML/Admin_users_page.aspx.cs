using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empower_Her_1.Admin_HTML
{
    public partial class Admin_users_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUsers();
            }
        }


        private void LoadUsers()
        {
            var users = new[]
            {
                new
                {
                    Id = 1,
                    Name = "Krisha Patel",
                    Email = "krisha@gmail.com",
                    Phone = "754123685",
                    JoinedOn = "15-7-2024",
                    Status = "Active"
                },

                new
                {
                    Id = 2,
                    Name = "Priya Shah",
                    Email = "priya@gmail.com",
                    Phone = "9876543210",
                    JoinedOn = "18-7-2024",
                    Status = "Active"
                },

                new
                {
                    Id = 3,
                    Name = "Anjali Patel",
                    Email = "anjali@gmail.com",
                    Phone = "9823456712",
                    JoinedOn = "22-7-2024",
                    Status = "Active"
                },

                new
                {
                    Id = 4,
                    Name = "Meera Joshi",
                    Email = "meera@gmail.com",
                    Phone = "9012345678",
                    JoinedOn = "28-7-2024",
                    Status = "Active"
                }
            };


            gvUsers.DataSource = users;

            gvUsers.DataBind();
        }


        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            // Add User functionality will be added later.

            Response.Redirect("Admin_add_user.aspx");
        }


        protected void gvUsers_RowCommand(
            object sender,
            GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewUser")
            {
                int userId = Convert.ToInt32(e.CommandArgument);

                // View user functionality will be added later.
            }


            if (e.CommandName == "DeleteUser")
            {
                int userId = Convert.ToInt32(e.CommandArgument);

                // Delete user functionality will be added later.
            }
        }
    }
}