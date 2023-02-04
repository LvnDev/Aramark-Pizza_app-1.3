using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aramark_Pizza_app_1._3
{
    public partial class EndPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            orderNumlbl.Text = "Your Order Number: " + Session["OrderID"].ToString();
            custNumlbl.Text = "Customer ID: " + Session["CustomerID"].ToString();
        }

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}