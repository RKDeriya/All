using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pattern
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            1 
            1 2 
            1 2 3 
            1 2 3 4 
            1 2 3 4 5 
            */
            /*
            int i, j;
            for(i=1; i <= 5; i++)
            {
                Console.WriteLine($" ");
                for(j=1; j<=i; j++)
                {
                    Console.Write($" {j}");
                }
            }
            Console.ReadKey();
            */

            //1 2 3 4 5
            //1 2 3 4
            //1 2 3
            //1 2
            //1
            /*
            int i, j;
            for (i = 5; i >=1; --i)
            {
                Console.WriteLine($" ");
                for (j = 1; j <= i; j++)
                {
                    Console.Write($" {j}");
                }
            }
            */

            
            Console.ReadKey();
        }
    }
}
