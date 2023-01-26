using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aramark_Pizza_app_1._3
{
    public partial class Index : System.Web.UI.Page
    {      
        double P = 3.8;
        double M = 3.6;
        double total;

        protected void Page_Load(object sender, EventArgs e)
        {
            var nameconvert = Session["FullName"];
            string name = nameconvert.ToString();
            FullNameLable.Text = name;

        }

        protected void pepperoniBtn_Click(object sender, ImageClickEventArgs e)
        {
            total = Double.Parse(Sumlable.Text.ToString().Remove(0, 8));
            total = total + P;      
            Sumlable.Text = "£" + total;
        }
    }
}