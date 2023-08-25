using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Generics
{
    
     public interface Base<T,V>
    {
         T Id
        {
            get;
            set;
        }

         V CreatedOn
        {
            get;
            set;
        }

    }

    public class Program
    {
        public static void Main(string[] args)
        {
            Bill<int, DateTime> objCli = new Bill<int, DateTime>();
            objCli.Id = 12;
            objCli.ClientName = "aman";
            objCli.ClientNumber = "7990213036";
            objCli.ClientEmail = "aman@1234";
            objCli.ClientPassword = "aman11";
            objCli.GenderId = 1;

            objCli.ItemName = "Single bed with Cover";
            objCli.ItemPrice = 450;
            objCli.ItemQuantity = 3;
            objCli.Operation = 1;
            objCli.OperationName = "Insert";
            int total = objCli.ItemPrice * objCli.ItemQuantity;

            Console.WriteLine(objCli.ItemName);
            Console.WriteLine(objCli.ItemPrice);
            Console.WriteLine(objCli.ItemQuantity);
            Console.WriteLine(objCli.Operation);
            Console.WriteLine(objCli.OperationName);
            Console.WriteLine("Value of bill : {0}", total);


            Console.WriteLine(objCli.Id);
            Console.WriteLine(objCli.ClientName);
            Console.WriteLine(objCli.ClientNumber);

            Console.WriteLine(objCli.ClientEmail);

            Console.WriteLine(objCli.ClientPassword);

            Console.WriteLine(objCli.GenderId);
            Console.WriteLine(objCli.ClientDOB);






            Console.ReadKey();
        }
    }
    public interface Client<T,V>: Base<T, V>,ClientGender<T>,OperationType<T>

    {
         string ClientName
        {
            get;
            set;
        }

         string ClientNumber
        {
            get;
            set;
        }

        string ClientEmail
        {
            get;
            set;
        }

         string ClientPassword
        {
            get;
            set;
        }

      

         DateTime ClientDOB
        {
            get;
            set;
        }

     
        

    }

    public interface ClientGender<T>
    {
         T GenderId
        {
            get;
            set;
        }

         string ClientGenderName
        {
            get;
            set;
        }

    }

    public interface OperationType<T>
    {
         T Operation
        {
            get;
            set;
        }

         string OperationName
        {
            get;
            set;
        }

    }



}
