//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace Properties
//{
//    public class Program
//    {
//        static void Main(string[] args)
//        {

//            SbiBank objbank = new SbiBank();
//            objbank.Name = "Rajesh";
//            Console.WriteLine(objbank.Name);
//            //Console.WriteLine(objbank.name);

//          //objbank.account_no = 5689;
//            Console.WriteLine(objbank.account_no);
//            Console.ReadLine();
//        }
//    }


//    public class SbiBank
//    {
//        public string Bank_Name = "Sbi Bank";
//        public int ifsc_code = 456;

//        private int Account_no = 123;

//        public int account_no
//        {
//            get { return Account_no; }
//            set { Account_no = value; }
//        }


//        private string name = "Ajay";
//        public string Name
//        {
//            get { return name; }
//            set { name = value; }
//        }
//    }
//}


using System;



namespace Set_get_example
{
    public class Program
    {
        static void Main(string[] args)
        {
            Employee emp = new Employee(24, "pankaj", "pankaj@123", 'm', false, 29);

            Employee emp2 = new Employee(25, "dummy", "dummy@123", 'f', false, 25);

            emp2.empPassword = "dummy@1234";



            // Access and display the employee information
            Console.WriteLine("Employee ID: " + emp.EmId);
            Console.WriteLine("Employee Name: " + emp.EmpName);
            Console.WriteLine("Employee pass: " + emp2.empPassword);
            Console.WriteLine("Employee Gender: " + emp.EmpGender);
            Console.WriteLine("Employee Disability: " + emp.Disablity);
            Console.WriteLine("Employee Age: " + emp.EmpAge);
            Console.ReadLine();
        }
    }

    class Employee
    {
        public int EmId { get; set; }
        public string EmpName { get; set; }
        private string EmpPassword { get; set; }

        public string empPassword
        {
            get { return empPassword; }
            set { empPassword = value; }
        }
        public char EmpGender { get; set; }
        public bool Disablity { get; set; }
        public int EmpAge { get; set; }

        public Employee(int emId, string empName, string empPassword, char empGender, bool disablity, int empAge)
        {
            EmId = emId;
            EmpName = empName;
            EmpPassword = empPassword;
            EmpGender = empGender;
            Disablity = disablity;
            EmpAge = empAge;
        }
    }
}