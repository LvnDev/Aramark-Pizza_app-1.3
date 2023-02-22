using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aramark_Pizza_app_1._3
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var total = Session["FullPayment"].ToString(); //total to text
            totalPaymentLbl.Text = total;

            var pcount = Session["PPizza"].ToString(); // p pizza count to text
            payment_Pcount.Text = pcount;

            var mcount = Session["MPizza"].ToString(); // m pizza count to text
            Payment_Mcount.Text = mcount;

            var customerid = Session["CustomerID"].ToString();
            customerIDLbl.Text = customerid;
        }

        protected void payBtn_Click(object sender, EventArgs e)
        {
            
            string paymentbtns;
            if(cashRadioBtn.Checked )
            {
               paymentbtns= cashRadioBtn.Text;
               payBtn.Visible = false;
            }
            else if (cardRadioBtn.Checked)
            {
                paymentbtns= cardRadioBtn.Text;
                payBtn.Visible = false;
            }
            else
            {
                return;
            }

            AramarkPizzaDatabaseEntities db = new AramarkPizzaDatabaseEntities();
            var dbOrders = new Order();

            dbOrders.CustID = Int32.Parse(customerIDLbl.Text);
            dbOrders.Margherita =  Int32.Parse(Payment_Mcount.Text);
            dbOrders.Pepperoni  = Int32.Parse(payment_Pcount.Text);
            dbOrders.PaymentOption = paymentbtns;
            dbOrders.Total = Decimal.Parse(totalPaymentLbl.Text.Remove(0,1));
            
            db.Orders.Add(dbOrders);

            db.SaveChanges();

            Session["OrderID"] = dbOrders.OrderId;
            
            Response.Redirect("EndPayment.aspx");

        }
    }
}