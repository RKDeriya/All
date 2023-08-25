using System;
namespace first_day_practice
    {
        class Program
        {
            static void Main(string[] args)
            {
                Consumer objconsumer = new Consumer();
                Console.WriteLine(objconsumer.name);
                objconsumer.mensWear();
                objconsumer.ladiesWear();
                objconsumer.menTshirt();
            }
        }

        public abstract class Shop
        {
            public string name = "KGF";
            public string type = "cloths";
            public string address = "vyaawadi";
            public string open_hour = "24 hours";

            public abstract void mensWear();

            public abstract void ladiesWear();
            

            public void menTshirt()
            {
                Console.WriteLine("This section is for the men T-shirt");
            }

            public void womenTshirt()
            {
                Console.WriteLine("This section is for the women T-shirt");
            }
        }

        public class Consumer : Shop
        {
            public override void mensWear()
            {
                Console.WriteLine("child this section for the men wear");
            }

            public override void ladiesWear()
            {
                Console.WriteLine("child this section for the women wear");
            }
            
            public new void menTshirt()
            {
                Console.WriteLine("overloading This section is for the men T-shirt");
            }

        }


    }