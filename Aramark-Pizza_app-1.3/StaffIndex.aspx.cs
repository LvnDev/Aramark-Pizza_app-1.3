using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Aramark_Pizza_app_1._3
{
    public partial class StaffIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         fnLbl.Text = Session["FullName"].ToString() + "    ";
            userLbl.Text = Session["username"].ToString();
        }

        protected void staffLogoutBtn_Click(object sender, EventArgs e)
        {
            Session["StaffID"] = "";
            Session["username"] = "";
            Session["password"] = "";
            Session["FullName"] = "";

            Response.Redirect("StaffLogin.aspx");
        }

        protected void sqlDelBtn_Click(object sender, EventArgs e)
        {
            AramarkPizzaDatabaseEntities db = new AramarkPizzaDatabaseEntities();

            var order = db.Orders.Find(Orders.SelectedValue);
            db.Entry(order).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
            Orders.DataBind();
            custIDlbl.Text = "";
            custNamelbl.Text = "";
        }

        protected void Orders_SelectedIndexChanged(object sender, EventArgs e)
        {
            AramarkPizzaDatabaseEntities db = new AramarkPizzaDatabaseEntities();
            var dbcust = db.Customers;

           
            custIDlbl.Text = Orders.SelectedRow.Cells[2].Text;
            int custIDconvert = Int32.Parse(custIDlbl.Text);

            foreach(var customer in dbcust)
            {
                if(customer.Customer_Id == custIDconvert)
                {
                    custNamelbl.Text = customer.FullName.ToString();
                }
            }
            
        }
    }
}