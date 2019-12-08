using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data.SqlClient;
using CafeManagementSystem.CMS_Core;

namespace CafeManagementSystem.CMS_Database
{
    public class InsertHandler
    {
        private DB_Connection dbConnection;
        public InsertHandler()
        {
            dbConnection = DB_Connection.getInstance();
        }

        public int InsertIntoBillDetail(int orderID, int custID , string custAddress, string orderTime)
        {
            string insertQuery = "Insert into BillDetail " +
                "( Order_Id , Customer_id , Delivery_cust_address, Order_time) " +
                "Values ( @ordId , @cID , @delAddr , @ordTime)";
            dbConnection.openConnection();
            SqlCommand cmd = new SqlCommand(insertQuery, dbConnection.getSQLDBConnection());
            dbConnection.getSQLDBConnection().Open();
            cmd.Parameters.AddWithValue("@ordId", orderID);
            cmd.Parameters.AddWithValue("@cID", custID);
            cmd.Parameters.AddWithValue("@delAddr", custAddress);
            cmd.Parameters.AddWithValue("@ordTime", orderTime);

            try
            {
                if (cmd.ExecuteNonQuery() > 0)
                {

                    return 1;
                }
            }
            catch (SqlException ex)
            {
                if (ex.ErrorCode == 00001)
                {
                    return 0;
                }
                return -1;
            }
            finally
            {
                dbConnection.CloseConnection();
            }
            return -1;
        }

        public int InsertIntoPlacedOrder(Cart newItem, int orderID)
        {
            string insertQuery = "Insert into PlacedOrder " +
                "( Order_Id , MenuItem_id , Price_item, Quantity_item) " +
                "Values ( @ordId , @ordMID , @ordPItem , @ordQty)";
            dbConnection.openConnection();
            SqlCommand cmd = new SqlCommand(insertQuery, dbConnection.getSQLDBConnection());
            dbConnection.getSQLDBConnection().Open();
            cmd.Parameters.AddWithValue("@ordId", orderID);
            cmd.Parameters.AddWithValue("@ordMID", newItem.itemId);
            cmd.Parameters.AddWithValue("@ordPItem", newItem.price);
            cmd.Parameters.AddWithValue("@ordQty", newItem.quantity);

            try
            {
                if (cmd.ExecuteNonQuery() > 0)
                {

                    return 1;
                }
            }
            catch (SqlException ex)
            {
                if (ex.ErrorCode == 00001)
                {
                    return 0;
                }
                return -1;
            }
            finally
            {
                dbConnection.CloseConnection();
            }
            return -1;
        }

        public int InsertIntoFoodMenu(FoodMenuItem newItem)
        {
            string insertQuery = "Insert into MenuItem " +
                "( Item_name , Item_description , Item_image_url, Item_price, Category_id) " +
                "Values ( @iName , @iDesc , @iImage , @iPrice,  @iCategory)";
            dbConnection.openConnection();
            SqlCommand cmd = new SqlCommand(insertQuery, dbConnection.getSQLDBConnection());
            dbConnection.getSQLDBConnection().Open();
            //cmd.Parameters.AddWithValue("@id", newItem.id);
            cmd.Parameters.AddWithValue("@iName", newItem.itemName);
            cmd.Parameters.AddWithValue("@iDesc", newItem.itemIngredients);
            cmd.Parameters.AddWithValue("@iImage", newItem.itemImageUrl);
            cmd.Parameters.AddWithValue("@iPrice", newItem.itemPrice);
            cmd.Parameters.AddWithValue("@iCategory", newItem.menuItemCategory.id);
            
            try
            {
                if (cmd.ExecuteNonQuery() > 0)
                {

                    return 1;
                }
            }
            catch (SqlException ex)
            {
                if (ex.ErrorCode == 00001)
                {
                    return 0;
                }
                return -1;
            }
            finally
            {
                dbConnection.CloseConnection();
            }
            return -1;
        }

        public int updateFoodItem(FoodMenuItem updateItem)
        {
            string updateQuery = "UPDATE MenuItem SET Item_name = @iName, Item_description = @iDesc, Item_image_url = @iImage, Item_price = @iPrice, Category_id = @iCat where id = @ID ";
            dbConnection.openConnection();
            SqlCommand cmd = new SqlCommand(updateQuery, dbConnection.getSQLDBConnection());
            dbConnection.getSQLDBConnection().Open();
            cmd.Parameters.AddWithValue("@iName", updateItem.itemName);
            cmd.Parameters.AddWithValue("@iDesc", updateItem.itemIngredients);
            cmd.Parameters.AddWithValue("@iImage", updateItem.itemImageUrl);
            cmd.Parameters.AddWithValue("@iPrice", updateItem.itemPrice);
            cmd.Parameters.AddWithValue("@iCat", updateItem.menuItemCategory.id);
            cmd.Parameters.AddWithValue("@ID", updateItem.id);
            try
            {
                if (cmd.ExecuteNonQuery() > 0)
                {

                    return 1;
                }
            }
            catch (SqlException ex)
            {
                if (ex.ErrorCode == 00001)
                {
                    return 0;
                }
                return -1;
            }
            finally
            {
                dbConnection.CloseConnection();
            }
            return -1;
        }

        public int DeleteMenuItem(int menuID)
        {
            string updateQuery = "Delete FROM MenuItem WHERE id = @menuID;";
            dbConnection.openConnection();
            SqlCommand cmd = new SqlCommand(updateQuery, dbConnection.getSQLDBConnection());
            dbConnection.getSQLDBConnection().Open();
            cmd.Parameters.AddWithValue("@menuID", menuID);

            try
            {
                if (cmd.ExecuteNonQuery() > 0)
                {

                    return 1;
                }
            }
            catch (SqlException ex)
            {
                if (ex.ErrorCode == 00001)
                {
                    return 0;
                }
                return -1;
            }
            finally
            {
                dbConnection.CloseConnection();
            }
            return -1;
        }

        public int InsertIntoUserProfile(int memberId , string username , string gmail ,
              string userContact , string userType , string cust_address)
        {
            string insertQuery = "SET IDENTITY_INSERT dbo.customer ON; " +
                "Insert into customer " +
                "( customerid, username , email , phone , cust_role , cust_address) " +
                "Values ( @cID, @mName , @mEmail , @mContact , @mCategory , @mAddr );";
            dbConnection.openConnection();
            SqlCommand cmd = new SqlCommand(insertQuery , dbConnection.getSQLDBConnection());
            dbConnection.getSQLDBConnection().Open();
            cmd.Parameters.AddWithValue("@cID", memberId);
            cmd.Parameters.AddWithValue("@mName", username);
            cmd.Parameters.AddWithValue("@mEmail", gmail);
            cmd.Parameters.AddWithValue("@mContact", userContact);
            cmd.Parameters.AddWithValue("@mCategory", userType);
            cmd.Parameters.AddWithValue("@mAddr", cust_address);
            try
            {
                if (cmd.ExecuteNonQuery() > 0)
                {
                    
                    return 1;
                }
            }
            catch (SqlException ex)
            {
                if (ex.ErrorCode == 00001)
                {
                    return 0;
                }
                return -2;
            }
            finally
            {
                dbConnection.CloseConnection();
            }
            return -2;
        }

        public int InsertIntoUserAccount(User_Account uAccount)
        {

            string insertQuery = "Insert into account " +
                             "(customerid , userpassword) " +
                             "Values (@AH , @AP);";
            dbConnection.openConnection();
            SqlCommand cmd = new SqlCommand(insertQuery , dbConnection.getSQLDBConnection());
            dbConnection.getSQLDBConnection().Open();
            cmd.Parameters.AddWithValue("@AH" , Convert.ToInt32(uAccount.userName));
            cmd.Parameters.AddWithValue("@AP" , uAccount.userPassword);

            try
            {
                if (cmd.ExecuteNonQuery() > 0)
                {
                    
                    return 1;
                }
            }
            catch (SqlException ex)
            {
                if (ex.ErrorCode.ToString() == "ORA-00001")
                {
                    return 0;
                }
                return -1;
            }
            finally
            {
                dbConnection.CloseConnection();
            }
            return -1 ;

        }
    }
}