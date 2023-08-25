using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


// C# Program to illustrate how 
// a destructor works

namespace GeeksforGeeks
{
    class Complex
    {
        int real, img;

        // Defining the constructor
        public Complex()
        {
            real = 0;
            img = 0;
        }
        public void SetValue(int r, int i)
        {
            real = r;
            img = i;
        }


        public void DisplayValue()
        {
            Console.WriteLine("Real = " + real);
            Console.WriteLine("Imaginary = " + img);
        }

        // Defining the destructor
        // for class Complex
        ~Complex()
        {
            Console.WriteLine("Destructor was called");
        }
    }


    // Driver Class
    class Program
    {
        static void Main(string[] args)
        {

            Complex C = new Complex();

            // Calling SetValue method using
            // real to 2 and img to 3
            C.SetValue(2, 3);

            // Displaying values
            C.DisplayValue();

            // Instance is no longer needed
            // Destructor will be called
            Console.ReadKey();

        } // End Main

    } // End class Program

}