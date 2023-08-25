using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Armstrong
{
    class Program
    {
        static void Main(string[] args)
        {

            int i, a,temp;
            Console.WriteLine("This S/W is about checking the entered number is Armstrong or not");

            Console.Write("enter the number:");
            int number = Convert.ToInt32(Console.ReadLine());
            int sum = 0;
            temp = number;
            while (number > 0)
            {
                a = number % 10;
                sum = sum + (a * a * a);
                number = number / 10;
            }
            if (temp == sum)
            {
                Console.WriteLine("Number is Armstrong");
            }
            else
            {
                Console.WriteLine("not Armstrong");
            }
            Console.ReadKey(); 
        }
    }
}
