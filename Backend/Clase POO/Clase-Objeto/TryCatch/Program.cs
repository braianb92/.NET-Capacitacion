using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TryCatch
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                int i, k = 0, j;
                Console.Write("Enter a number one: ");
                i = Convert.ToInt32(Console.ReadLine());
                Console.Write("Enter a number two: ");
                j = Convert.ToInt32(Console.ReadLine());
                k = i / j;
                Console.WriteLine("Output of division : {0}", k);
                Console.ReadKey();
            }
            catch (DivideByZeroException ex)
            {
                Console.WriteLine(ex.Message);
                Console.ReadKey();
            }
            catch(FormatException ex)
            {
                Console.WriteLine(ex.Message);
                Console.ReadKey();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error General" + ex.Message);
                Console.ReadKey();
            }
        }
    }
}
