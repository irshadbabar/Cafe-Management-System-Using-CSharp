using CafeManagementSystem.CMS_Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CafeManagementSystem
{
    public class User_Account
    {
        public User_Account()
        {

        }

        public string userName { get; set; }
        public string userPassword { get; set; }

        public string LoginUserAccount()
        {
            SelectHandler selectAccount = new SelectHandler();
            return selectAccount.SelectUserAccount(this);
        }
    }
}