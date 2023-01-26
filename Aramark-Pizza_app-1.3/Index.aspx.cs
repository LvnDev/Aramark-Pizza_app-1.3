using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aramark_Pizza_app_1._3
{
    public partial class Index : System.Web.UI.Page
    {
        int Pcount;
        int Mcount;
        int addpizza = 1;
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
            Pcount = int.Parse(pAmountlbl.Text.ToString());
            Pcount = Pcount + addpizza;
            pAmountlbl.Text = Pcount.ToString();

            total = Double.Parse(Sumlable.Text.ToString().Remove(0, 8));
            total = total + P;      
            Sumlable.Text = "Price: £" + total;
        }

        protected void pRemoveBtn_Click(object sender, EventArgs e)
        {
            Pcount = int.Parse(pAmountlbl.Text.ToString());
            Pcount = Pcount - addpizza;
            pAmountlbl.Text = Pcount.ToString();

            total = Double.Parse(Sumlable.Text.ToString().Remove(0, 8));
            total = total - P;
            Sumlable.Text = "Price: £" + total;
        }

        protected void margeritaBtn_Click(object sender, ImageClickEventArgs e)
        {
            Mcount = int.Parse(mAmountlbl.Text.ToString());
            Mcount = Mcount + addpizza;
            mAmountlbl.Text = Mcount.ToString();

            total = Double.Parse(Sumlable.Text.ToString().Remove(0, 8));
            total = total + M;
            Sumlable.Text = "Price: £" + total;
        }

        protected void mRemoveBtn_Click(object sender, EventArgs e)
        {
            Mcount = int.Parse(mAmountlbl.Text.ToString());
            Mcount = Mcount - addpizza;
            mAmountlbl.Text = Mcount.ToString();

            total = Double.Parse(Sumlable.Text.ToString().Remove(0, 8));
            total = total - M;
            Sumlable.Text = "Price: £" + total;
        }

        protected void redirectPayment_Click(object sender, EventArgs e)
        {
            Session["FullPayment"] = "";
        }
    }
}