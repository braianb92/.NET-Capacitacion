using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Funciones
{
    class Program
    {

        static int Suma(int x, int y)   //Versiòn 1
        {
            return x + y;

        }

        //static int Suma(int x, int y) //Versiòn 2
        //{
        //    int resultado = x + y;
        //    return resultado;

        //}



        static void Main(string[] args)
        {
            int a;
            int b;

            Console.Write("Ingrese primer nro: ");
            a = int.Parse(Console.ReadLine());

            Console.Write("Ingrese segundo nro: ");
            b = int.Parse(Console.ReadLine());

            Console.WriteLine("La suma es {0}", Suma(a,b));
            Console.ReadKey();
        }

        
    }
}
