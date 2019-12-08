using CafeManagementSystem.CMS_Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CafeManagementSystem.CMS_Core
{
    public class Member
    {
        public Member() {
            memberAccount = new User_Account();
        }

        public int customerID { get; set; }

        public string userName { get; set; }

        public string email { get; set; }

        public string phone { get; set; }

        public string category { get; set; }

        public string cust_address { get; set; }

        public User_Account memberAccount { get; set; }

        public int registerNewMember()
        {

            int retCode = 0;
            InsertHandler insertH = new InsertHandler();

            retCode = insertH.InsertIntoUserProfile(this.customerID,this.userName,this.email,this.phone,this.category,this.cust_address);
            if (retCode > 0)
            {

                retCode = insertH.InsertIntoUserAccount(this.memberAccount);
            }
            return retCode;

        }
    }
}