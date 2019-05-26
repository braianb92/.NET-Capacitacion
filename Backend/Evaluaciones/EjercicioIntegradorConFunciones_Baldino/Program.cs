using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EjercicioIntegradorConFunciones_Baldino
{
    class Program
    {
        static int pedirNota(int nota)
        {
            do
            {
                Console.Write("Ingrese nota:");
                nota = int.Parse(Console.ReadLine());
                if(nota < 0 || nota > 10)
                {
                    Console.WriteLine("Error, dato no valido.");
                }
            } while (nota < 0 || nota > 10);
            return nota;
        }
        static void Main(string[] args)
        {
            int nota1=0;
            int nota2=0;
            int nota3=0;
            double promedio;
            const int topeAprobado = 4;
            const int topePromocion = 7;

            nota1 = pedirNota(nota1);
            nota2 = pedirNota(nota2);
            nota3 = pedirNota(nota3);

            promedio = (nota1 + nota2 + nota3) / 3.0;

            if (promedio < topeAprobado)
            {
                Console.WriteLine("No aprobado");
            }
            else if (promedio >= topePromocion)
            {
                Console.WriteLine("Promocionado");
            }
            else
            {
                Console.WriteLine("Regular");
            }
            Console.WriteLine("Promedio {0}", Math.Round(promedio,2));
            Console.ReadKey();
        }
    }
}
