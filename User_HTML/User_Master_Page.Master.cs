using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empower_Her_1.User_HTML
{
    public partial class User_Master_Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string currentPage = System.IO.Path.GetFileName(
                Request.Url.AbsolutePath
            );
            lnkDashboard.Attributes["class"] = "sidebar-link";
            lnkProducts.Attributes["class"] = "sidebar-link";
            lnkGovernmentSchemes.Attributes["class"] = "sidebar-link";
            lnkFinancialLiteracy.Attributes["class"] = "sidebar-link";
            lnkNotifications.Attributes["class"] = "sidebar-link";
            lnkMyProfile.Attributes["class"] = "sidebar-link";
            lnkSettings.Attributes["class"] = "sidebar-link";
            lnkCourses.Attributes["class"] = "sidebar-link";


            if (currentPage == "User_home_page.aspx")
            {
                lnkDashboard.Attributes["class"] = "sidebar-link active";
            }
            else if (currentPage == "User_My_Products.aspx")
            {
                lnkProducts.Attributes["class"] = "sidebar-link active";
            }
            else if (currentPage == "User_Government_Schemes.aspx")
            {
                lnkGovernmentSchemes.Attributes["class"] = "sidebar-link active";
            }
            else if (currentPage == "User_Financial_Literacy.aspx")
            {
                lnkFinancialLiteracy.Attributes["class"] = "sidebar-link active";
            }
            else if (currentPage == "User_Notifications.aspx")
            {
                lnkNotifications.Attributes["class"] = "sidebar-link active";
            }
            else if (currentPage == "User_My_Profile.aspx")
            {
                lnkMyProfile.Attributes["class"] = "sidebar-link active";
            }
            else if (currentPage == "User_Change_Password.aspx")
            {
                lnkSettings.Attributes["class"] = "sidebar-link active";
            }
            else if (currentPage == "User_Courses.aspx")
            {
                lnkCourses.Attributes["class"] = "sidebar-link active";
            }

        }
    }
}