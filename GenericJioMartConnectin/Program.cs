using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GenericJioMart
{
    

    public class UserDetails
    {
        public int UserDetailsId { get; set; }
        public string UserName { get; set; }
        public string UserAddress { get; set; }
        public string UserMobileno { get; set; }
        public DateTime Createdon { get; set; }
        public DateTime Updatedon { get; set; }

    }

    public class Category
    {
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public DateTime Createdon { get; set; }
        public DateTime Updatedon { get; set; }

    }

    public class ProductName
    {
        public int ProductNameId { get; set; }
        public string ProductNameValue { get; set; }
        public int ProductPrice { get; set; }
        //public int CategoryId { get; set; }
        public DateTime Createdon { get; set; }
        public DateTime Updatedon { get; set; }

    }
    public class OrderDetails
    {
        public int OrderDetailsId { get; set; }
        //public int UserDetailsId { get; set; }
        public int ProductNameId { get; set; }
        public DateTime OrderDate { get; set; }
        public DateTime Createdon { get; set; }
        public DateTime Updatedon { get; set; }

    }


    public class DatabaseManager
    {
        private string connectionString = ""; // Replace with your actual connection string

        public void InsertUserDetails(UserDetails userDetails)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO UserDetails (UserName, UserAddress, UserMobileNo, CreatedOn, UpdatedOn) " +
                               "VALUES (@UserName, @UserAddress, @UserMobileNo, @CreatedOn, @UpdatedOn)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserName", userDetails.UserName);
                    command.Parameters.AddWithValue("@UserAddress", userDetails.UserAddress);
                    command.Parameters.AddWithValue("@UserMobileNo", userDetails.UserMobileno);
                    command.Parameters.AddWithValue("@CreatedOn", userDetails.Createdon);
                    command.Parameters.AddWithValue("@UpdatedOn", userDetails.Updatedon);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        // Implement similar methods for other operations like updating, deleting, selecting, etc.
    }

    class Program
    {
        static void Main(string[] args)
        {
            UserDetails user = new UserDetails
            {
                UserName = "John Doe",
                UserAddress = "123 Main St",
                UserMobileno = "1234567890",
                Createdon = DateTime.Now,
                Updatedon = DateTime.Now
            };

            DatabaseManager dbManager = new DatabaseManager();
            dbManager.InsertUserDetails(user);

            Console.WriteLine("User details inserted successfully.");
        }
    }
}

