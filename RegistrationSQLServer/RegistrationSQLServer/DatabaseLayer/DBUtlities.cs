using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace RegistrationSQLServer.DatabaseLayer
{
    public class DBUtlities // ADO.NET code
    {
        

        private static SqlConnection GetSqlConnection() // this method is private as it will never be called from outside
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ToString();

            return new SqlConnection(connectionString);
        }

        public static int InsertUserInformation(BusinessLayer.UserInformation userInfo)
        {
            // They are not handled by CLR Garbage Collector, so using three using
            int result = -1;
            String sql = "";

            using (SqlConnection cnn = GetSqlConnection())
            {
                sql = "Insert into UserInformation(FirstName, Lastname, Address, City, Province, PostalCode, Country) " +
                        $"values ('{userInfo.FirstName}', '{userInfo.LastName}', '{userInfo.Address}', '{userInfo.City}', '{userInfo.Province}', '{userInfo.PostalCode}', '{userInfo.Country}')";

                using (SqlCommand command = new SqlCommand(sql, cnn))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter())
                    {
                        cnn.Open();
                        adapter.InsertCommand = new SqlCommand(sql, cnn);
                        result = adapter.InsertCommand.ExecuteNonQuery(); // 1 == OK
                    }
                } // command.Dispose();
            }
            return result;
        }
    }
}