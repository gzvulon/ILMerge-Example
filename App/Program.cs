using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using dep1;
using dep2;

namespace App
{
    class Program
    {
        static void Main()
        {
            Console.WriteLine("Hello. I depend on {0} and {1}.",typeof(Class1).FullName,typeof(Class2).FullName);
        }
    }
}
