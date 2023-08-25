using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lasttry_array
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Array methods and functions");

           string[] cars = new string[]{ "Volvo", "BMW", "Ford", "Mazda" };
           cars[0] = "rK";
           string[] fruits = { "rf","banana", "apple", "guava", "mango", "jamun" };
           string[] fruits1 = { "rf","banana", "apple", "guava", "mango", "jamun" };
           string[] fruits2 = new string[7];
           int[] number = { 1, 2, 3, 4, 5, 9, 8, 7, 6, 5, 10 };
           
           fruits.CopyTo(fruits2, 0);
            ////Console.WriteLine(fruits.Length);   //GIVES OUTPUT > LENGTH
            ////Console.WriteLine(fruits.Rank);     // TELL ABOUT 1D OR 2d
            ////fruits.SetValue("MAN", 2);          // SET VALUE AT PARTICULAR INDEX
            ////Console.WriteLine(fruits.GetValue(2));// SHOW VALUE PRESENT AT PARTICULAR POSITION
            ////Console.WriteLine(Array.IndexOf(fruits, "mango")); //GIVES INDEX
            //
            //if (Enumerable.SequenceEqual(fruits, fruits1))   //FOR COMPARING TWO ARRAY IN PARTICULAR SEQUENCE
            //{
            //    Console.WriteLine("eQUAL"); 
            //}
            ////Array.Sort(fruits);      // sort the element
            ////Array.Reverse(fruits);         //set in reverse order
            //string[] newarray = (fruits,"Rajesh");
            //int[] originalArray = { 1, 2, 3, 4 };
            //int elementToAdd = 5;
            //int[] newArray = Append(originalArray, elementToAdd);
            //
            //
            ////cars.CopyTo(fruits,2); //--act like change the actual element
            ////Console.WriteLine(fruits.ElementAtOrDefault(3));
            ////Console.WriteLine(fruits.AsEnumerable());
            //
            ////Console.WriteLine(fruits.GetEnumerator());   // generate error
            //
            //foreach (string item in fruits)
            //{
            //    Console.WriteLine(item);
            //}
            Console.ReadKey();


        }
    }
}
