using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GenericJioMart
{
    class Program
    {
        static void Main(string[] args)
        {
            UserDetails<int> userDetailsId = new UserDetails<int>();
            userDetailsId.UserDetailsId = 1;
            Console.WriteLine(userDetailsId.UserDetailsId);

            UserDetails<float> userDetailsId1 = new UserDetails<float>();
            userDetailsId1.UserDetailsId = 12.23F;
            Console.WriteLine(userDetailsId1.UserDetailsId);
            Console.ReadKey();
        }
    }

    public class UserDetails<T>
    {
        public T UserDetailsId { get; set; }
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

    public class ProductName : Category
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

    public class Base<T>
    {
        public T Createdon { get; set; }
        public T Updatedon { get; set; }
    }
}
