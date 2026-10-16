
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empower_Her_1.Admin_HTML
{
    public partial class Admin_users_page : Page
    {
        private const string UsersSessionKey = "EmpowerHer_DemoUsers";

        // Temporary user model
        public class UserRecord
        {
            public int Id { get; set; }
            public string Name { get; set; }
            public string Email { get; set; }
            public string Phone { get; set; }
            public DateTime JoinedOn { get; set; }
            public string Status { get; set; }
        }

        private List<UserRecord> Users
        {
            get
            {
                return Session[UsersSessionKey] as List<UserRecord>;
            }
            set
            {
                Session[UsersSessionKey] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Users == null)
                {
                    Users = new List<UserRecord>
                    {
                        new UserRecord
                        {
                            Id = 1,
                            Name = "Krisha Patel",
                            Email = "krisha@gmail.com",
                            Phone = "7541236850",
                            JoinedOn = new DateTime(2024, 7, 15),
                            Status = "Active"
                        },
                        new UserRecord
                        {
                            Id = 2,
                            Name = "Priya Shah",
                            Email = "priya@gmail.com",
                            Phone = "9876543210",
                            JoinedOn = new DateTime(2024, 7, 18),
                            Status = "Active"
                        },
                        new UserRecord
                        {
                            Id = 3,
                            Name = "Anjali Patel",
                            Email = "anjali@gmail.com",
                            Phone = "9823456712",
                            JoinedOn = new DateTime(2024, 7, 22),
                            Status = "Active"
                        },
                        new UserRecord
                        {
                            Id = 4,
                            Name = "Meera Joshi",
                            Email = "meera@gmail.com",
                            Phone = "9012345678",
                            JoinedOn = new DateTime(2024, 7, 28),
                            Status = "Inactive"
                        }
                    };
                }

                BindUsers();
            }
        }

        private void BindUsers()
        {
            string search = txtSearch.Text.Trim();

            IEnumerable<UserRecord> filteredUsers = Users
                ?? new List<UserRecord>();

            if (!string.IsNullOrWhiteSpace(search))
            {
                filteredUsers = filteredUsers.Where(u =>
                    u.Name.IndexOf(
                        search, StringComparison.OrdinalIgnoreCase) >= 0 ||

                    u.Email.IndexOf(
                        search, StringComparison.OrdinalIgnoreCase) >= 0 ||

                    u.Phone.IndexOf(
                        search, StringComparison.OrdinalIgnoreCase) >= 0 ||

                    u.Status.IndexOf(
                        search, StringComparison.OrdinalIgnoreCase) >= 0);
            }

            gvUsers.DataSource = filteredUsers.ToList();
            gvUsers.DataBind();
        }

        // SEARCH
        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            BindUsers();
        }

        protected void btnClearSearch_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
            lblMessage.Text = "";
            BindUsers();
        }

        // OPEN ADD USER POPUP
        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            ClearForm();

            lblFormTitle.Text = "Add User";
            btnSaveUser.Text = "Add User";

            pnlUserForm.Visible = true;
            pnlViewUser.Visible = false;
        }

        // SAVE NEW USER OR EDIT EXISTING USER
        protected void btnSaveUser_Click(object sender, EventArgs e)
        {
            Page.Validate("UserForm");

            if (!Page.IsValid)
            {
                pnlUserForm.Visible = true;
                return;
            }

            List<UserRecord> users = Users;

            if (users == null)
            {
                users = new List<UserRecord>();
            }

            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();

            int editingId;
            bool isEditing = int.TryParse(hfUserId.Value, out editingId)
                             && editingId > 0;

            // Prevent duplicate email addresses
            bool emailExists = users.Any(u =>
                u.Email.Equals(email, StringComparison.OrdinalIgnoreCase)
                && (!isEditing || u.Id != editingId));

            if (emailExists)
            {
                pnlUserForm.Visible = true;
                lblMessage.Text = "";
                ShowEmailError();
                return;
            }

            if (isEditing)
            {
                UserRecord existingUser =
                    users.FirstOrDefault(u => u.Id == editingId);

                if (existingUser == null)
                {
                    pnlUserForm.Visible = false;
                    lblMessage.Text = "User was not found.";
                    BindUsers();
                    return;
                }

                existingUser.Name = name;
                existingUser.Email = email;
                existingUser.Phone = phone;
                existingUser.Status = ddlStatus.SelectedValue;

                lblMessage.Text = "User updated successfully.";
            }
            else
            {
                int newId = users.Count == 0
                    ? 1
                    : users.Max(u => u.Id) + 1;

                users.Add(new UserRecord
                {
                    Id = newId,
                    Name = name,
                    Email = email,
                    Phone = phone,
                    JoinedOn = DateTime.Today,
                    Status = ddlStatus.SelectedValue
                });

                lblMessage.Text = "User added successfully.";
            }

            Users = users;
            pnlUserForm.Visible = false;
            BindUsers();
        }

        // GRID ACTIONS: VIEW, EDIT, DELETE
        protected void gvUsers_RowCommand(
            object sender, GridViewCommandEventArgs e)
        {
            int userId;

            if (!int.TryParse(Convert.ToString(e.CommandArgument), out userId))
            {
                return;
            }

            List<UserRecord> users = Users;

            if (users == null)
            {
                return;
            }

            UserRecord user = users.FirstOrDefault(u => u.Id == userId);

            if (user == null)
            {
                lblMessage.Text = "User was not found.";
                BindUsers();
                return;
            }

            lblMessage.Text = "";

            if (e.CommandName == "ViewUser")
            {
                lblViewId.Text = user.Id.ToString();
                lblViewName.Text = user.Name;
                lblViewEmail.Text = user.Email;
                lblViewPhone.Text = user.Phone;
                lblViewJoined.Text = user.JoinedOn.ToString("dd-MM-yyyy");
                lblViewStatus.Text = user.Status;

                pnlUserForm.Visible = false;
                pnlViewUser.Visible = true;
            }
            else if (e.CommandName == "EditUser")
            {
                hfUserId.Value = user.Id.ToString();

                txtName.Text = user.Name;
                txtEmail.Text = user.Email;
                txtPhone.Text = user.Phone;
                ddlStatus.SelectedValue = user.Status;

                lblFormTitle.Text = "Edit User";
                btnSaveUser.Text = "Update User";

                pnlViewUser.Visible = false;
                pnlUserForm.Visible = true;
            }
            else if (e.CommandName == "DeleteUser")
            {
                users.Remove(user);
                Users = users;

                pnlUserForm.Visible = false;
                pnlViewUser.Visible = false;

                lblMessage.Text = "User deleted successfully.";
                BindUsers();
            }
        }

        // CANCEL ADD / EDIT POPUP
        protected void btnCancelForm_Click(object sender, EventArgs e)
        {
            pnlUserForm.Visible = false;
            ClearForm();
        }

        // CLOSE VIEW POPUP
        protected void btnCloseView_Click(object sender, EventArgs e)
        {
            pnlViewUser.Visible = false;
        }

        private void ClearForm()
        {
            hfUserId.Value = "";
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            ddlStatus.SelectedValue = "Active";
        }

        private void ShowEmailError()
        {
            cvEmail.IsValid = false;
            pnlUserForm.Visible = true;
        }
    }
}
