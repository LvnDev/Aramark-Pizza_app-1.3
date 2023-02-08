using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aramark_Pizza_app_1._3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            AramarkPizzaDatabaseEntities db = new AramarkPizzaDatabaseEntities();
            var dbcustomers = db.Customers;
            foreach(var customer in dbcustomers )
            {
                if (LUsernameTxtbox.Text == customer.Username && LPasswordTxtbox.Text == customer.Password)
                {
                    Session["CustomerID"] = customer.Customer_Id;
                    Session["username"] = customer.Username; 
                    Session["password"] = customer.Password;
                    Session["FullName"] = customer.FullName;

                    Response.Redirect("index.aspx");
                }
            }
        }

        protected void RedirectSignupButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void staffLoginRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffLogin.aspx");
        }
    }
    
}
