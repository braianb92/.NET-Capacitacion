using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ejercicio_if_else
{
    class Program
    {
        static void Main(string[] args)
        {
            int nota1;
            int nota2;
            int nota3;
            const int promocionado = 7;
            const int aprobado = 4;
            double promedio;

            Console.Write("Ingrese nota de primer alumno: ");
            nota1 = int.Parse(Console.ReadLine());

            Console.Write("Ingrese nota de segundo alumno: ");
            nota2 = int.Parse(Console.ReadLine());

            Console.Write("Ingrese nota de tercer alumno: ");
            nota3 = int.Parse(Console.ReadLine());

            promedio = (nota1 + nota2 + nota3) / 3.0;

            if (promedio>=promocionado)
            {
                Console.WriteLine("Promocionado con {0:N2}",promedio);
            }
            else if (promedio>=aprobado)
            {
                Console.WriteLine("Regular con {0}", Math.Round(promedio, 2));
            }
            else
            {
                Console.WriteLine("No aprobado con {0}",Math.Round(promedio,2));
            }

            Console.ReadKey();
        }
    }
}
