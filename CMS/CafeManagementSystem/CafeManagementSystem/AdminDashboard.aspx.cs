using CafeManagementSystem.CMS_Core;
using CafeManagementSystem.CMS_Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Timers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CafeManagementSystem
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        private void InitGridView()
        {
            SelectHandler selectDB = new SelectHandler();
            List<FoodMenuItem> menuItems = selectDB.getFoodMenuItems();
            Session["MenuItems"] = menuItems;
            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("rNo", typeof(string)));
            dt.Columns.Add(new DataColumn("itemName", typeof(string)));
            dt.Columns.Add(new DataColumn("Ingredients", typeof(string)));
            dt.Columns.Add(new DataColumn("itemPrice", typeof(string)));
            dt.Columns.Add(new DataColumn("imageName", typeof(string)));
            dt.Columns.Add(new DataColumn("itemCategory", typeof(string)));

            int rNo = 1;

            foreach (FoodMenuItem fi in menuItems)
            {
                dr = dt.NewRow();
                dr["rNo"] = rNo;
                dr["itemName"] = fi.itemName;
                dr["Ingredients"] = fi.itemIngredients;
                dr["itemPrice"] = fi.itemPrice;
                dr["imageName"] = fi.itemImageUrl;
                dr["itemCategory"] = fi.menuItemCategory.id;

                dt.Rows.Add(dr);
                rNo++;
            }
            grdMenuItems.DataSource = dt;
            grdMenuItems.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                lblLoggedUserName.Text = Session["UserName"].ToString();
                lblLoggedUserName.Visible = true;

                if (!IsPostBack)
                {  
                    InitGridView();
                }
            }
            else
            {
                Page.Response.Redirect("login.aspx");
            }
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void grdMenuItems_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Label1.Text = "Editing";

            grdMenuItems.EditIndex = e.NewEditIndex;

            InitGridView();
        }

        protected void grdMenuItems_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)grdMenuItems.Rows[e.RowIndex];
            TextBox itemName = row.FindControl("txtItemName") as TextBox;
            TextBox ingredients = row.FindControl("txtDescription") as TextBox;
            TextBox imageUrl = row.FindControl("txtImageUrl") as TextBox;
            TextBox itemPrice = row.FindControl("itemPrice") as TextBox;
            DropDownList ddlItemCategory = row.FindControl("ddlItemCategory") as DropDownList;

            int quesListInd = Convert.ToInt32(grdMenuItems.DataKeys[e.RowIndex].Value.ToString());
            List<FoodMenuItem> itemsList = (List<FoodMenuItem>)Session["MenuItems"];
            FoodMenuItem updateItem = itemsList[quesListInd - 1];
            updateItem.itemName = itemName.Text;
            updateItem.itemIngredients = ingredients.Text;
            updateItem.itemImageUrl = imageUrl.Text;
            float price = 0;
            float.TryParse(itemPrice.Text,out price);
            updateItem.itemPrice = price;
            ItemCategory itemCategory = new ItemCategory();
            itemCategory.id = Convert.ToInt32(ddlItemCategory.SelectedItem.Value);
            itemCategory.categoryName = ddlItemCategory.SelectedItem.Text;
            updateItem.menuItemCategory = itemCategory;

            InsertHandler updateDB = new InsertHandler();

            if (updateDB.updateFoodItem(updateItem) > 0)
            {
                Label1.Text = "Item is Updated Successfully";

            }
            else
            {
                Label1.Text = "Item is not Updated Successfully";
            }
            ShowLabel(2000);  // Showing Label for 2 Seconds...........
            grdMenuItems.EditIndex = -1;
            InitGridView();
        }

        protected void grdMenuItems_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (grdMenuItems.Rows.Count > 1)
            {
                GridViewRow row = (GridViewRow)grdMenuItems.Rows[e.RowIndex];
                List<FoodMenuItem> QuesList = (List<FoodMenuItem>)Session["MenuItems"];
                //Label1.Text = grdEditQuestions.DataKeys[e.RowIndex].Value.ToString();
                int quesListInd = Convert.ToInt32(grdMenuItems.DataKeys[e.RowIndex].Value.ToString());

                InsertHandler deleteDB = new InsertHandler();
                
                if (deleteDB.DeleteMenuItem(QuesList[quesListInd - 1].id) > 0)
                {
                    Label1.Text = "You have Successfully Remove Food Menu Item";
                    ShowLabel(2000);
                }
                else
                {
                    Label1.Text = "Exception Occur in Deleteing Food Menu Item";
                    ShowLabel(2000);
                }
            }
            else
            {
                Label1.Text = "Cannot Perform Delete Operation You Should Have Minimum 1 Item Per Food Menu";
                ShowLabel(2000);  // Showing Label for 2 Seconds...........
            }
            InitGridView();
        }

        protected void grdMenuItems_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdMenuItems.EditIndex = -1;
            InitGridView();
        }

        protected void grdMenuItems_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "AddNew")
            {
                GridViewRow row = grdMenuItems.FooterRow;
                TextBox itemName = row.FindControl("txtItemName") as TextBox;
                TextBox ingredients = row.FindControl("txtDescription") as TextBox;
                TextBox imageUrl = row.FindControl("txtImageUrl") as TextBox;
                TextBox itemPrice = row.FindControl("itemPrice") as TextBox;
                DropDownList ddlItemCategory = row.FindControl("ddlItemCategory") as DropDownList;
               // Label1.Text = txt.Text;
                FoodMenuItem newItem = new FoodMenuItem();
                newItem.itemName = itemName.Text;
                newItem.itemIngredients = ingredients.Text;
                newItem.itemImageUrl = imageUrl.Text;
                float price = 0;
                float.TryParse(itemPrice.Text, out price);
                newItem.itemPrice = price;
                ItemCategory itemCategory = new ItemCategory();
                itemCategory.id = Convert.ToInt32(ddlItemCategory.SelectedItem.Value);
                itemCategory.categoryName = ddlItemCategory.SelectedItem.Text;
                newItem.menuItemCategory = itemCategory;

                List<FoodMenuItem> quesList = (List<FoodMenuItem>)Session["MenuItems"];
                int listInd = quesList.Count;
                newItem.id = quesList[listInd - 1].id;
                int oldId = newItem.id;
                //displayMsg(this,"OldID: " + oldId);
                oldId++;
                newItem.id = oldId;
                InsertHandler insertDB = new InsertHandler();
                if (insertDB.InsertIntoFoodMenu(newItem) > 0)
                {
                    Label1.Text = "New Item Added Successfully";
                }
                else
                {
                    Label1.Text = "Error Occur in Adding New Item";
                }
                InitGridView();
                ShowLabel(2000);
            }
        }

        private void ShowLabel(int time)
        {
            System.Timers.Timer timer1 = new System.Timers.Timer(time);
            timer1.Enabled = true;
            timer1.Elapsed += new ElapsedEventHandler(timer1_Elapsed);
            Session["Timer"] = timer1;
            Label1.Visible = true;
        }

        private void timer1_Elapsed(object sender, ElapsedEventArgs e)
        {
            Label1.Visible = false;
            System.Timers.Timer timer1 = (System.Timers.Timer)Session["Timer"];
            timer1.Enabled = false;
            Session["Timer"] = timer1;
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
    }
}