using CafeManagementSystem.CMS_Core;
using CafeManagementSystem.CMS_Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CafeManagementSystem
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            ddlUserCategory.DataSource = Enum.GetNames(typeof(UserCategory.userCategory));
            ddlUserCategory.DataBind();
        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Member newMember = new Member();
                newMember.customerID = getNextID();
                newMember.userName = txtUserName.Text;
                newMember.email = txtEmail.Text;
                newMember.phone = txtPhone.Text;
                newMember.category = "Student";
                newMember.cust_address = txtAddress.Text;
                newMember.memberAccount.userPassword = txtPassword.Text;
                newMember.memberAccount.userName = Convert.ToString(newMember.customerID);
                int result = newMember.registerNewMember();

                if (result == 1)
                {
                    Session["UserID"] = newMember.customerID;
                    Session["UserName"] = txtUserName.Text;
                    Page.Response.Redirect("dashboard.aspx");
                }
                else
                {
                    displayMsg(this,"Error " + result  +" " + newMember.customerID + newMember.userName + newMember.email + newMember.phone+newMember.cust_address);
                }
            }
        }

        protected int getNextID()
        {
            return ((new SelectHandler()).nextUserID());
        }

        static public void displayMsg(Control page, String msg)
        {
            string myScript = String.Format("alert('{0}')", msg);
            ScriptManager.RegisterStartupScript(page, page.GetType(), "MyScript", myScript, true);
        }
    }
}