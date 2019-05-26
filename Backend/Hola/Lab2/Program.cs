using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab2
{
    class Program
    {
        static void Main(string[] args)
        {
            int nro1 = 100;
            int nro2 = 500;
            int nro3 = 250;
            int mayor;

            if(nro1>nro2)
            {
                mayor = nro1;
            }
            else if(nro2>nro3)
            {
                mayor = nro3;
            }
            Console.WriteLine("El numero mayor es {0}", mayor);


        }
    }
}
