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
        double total;
        double P = 3.80;
        int times;

        protected void Page_Load(object sender, EventArgs e)
        {
            var nameconvert = Session["FullName"];
            string name = nameconvert.ToString();
            FullNameLable.Text = name;

        }

        protected void pepperoniBtn_Click(object sender, ImageClickEventArgs e)
        {
            while ()
            {
                double totalp = P * ++times;
                string text_addp = totalp.ToString();
                Sumlable.Text = "£" + text_addp;
            }
        }
    }
}