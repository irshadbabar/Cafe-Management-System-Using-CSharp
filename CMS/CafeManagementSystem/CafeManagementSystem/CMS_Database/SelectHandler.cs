using CafeManagementSystem.CMS_Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CafeManagementSystem.CMS_Database
{
    public class SelectHandler
    {
        private DB_Connection dbConnection;
        public SelectHandler()
        {
            dbConnection = DB_Connection.getInstance();
            
        }

        public string SelectUserAccount(User_Account uAccount)
        {
            string mySqlQuery = "SELECT cust.cust_role FROM customer cust INNER JOIN account acc ON acc.customerid = cust.customerid WHERE  "
                 + "cust.username = @username " + "and acc.userpassword = @pwd";
            return dbConnection.ExecuteLoginQuery(uAccount , mySqlQuery);
        }

        public int getMemberID(User_Account uAccount)
        {
            string mySqlQuery = "SELECT cust.customerid FROM customer cust INNER JOIN account acc ON acc.customerid = cust.customerid WHERE  "
                 + "cust.username = @username " + "and acc.userpassword = @pwd";
            return dbConnection.ExecuteMemberIDQuery(uAccount, mySqlQuery);
        }

        public List<FoodMenuItem> getFoodMenuItems()
        {
            string mySqlQuery = "SELECT id,Item_name,Item_description,Item_image_url,Item_price,Category_id FROM MenuItem ;";
            return dbConnection.getFoodItems(mySqlQuery);
        }

        private int getTotalOrders()
        {
            string mySqlQuery = "SELECT TOP 1 order_id FROM BillDetail ORDER BY customer_id DESC";
            return dbConnection.CountTotalOrders(mySqlQuery);
        }

        public int nextOrderID()
        {
            int nextID = 100000;

            int totRecord = getTotalOrders();
            if (totRecord != 0) // Default Data is total 0
            {
                nextID = totRecord;
                nextID++;
            }

            return nextID;
        }

        private int getTotalMembers()
        {
            string mySqlQuery = "SELECT TOP 1 * FROM customer ORDER BY customerid DESC";
            return dbConnection.CountTotalMembers(mySqlQuery);
        }

        public int nextUserID()
        {
            int nextID = 100000;

            int totRecord = getTotalMembers();
            if (totRecord != 0) 
            {
                nextID = totRecord;
                nextID++;
            }

            return nextID;
        }
    }
}