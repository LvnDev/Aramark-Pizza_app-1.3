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

            var custIDconvert = Session["CustomerID"];
            string custID = custIDconvert.ToString();
            custIDlable.Text = custID;

        }

        protected void pepperoniBtn_Click(object sender, ImageClickEventArgs e)
        {

            Pcount = int.Parse(pAmountlbl.Text.ToString());
            Pcount = Pcount + addpizza;
            pAmountlbl.Text = Pcount.ToString();

            total = Double.Parse(Sumlable.Text.ToString().Remove(0, 1));
            total = total + P;      
            Sumlable.Text = "£" + total;

            errorLbl.Text = "";
        }

        protected void pRemoveBtn_Click(object sender, EventArgs e)
        {

            Pcount = int.Parse(pAmountlbl.Text.ToString());

            if(Pcount < 1)
            {
               
            }
            else
            {
                Pcount = Pcount - addpizza;

                pAmountlbl.Text = Pcount.ToString();

                total = Double.Parse(Sumlable.Text.ToString().Remove(0, 1));
                total = total - P;
                Sumlable.Text = "£" + total;
            }

        }

        protected void margeritaBtn_Click(object sender, ImageClickEventArgs e)
        {
            Mcount = int.Parse(mAmountlbl.Text.ToString());
            Mcount = Mcount + addpizza;
            mAmountlbl.Text = Mcount.ToString();

            total = Double.Parse(Sumlable.Text.ToString().Remove(0, 1));
            total = total + M;
            Sumlable.Text = "£" + total;
            errorLbl.Text = "";
        }

        protected void mRemoveBtn_Click(object sender, EventArgs e)
        {

            Mcount = int.Parse(mAmountlbl.Text.ToString());
            if(Mcount < 1)
            {
               
            }
            else
            {
                Mcount = Mcount - addpizza;
                mAmountlbl.Text = Mcount.ToString();

                total = Double.Parse(Sumlable.Text.ToString().Remove(0, 1));
                total = total - M;
                Sumlable.Text = "£" + total;
            }

        }

        protected void redirectPayment_Click(object sender, EventArgs e)
        {
            int pconvert = Int32.Parse(pAmountlbl.Text);
            int mconvert = Int32.Parse(mAmountlbl.Text);

            if(pconvert == 0 && mconvert == 0)
            {
                errorLbl.Text = "Error Please add atleast 1 Pizza";
            }
            else if(pconvert > 0 || mconvert > 0)
            {
                Session["FullPayment"] = Sumlable.Text;
                Session["PPizza"] = pAmountlbl.Text;
                Session["MPizza"] = mAmountlbl.Text;

                Response.Redirect("Payment.aspx");
            }


        }

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}