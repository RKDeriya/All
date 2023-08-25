using System;


namespace first_day_practice
{
    class Program
    {
        static void Main(string[] args)
        {
            Shop objshop = new Shop();
            objshop.mensWear();
            Console.WriteLine(objshop.name);
            Console.ReadKey();

        }
    }

    public class Shop
    {
        public string name = "KGF";
        public string type = "cloths";
        public string address = "vyaawadi";
        public string open_hour = "24 hours";

        public void mensWear()
        {
            Console.WriteLine("This is for the men wear");
        }

        public void ladiesWear()
        {
            Console.WriteLine("this section for the women wear");
        }
        public void menTshirt()
        {
            Console.WriteLine("This section is for the men T-shirt");
        }
        public void womenTshirt()
        {
            Console.WriteLine("This section is for the women T-shirt");
        }
    }

    public class New : Shop
    {
        public new void mensWear()
        {
            Console.WriteLine("this is overriding");
        }
    }

}