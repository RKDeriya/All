// using System;
// using System.Collections.Generic;
// using System.Linq;
// using System.Text;
// using System.Threading.Tasks;
// 
// namespace class_practice
// {
//    public class Program
//     {
//         static void Main(string[] args)
//         {
//             Car objcar = new Car();
//             Bike objbike = new Bike();
//             objbike.buyCar();
//             Console.ReadKey();
//         }
//     }
// 
//     public class Car
//     {
//         public void buyCar()
//         {
//             Console.WriteLine("you have to pay 20000$");
//         }
//     }
// 
//         public class Bike : Car
//         {
//             public new void buyCar()
//             {
//                 Console.WriteLine($"you have to pay 50000$");
//             }
// 
//             public void buyBike()
//             {
//                 Console.WriteLine("Bike is free for you");
//             }
//         }
// }




 using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace class_practice
{
    public class Program
    {
        static void Main(string[] args)
        {
            List<string> lstAuthor = new List<string>();
            List<string> lstBook = new List<string>();
            lstAuthor.Add("Rajesh Deriya");
            lstAuthor.Add("Karan Shah");
            lstAuthor.Add("Darshan Modi");
            lstAuthor.Add("Tithi Patel");
            lstAuthor.Add("Aman Gupta");
            lstAuthor.Add("Pankaj Bhai");
            lstAuthor.Insert(3,"Father");
            lstBook.Add("Welth");
            lstBook.Add("Building");
            lstBook.Add("Stock market");
            lstAuthor.Remove("Father");
            lstAuthor.RemoveAt(3);
            Console.WriteLine($"Element at {lstAuthor.ElementAt(3)}");
            Console.WriteLine($"Element ator default {lstAuthor.ElementAtOrDefault(12)}");
            // lstAuthor.Reverse();
            
            List<String> cars = new List<string> { "Ford", "Honda", "Suzuki", "Tata", "LandRover", "Jaguar" ,"Tamil","Telugu"};
            string foundcars = cars.Find(c => c.StartsWith("T"));
            Console.WriteLine(foundcars);



            // foundFruit will be "banana"

            Console.WriteLine(lstAuthor.IndexOf("Rajesh Deriya"));
            Console.WriteLine();
            lstAuthor.AddRange(new string[] {"dfgdgf","sfgsg","sgfwsdg"});
            Console.WriteLine(lstAuthor.Count());  //before addrange
            lstAuthor.AddRange(lstBook);
            Console.WriteLine(lstAuthor.Count());  // After add range
            Console.WriteLine(lstAuthor.Contains("Rajesh Deriya"));
            lstAuthor.Capacity = 18;


           
            //lstAuthor.Sort();
            //lstAuthor.Clear();
            foreach (string a in lstAuthor)
            {
                Console.WriteLine($"{a} ");
            }

            //lstAuthor.All()

            /*if (lstAuthor.Any())     // use of any()
            {
                foreach(string a in lstAuthor)
                {
                    Console.Write(a);
                }
            }
            else
            {
                Console.WriteLine("Data is not available");
            }
            */

            Console.WriteLine($"Capacity of the the lstAuthor list is {lstAuthor.Capacity} ");   // capacity

            Console.ReadKey();
        }

        // List with default capacity
       // List<Int16> list = new List<Int16>();
        // List with capacity = 5
        //List<string> authors = new List<string>(5);
        //string[] animals = { "Cow", "Camel", "Elephant" };
        // List<string> animalsList = new List<string>(animals);\
    }
}