using CafeManagementSystem.CMS_Core;
using CafeManagementSystem.CMS_Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CafeManagementSystem
{
    public partial class ConfirmOrder : System.Web.UI.Page
    {
        private DataTable GetCartItemsDataTable(List<Cart> cartItems)
        {

            DataTable dt = new DataTable();
            DataRow dr = null;

            dt.Columns.Add(new DataColumn("itemName", typeof(string)));
            dt.Columns.Add(new DataColumn("itemQty", typeof(string)));
            dt.Columns.Add(new DataColumn("itemPrice", typeof(string)));

            foreach (Cart c in cartItems)
            {
                dr = dt.NewRow();
                dr["itemName"] = c.dishName;
                dr["itemQty"] = c.quantity;
                dr["itemPrice"] = c.price;
                dt.Rows.Add(dr);
            }

            return dt;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                float totalAmount = 0;
                List<Cart> cartItems = (List<Cart>)Session["CartItems"];
                if (cartItems != null)
                {
                    foreach (Cart c in cartItems)
                    {
                        totalAmount += c.price;
                    }
                    totAmout.Text = totalAmount.ToString();
                    grdCartItems.DataSource = GetCartItemsDataTable(cartItems);
                    grdCartItems.DataBind();
                }
                
            }
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("dashboard.aspx");
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            if (Session["CartItems"] != null)
            {
                SelectHandler selectDB = new SelectHandler();
                int currentOrderID = selectDB.nextOrderID();

                List<Cart> cartItems = (List<Cart>)Session["CartItems"];
                InsertHandler insertDB = new InsertHandler();

                foreach (Cart c in cartItems)
                {
                    insertDB.InsertIntoPlacedOrder(c, currentOrderID);
                }

                DateTime currentDateTime = DateTime.Now;
                string orderTime = currentDateTime.ToString("yyyy-MM-dd HH:mm:ss");
                int custID = Convert.ToInt32(Session["UserID"].ToString());

                int insertRecord = insertDB.InsertIntoBillDetail(currentOrderID, custID, deliveryAddress.Text, orderTime);

                if (insertRecord > 0)
                {
                    Session["CartItems"] = null;
                    Page.Response.Redirect("dashboard.aspx");
                }
            }
            else
            {
                displayMsg(this,"Please Add Items to Your Cart and then Press Check Out");
            }
        }

        static public void displayMsg(Control page, String msg)
        {
            string myScript = String.Format("alert('{0}')", msg);
            ScriptManager.RegisterStartupScript(page, page.GetType(), "MyScript", myScript, true);
        }
    }
}