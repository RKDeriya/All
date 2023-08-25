using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrimeOrNot
{
    class Program
    {
        static void Main(string[] args)
        {
             Console.WriteLine("This S/W is about checking the entered number is Prime or not");

             Console.Write("enter the number:");
             int number =Convert.ToInt32(Console.ReadLine());

             //int a = 1;
             int answer = 0;

             for (int i = 2; i <= number/2; i++)
             {
                if (number % i == 0)
                {
                    Console.WriteLine("Number is not prime");
                    answer = 1;
                    break;
                }
             }

            if (answer == 0)
            {
                Console.WriteLine("Number is prime");
                
            }
            Console.ReadKey();
        }



            /*
            int number, i,m, flag = 0;
            Console.Write("Enter the Number to check Prime: ");
            number = int.Parse(Console.ReadLine());
            m = number / 2;
            for (i = 2; i <= m; i++)
            {
                if (number % i == 0)
                {
                    Console.Write("Number is not Prime.");
                    flag = 1;
                    break;
                }
            }
            if (flag == 0)
                Console.Write("Number is Prime.");
            */
           
        
    }
}

