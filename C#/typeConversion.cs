using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace test1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Double balance = 100;
            Console.WriteLine("Please enter your name: ");
            string name = Console.ReadLine();
            Console.WriteLine("Hello " + name + ", Your current balance is: Rs. " + balance);
            Console.WriteLine("Please enter transfer amount: Rs. ");
            string tValue = Console.ReadLine();
            Console.WriteLine("Transfer Successfull.");
            Console.WriteLine("Your current account balance is: Rs. " + 
                (balance - (Convert.ToDouble(tValue))));
            Console.ReadLine();
           
        }
    }
}
