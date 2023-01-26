using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aramark_Pizza_app_1._3
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SignupBtn_Click(object sender, EventArgs e)
        {
            AramarkPizzaDatabaseEntities db = new AramarkPizzaDatabaseEntities();
            var dbCustomer = db.Customers;
            foreach(var customer in dbCustomer)
            {
                if(SUsernameTxtbox.Text == null && SPasswordTxtbox.Text == null && SFullname.Text == null)
                {
                    errorLbl.Text = "Please input details in text box! ";
                    return;
                }
                else if(SUsernameTxtbox.Text == customer.Username)
                {
                    errorLbl.Text = "Error! Username has already been taken.";
                    return;
                }
                
            }
            var newCustomer = new Customer();

            newCustomer.Username = SUsernameTxtbox.Text;
            newCustomer.Password = SPasswordTxtbox.Text;
            newCustomer.FullName = SFullname.Text;

            dbCustomer.Add(newCustomer);
            db.SaveChanges();

            Session["username"] = dbCustomer;
            Session["password"] = dbCustomer;
            Session["FullName"] = dbCustomer;

            Response.Redirect("Default.aspx");

        }

        protected void RedirectLoginButton_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}