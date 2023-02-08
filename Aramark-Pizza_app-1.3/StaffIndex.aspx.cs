using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aramark_Pizza_app_1._3
{
    public partial class StaffIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         fnLbl.Text = Session["FullName"].ToString() + "    ";
            userLbl.Text = Session["username"].ToString();
        }

        protected void staffLogoutBtn_Click(object sender, EventArgs e)
        {
            Session["StaffID"] = "";
            Session["username"] = "";
            Session["password"] = "";
            Session["FullName"] = "";

            Response.Redirect("Default.aspx");
        }
    }
}