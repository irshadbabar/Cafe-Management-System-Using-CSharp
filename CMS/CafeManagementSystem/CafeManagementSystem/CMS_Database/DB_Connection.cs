using System;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using CafeManagementSystem.CMS_Core;

namespace CafeManagementSystem.CMS_Database
{
    public class DB_Connection
    {
        private static DB_Connection instance = null;
        private SqlConnection dbConnection = null;

        protected DB_Connection()
        {
        }

        public static DB_Connection getInstance()
        {
            if (instance == null)
            {
                instance = new DB_Connection();
            }

            return instance;
        }

        public SqlConnection getSQLDBConnection()
        {
            return this.dbConnection;
        }

        public Boolean openConnection()
        {
            try
            {
                if (instance != null)
                {
                  //dbConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                  dbConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);     
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.StackTrace);
                return false;
            }
            
            return true;
        }

        public string ExecuteLoginQuery(User_Account uAccount , string _query)
        {
            try
            {
                if (this.openConnection() == false)
                {
                    return null;
                }
                this.dbConnection.Open();
                SqlCommand cmd = new SqlCommand(_query , this.dbConnection);
                
                cmd.Parameters.AddWithValue("@username" , uAccount.userName);
                cmd.Parameters.AddWithValue("@pwd" , uAccount.userPassword);
                
                object firstRow = cmd.ExecuteScalar();

                if (firstRow != null)
                {
                    return (string) firstRow;
                }
                return null;
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }
            finally
            {
                CloseConnection();
            }
        }

        public int ExecuteMemberIDQuery(User_Account uAccount, string _query)
        {
            try
            {
                if (this.openConnection() == false)
                {
                    return -1;
                }
                this.dbConnection.Open();
                SqlCommand cmd = new SqlCommand(_query, this.dbConnection);

                cmd.Parameters.AddWithValue("@username", uAccount.userName);
                cmd.Parameters.AddWithValue("@pwd", uAccount.userPassword);

                SqlDataReader reader = cmd.ExecuteReader();

                // Call Read before accessing data.
                reader.Read();
                int mID = (int) reader[0];

                // Call Close when done reading.
                reader.Close();
                return mID;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return -1;
            }
            finally
            {
                CloseConnection();
            }
        }

        public List<FoodMenuItem> getFoodItems(string _query)
        {
            List<FoodMenuItem> menuItems = new List<FoodMenuItem>();

            try
            {
                if (this.openConnection() == false)
                {
                    return null;
                }
                this.dbConnection.Open();
                SqlCommand cmd = new SqlCommand(_query, this.dbConnection);
                //cmd.Parameters.AddWithValue("@mID", memberid);
                SqlDataReader reader = cmd.ExecuteReader();

                // Call Read before accessing data.
                while (reader.Read())
                {
                    FoodMenuItem fi = new FoodMenuItem();
                    fi.id = (int) reader[0];

                    fi.itemName = reader[1].ToString();
                    fi.itemIngredients = reader[2].ToString();
                    fi.itemImageUrl = reader[3].ToString();
                    float x;
                    float.TryParse(reader[4].ToString(), out x);
                    fi.itemPrice = x;
                    fi.menuItemCategory.id = (int)reader[5];
                    menuItems.Add(fi);
                }

                // Call Close when done reading.
                reader.Close();
                return menuItems;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return null;
            }
            finally
            {
                CloseConnection();
            }
        }

        public int CountTotalOrders(String _query)
        {
            int totMembers = 0;

            try
            {
                if (this.openConnection() == false)
                {
                    return -1;
                }
                this.dbConnection.Open();
                SqlCommand cmd = new SqlCommand(_query, this.dbConnection);
                object firstRow = cmd.ExecuteScalar();

                if (firstRow != null)
                {
                    totMembers = (int)firstRow;
                }
                else
                {
                    totMembers = 0;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                totMembers = -1;
            }
            finally
            {
                CloseConnection();
            }

            return totMembers;
        }

        public int CountTotalMembers(String _query)
        {
            int totMembers = 0;

            try
            {
                if (this.openConnection() == false)
                {
                    return -1;
                }
                this.dbConnection.Open();
                SqlCommand cmd = new SqlCommand(_query, this.dbConnection);
                object firstRow = cmd.ExecuteScalar();

                if (firstRow != null)
                {
                    totMembers = (int)firstRow;
                }
                else
                {
                    totMembers = 0;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                totMembers = -1;
            }
            finally
            {
                CloseConnection();
            }

            return totMembers;
        }

        public void CloseConnection()
        {
            if (dbConnection != null)
            {
                try
                {
                    dbConnection.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    return;
                }
            }
        }
    }
}