using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aramark_Pizza_app_1._3
{
    public partial class StaffLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            AramarkPizzaDatabaseEntities db = new AramarkPizzaDatabaseEntities();
            var dbstaff = db.Staffs;

            foreach(var Staff in dbstaff) 
            { 
            if (Staff.Username == userTxtbox.Text && Staff.Password == passTxtbox.Text) 
                {
                    Session["StaffID"] = Staff.StaffId;
                    Session["username"] = Staff.Username;
                    Session["password"] = Staff.Password;
                    Session["FullName"] = Staff.FullName;

                    Response.Redirect("StaffIndex.aspx");

                }
            }
        }
    }
}