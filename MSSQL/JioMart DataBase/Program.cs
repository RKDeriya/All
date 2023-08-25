﻿using JioMartGeneric;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JioMartGeneric
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Base<DateTime> objbase = new Base<DateTime, DateTime>;
            objbase.CreatedOn = DateTime.Now;
            objbase.UpdatedOn = DateTime.Now;

            UserDetails objUserDetails = new UserDetails(DateTime,DateTime);
            objUserDetails.UserDetailsId = "1";
            objUserDetails.UserFirstname = "Aman";
            objUserDetails.Userlastname = "Gupta";
            objUserDetails.UserAdress = "Kalol,Gandhinagar";
            objUserDetails.UserMobileNo = "123456789";
            objUserDetails.UserWalletBalance = "Aman";
            objbase.CreatedOn = DateTime.Now;
            objbase.UpdatedOn = DateTime.Now;


            Console.WriteLine($"UserDetailsId:{objUserDetails.UserDetailsId}");
            Console.WriteLine($"UserFirstname:{objUserDetails.UserFirstname}");
            Console.WriteLine($"Userlastname:{objUserDetails.Userlastname}");
            Console.WriteLine($"UserAdress:{objUserDetails.UserAdress}");
            Console.WriteLine($"UserMobileNo:{objUserDetails.UserMobileNo}");
            Console.WriteLine($"UserMobileNo:{objUserDetails.UserMobileNo}");
            Console.WriteLine($"UserWalletBalance:{objUserDetails.UserWalletBalance}");
            Console.WriteLine($"CreatedOn:{objUserDetails.CreatedOn}");
            Console.WriteLine($"UpdatedOn:{objUserDetails.UpdatedOn}");
            Console.ReadKey();
        }
    }

    public class Base<T,V>
    {
        public T CreatedOn { get; set; }
        public V UpdatedOn { get; set; }
    }
    public class UserDetails: Base<T,V>
    {
      
        public int UserDetailsId { get; set; }
        public string UserFirstName { get; set; }
        public string UserLastName { get; set; }
        public string UserAddress { get; set; }
        public string UserMobileNo { get; set; }
        public float UserWalletBalance { get; set; }
    }

    public class Category: Base<T,T>
    {
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
    }

    public class ProductDetails: Base<T,T>
    {
        public int ProductDetailsId { get; set; }
        public string ProductName { get; set; }
        public float ProductPrice { get; set; }
        public int ProductStockQuantity { get; set; }
        public int CategoryId { get; set; }
        
    }

    public class CartDetails: Base<T,T>
    {
        public int CartDetailsId { get; set; }
        public int ProductDetailsId { get; set; }
        public int ProductQuantity { get; set; 
        public float CartTotalPrice { get; set; }
        public string CartOrderStatus { get; set; } = "Not Complete";
        public int UserDetailsId { get; set; }
     
    }

    public class OrderDetails: Base<T,T>
{
        public int OrderDetailsId { get; set; }
        public int CartDetailsId { get; set; }
        public string OrderPaymentMode { get; set; }
        public int OrderTotalPrice { get; set; }
        public string OrderDeliveryStatus { get; set; } = "InProgress";
        public DateTime OrderDate { get; set; }
      
    }

}
