using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AngelC1
{
    class Program
    {
        static void Main(string[] args)
        {
            int num1 = 0;
            int num2 = 0;
            try
            {
                //Code goes here.
                Console.WriteLine("Ingresa el numero 1");
                num1 = Convert.ToInt32(Console.ReadLine());
                num1 /= num2;
                num1 /= num2;
            }
            catch (System.FormatException ex)
            {
                Console.WriteLine("Ingreso un decimal en un entero.");
                Console.WriteLine(num1);
                Console.WriteLine("Te salio un zeggo peggo");

            }
            catch (Exception ex)
            {
                Console.WriteLine("\n\nTe salio un Eggog peggo.");
                
            }
            finally
            {
                Console.WriteLine("Yo soy finally.");
            }
            Console.WriteLine("Hello world, i was born.");
            Console.ReadKey();
        }
    }
}
