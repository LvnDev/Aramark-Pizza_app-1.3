using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Aramark_Pizza_app_1._3
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {


        }

        protected void Session_start(object sender, EventArgs e)
        {
            Session["CustomerID"] = "";

            Session["username"] = "";

            Session["password"] = "";

            Session["FullName"] = "";

            Session["FullPayment"] = "";

            Session["PPizza"] = "";

            Session["MPizza"] = "";
        }
    }
}