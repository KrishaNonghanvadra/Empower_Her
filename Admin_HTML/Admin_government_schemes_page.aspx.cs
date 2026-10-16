
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empower_Her_1.Admin_HTML
{
    public partial class Admin_government_schemes_page : Page
    {
        [Serializable]
        public class Scheme
        {
            public int Id { get; set; }
            public string SchemeName { get; set; }
            public string Category { get; set; }
            public string Description { get; set; }
            public string Status { get; set; }
        }

        private List<Scheme> Schemes
        {
            get
            {
                if (Session["GovernmentSchemes"] == null)
                {
                    Session["GovernmentSchemes"] = new List<Scheme>
                    {
                        new Scheme
                        {
                            Id = 1,
                            SchemeName = "PM Mudra Loan",
                            Category = "Loan Schemes",
                            Description = "Financial assistance for eligible small businesses.",
                            Status = "Active"
                        },
                        new Scheme
                        {
                            Id = 2,
                            SchemeName = "Stand-Up India",
                            Category = "Business Support",
                            Description = "Support for eligible entrepreneurs starting businesses.",
                            Status = "Active"
                        },
                        new Scheme
                        {
                            Id = 3,
                            SchemeName = "Skill India",
                            Category = "Education",
                            Description = "Training opportunities to develop vocational skills.",
                            Status = "Active"
                        },
                        new Scheme
                        {
                            Id = 4,
                            SchemeName = "Startup India",
                            Category = "Employment",
                            Description = "Initiatives supporting eligible startups and entrepreneurs.",
                            Status = "Inactive"
                        }
                    };
                }

                return (List<Scheme>)Session["GovernmentSchemes"];
            }
            set
            {
                Session["GovernmentSchemes"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindSchemes();
            }
        }

        private void BindSchemes()
        {
            string search = txtSearch.Text.Trim().ToLowerInvariant();

            var filtered = Schemes
                .Where(s =>
                    s.SchemeName.ToLowerInvariant().Contains(search) ||
                    s.Category.ToLowerInvariant().Contains(search) ||
                    s.Status.ToLowerInvariant().Contains(search))
                .ToList();

            gvSchemes.DataSource = filtered;
            gvSchemes.DataBind();
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            BindSchemes();
        }

        protected void btnAddScheme_Click(object sender, EventArgs e)
        {
            ClearForm();
            lblModalTitle.Text = "Add Government Scheme";
            btnSaveScheme.Text = "Add Scheme";
            SetReadOnly(false);
            pnlSchemeModal.Visible = true;
        }

        protected void gvSchemes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (!int.TryParse(Convert.ToString(e.CommandArgument), out int id))
                return;

            Scheme scheme = Schemes.FirstOrDefault(s => s.Id == id);

            if (scheme == null)
            {
                lblMessage.Text = "Scheme not found.";
                BindSchemes();
                return;
            }

            if (e.CommandName == "ViewScheme")
            {
                FillForm(scheme);
                lblModalTitle.Text = "View Government Scheme";
                btnSaveScheme.Visible = false;
                SetReadOnly(true);
                pnlSchemeModal.Visible = true;
            }
            else if (e.CommandName == "EditScheme")
            {
                FillForm(scheme);
                lblModalTitle.Text = "Edit Government Scheme";
                btnSaveScheme.Text = "Update Scheme";
                btnSaveScheme.Visible = true;
                SetReadOnly(false);
                pnlSchemeModal.Visible = true;
            }
            else if (e.CommandName == "DeleteScheme")
            {
                Schemes.Remove(scheme);
                lblMessage.Text = "Government scheme deleted successfully.";
                BindSchemes();
            }
        }

        protected void btnSaveScheme_Click(object sender, EventArgs e)
        {
            Page.Validate("SchemeForm");

            if (!Page.IsValid)
            {
                pnlSchemeModal.Visible = true;
                return;
            }

            string name = txtSchemeName.Text.Trim();
            string category = ddlCategory.SelectedValue;
            string description = txtDescription.Text.Trim();
            string status = ddlStatus.SelectedValue;

            if (name.Length < 3)
            {
                lblFormMessage.Text = "Scheme name must contain at least 3 characters.";
                pnlSchemeModal.Visible = true;
                return;
            }

            if (description.Length < 10)
            {
                lblFormMessage.Text = "Description must contain at least 10 characters.";
                pnlSchemeModal.Visible = true;
                return;
            }

            int id;
            if (int.TryParse(hfSchemeId.Value, out id))
            {
                Scheme existing = Schemes.FirstOrDefault(s => s.Id == id);

                if (existing == null)
                {
                    lblFormMessage.Text = "Scheme not found. Please close and try again.";
                    pnlSchemeModal.Visible = true;
                    return;
                }

                existing.SchemeName = name;
                existing.Category = category;
                existing.Description = description;
                existing.Status = status;

                lblMessage.Text = "Government scheme updated successfully.";
            }
            else
            {
                int nextId = Schemes.Count == 0 ? 1 : Schemes.Max(s => s.Id) + 1;

                Schemes.Add(new Scheme
                {
                    Id = nextId,
                    SchemeName = name,
                    Category = category,
                    Description = description,
                    Status = status
                });

                lblMessage.Text = "Government scheme added successfully.";
            }

            pnlSchemeModal.Visible = false;
            BindSchemes();
        }

        protected void btnCloseModal_Click(object sender, EventArgs e)
        {
            pnlSchemeModal.Visible = false;
            lblFormMessage.Text = "";
        }

        private void FillForm(Scheme scheme)
        {
            hfSchemeId.Value = scheme.Id.ToString();
            txtSchemeName.Text = scheme.SchemeName;
            ddlCategory.SelectedValue = scheme.Category;
            txtDescription.Text = scheme.Description;
            ddlStatus.SelectedValue = scheme.Status;
            lblFormMessage.Text = "";
        }

        private void ClearForm()
        {
            hfSchemeId.Value = "";
            txtSchemeName.Text = "";
            ddlCategory.SelectedIndex = 0;
            txtDescription.Text = "";
            ddlStatus.SelectedValue = "Active";
            lblFormMessage.Text = "";
            btnSaveScheme.Visible = true;
        }

        private void SetReadOnly(bool readOnly)
        {
            txtSchemeName.ReadOnly = readOnly;
            ddlCategory.Enabled = !readOnly;
            txtDescription.ReadOnly = readOnly;
            ddlStatus.Enabled = !readOnly;

            rfvSchemeName.Enabled = !readOnly;
            rfvCategory.Enabled = !readOnly;
            rfvDescription.Enabled = !readOnly;
        }
    }
}
