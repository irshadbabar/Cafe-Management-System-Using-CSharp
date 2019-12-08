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
    public partial class dashboard : System.Web.UI.Page
    {
        private DataTable InitGridView(List<FoodMenuItem> menuItems)
        {

            DataTable dt = new DataTable();
            DataRow dr = null;

            dt.Columns.Add(new DataColumn("itemName", typeof(string)));
            dt.Columns.Add(new DataColumn("Ingredients", typeof(string)));
            dt.Columns.Add(new DataColumn("itemPrice", typeof(string)));
            dt.Columns.Add(new DataColumn("imageName", typeof(string)));
            dt.Columns.Add(new DataColumn("itemCategory", typeof(string)));

            foreach (FoodMenuItem fi in menuItems)
            {
                dr = dt.NewRow();
                dr["itemName"] = fi.itemName;
                dr["Ingredients"] = fi.itemIngredients;
                dr["itemPrice"] = fi.itemPrice;
                dr["imageName"] = fi.itemImageUrl;
                dr["itemCategory"] = fi.menuItemCategory.id;

                dt.Rows.Add(dr);
            }

            return dt;
        }

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
            if (Session["UserID"] != null)
            {
                SelectHandler selectDB = new SelectHandler();

                lblLoggedUserName.Text = Session["UserName"].ToString();
                lblLoggedUserName.Visible = true;

                if (!IsPostBack)
                {
                    List<FoodMenuItem> availableItems = selectDB.getFoodMenuItems();
                    Session["FoodMenuItems"] = availableItems;
                    grdFoodItems.DataSource = InitGridView(availableItems);
                    grdFoodItems.DataBind();

                    if (Session["CartItems"] != null)
                    {
                        grdCartItems.DataSource = GetCartItemsDataTable((List<Cart>)Session["CartItems"]);
                        grdCartItems.DataBind();
                    }

                    
                }
            }
            else
            {
                Page.Response.Redirect("login.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Page.Server.Transfer("login.aspx");
        }

        static public void displayMsg(Control page, String msg)
        {
            string myScript = String.Format("alert('{0}')", msg);
            ScriptManager.RegisterStartupScript(page, page.GetType(), "MyScript", myScript, true);
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("ConfirmOrder.aspx");
        }

        protected void grdFoodItems_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedRow = grdFoodItems.SelectedIndex;

            List<FoodMenuItem> menuItems = (List<FoodMenuItem>)Session["FoodMenuItems"];
            FoodMenuItem selectedFoodItem = menuItems.ElementAt(selectedRow);
            Cart newItemCart = new Cart();

            if (Session["CartItems"] != null)
            {
                List<Cart> cartItems = (List<Cart>)Session["CartItems"];
                Boolean isFound = false;

                foreach (Cart c in cartItems)
                {
                    if (c.itemId == selectedFoodItem.id)
                    {
                        isFound = true;
                        c.quantity++;
                        c.price = c.price + selectedFoodItem.itemPrice;
                        break;
                    }
                }

                if (!isFound)
                {
                    newItemCart.itemId = selectedFoodItem.id;
                    newItemCart.dishName = selectedFoodItem.itemName;
                    newItemCart.quantity = 1;
                    newItemCart.price = selectedFoodItem.itemPrice;
                    newItemCart.unitPrice = selectedFoodItem.itemPrice;
                    cartItems.Add(newItemCart);
                }
                
                Session["CartItems"] = cartItems;
            }
            else
            {
                List<Cart> cartItems = new List<Cart>();
                newItemCart.itemId = selectedFoodItem.id;
                newItemCart.dishName = selectedFoodItem.itemName;
                newItemCart.quantity = 1;
                newItemCart.price = selectedFoodItem.itemPrice;
                newItemCart.unitPrice = selectedFoodItem.itemPrice;
                cartItems.Add(newItemCart);
                Session["CartItems"] = cartItems;
            }

            grdCartItems.DataSource = GetCartItemsDataTable((List<Cart>) Session["CartItems"]);
            grdCartItems.DataBind();

        }// End of Selected Index Change Method

        protected void grdCartItems_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (grdCartItems.Rows.Count > 1)
            {
                int selectedRow = grdFoodItems.SelectedIndex;
                //lblTest.Text = selectedRow.ToString();
                string QtyColumn = grdCartItems.Rows[selectedRow].Cells[1].Text;
                int quantity = Convert.ToInt32(QtyColumn);

                if (quantity > 1)
                {
                    quantity--;
                    List<Cart> cartItems = (List<Cart>)Session["CartItems"];
                    cartItems.ElementAt(selectedRow).price = cartItems.ElementAt(selectedRow).price - cartItems.ElementAt(selectedRow).unitPrice;
                    cartItems.ElementAt(selectedRow).quantity = quantity;
                    Session["CartItems"] = cartItems;
                    grdCartItems.DataSource = GetCartItemsDataTable(cartItems);
                    grdCartItems.DataBind();

                }
                else
                {
                    List<Cart> cartItems = (List<Cart>)Session["CartItems"];
                    cartItems.RemoveAt(selectedRow);
                    Session["CartItems"] = cartItems;
                    grdCartItems.DataSource = GetCartItemsDataTable(cartItems);
                    grdCartItems.DataBind();
                }
            }
            else if (grdCartItems.Rows.Count == 1)
            {
                int selectedRow = grdFoodItems.SelectedIndex;
                string QtyColumn = grdCartItems.Rows[selectedRow].Cells[1].Text;
                int quantity = Convert.ToInt32(QtyColumn);

                if (quantity > 1)
                {
                    quantity--;
                    List<Cart> cartItems = (List<Cart>)Session["CartItems"];

                    cartItems.ElementAt(selectedRow).price = cartItems.ElementAt(selectedRow).price - cartItems.ElementAt(selectedRow).unitPrice;
                    cartItems.ElementAt(selectedRow).quantity = quantity;
                    Session["CartItems"] = cartItems;
                    grdCartItems.DataSource = GetCartItemsDataTable(cartItems);
                    grdCartItems.DataBind();

                }
            }
        }
    }
}