
using CafeManagementSystem.CMS_Database;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CafeManagementSystem
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            Page.Response.Redirect("register.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                User_Account tempAccount = new User_Account();
                tempAccount.userName = txtUserName.Text;
                tempAccount.userPassword = txtPassword.Text;
                string retValue = tempAccount.LoginUserAccount();

                if (retValue != null)
                {
                    int custID = (new SelectHandler()).getMemberID(tempAccount);
                    Session["UserID"] = custID;
                    Session["UserName"] = txtUserName.Text;

                    if (!retValue.Equals("Student"))
                    {
                        // Cafeterian is LoggedIn Redirect to Adminstrative Dashboard
                        Page.Response.Redirect("AdminDashboard.aspx");
                    }
                    else
                    {
                        Page.Response.Redirect("dashboard.aspx");
                    }
                }
                else if (retValue == null)
                {
                    lblError.Visible = true;
                    lblError.Text = "SQL DataBase Error Please Make sure SQL Server is Running";

                }
                else if (retValue == "")
                {
                    lblError.Visible = true;
                    lblError.Text = "Sorry Invalid UserName or Password ";
                }
            }
        }

        static public void displayMsg(Control page, String msg)
        {
            string myScript = String.Format("alert('{0}')", msg);
            ScriptManager.RegisterStartupScript(page, page.GetType(), "MyScript", myScript, true);
        }
    }
}