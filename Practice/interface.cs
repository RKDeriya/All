using System;
namespace first_day_practice
    {
        class Program
        {
            static void Main(string[] args)
            {
                Consumer objconsumer = new Consumer();
                objconsumer.mensWear();
                objconsumer.ladiesWear();
            objconsumer.orderDate();
            objconsumer.clickonShirt();
            Console.WriteLine();
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
        
        interface ShopingApp
        {
        	void orderDate();
            void shippingDate();
            void deliveryDate();
        }

    interface ShopingWebsite
    {
        void clickonShirt();
        void clickonPants();
        
    }

        public class Consumer : Shop, ShopingApp, ShopingWebsite
    {
        public void clickonShirt()
        {
            Console.WriteLine("it show various shirt");
        }
        public void clickonPants()
        {
            Console.WriteLine("this shows varioys pants");
        }

        	public void orderDate()
            {
            	Console.WriteLine("order date is 11-12-2022");
            }
            public void shippingDate()
            {
            	Console.WriteLine("Shipping date id 12-12-2022");
            }
            
            public void deliveryDate()
            {
            	throw new NotImplementedException();
            }
        
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