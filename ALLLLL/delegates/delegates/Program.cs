using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace delegates
{
    public class delegates
    {
        public delegate void Calculator(int a, int b);
        public static void Main(string[] args)
        {
            Calculator objcalc = new Calculator(Add);

            //Calculator Mul = null;
            objcalc += Mul;
            objcalc.Invoke(7,8);
            Console.ReadKey();



        }
        public static  void Add(int a, int b)
        {
            Console.WriteLine(a + b);
        }

        public static void Mul(int a, int b)
        {
            Console.WriteLine(a * b);
        }
    }
}
