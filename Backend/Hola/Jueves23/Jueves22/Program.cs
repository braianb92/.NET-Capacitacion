using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Jueves22
{
    class Program
    {
        static int IngresarNro(int num)
        {
            do
            {
                Console.Write("Ingrese un Numero positivo, <0 Fin de Ingreso: ");
                num = int.Parse(Console.ReadLine());
            } while (num < 0);
            return num;
        }

        static void Main(string[] args)
        {
            //Ingresar 8 numeros enteros positivos mayores 5, almacenarlos en el arreglo y obetener promedio.

            /*int[] vectorNumerico = new int[8];
            int valorA;
            int i=0;
            int suma = 0;
            int promedio = 0;

            while(i < vectorNumerico.Length)             //for (int i = 0; i < vectorNumerico.Length; i++)
            {
                do
                {
                    Console.Write("Ingrese un numero entero positivo mayor a 5 para posicion {0}: ",i);
                    valorA = int.Parse(Console.ReadLine());
                } while (valorA <= 5);
                vectorNumerico[i] = valorA;
                i++;

                suma += vectorNumerico[i];
            }

            for (i = 0; i < vectorNumerico.Length; i++)
            {
                suma += vectorNumerico[i];
            }
            promedio = suma / vectorNumerico.Length;
            Console.WriteLine("La suma es: {0} y el promedio es: {1}", suma, promedio);
            Console.ReadKey();*/

            //Ingrese N numeros enteros positivios y mostrar promedio. Ingresa 0 Fin Ingreso.

            int i = 0;
            int suma = 0;
            int numeroIngresado=0;

            Console.WriteLine("{0}º vez que ingresa.", i + 1);
            numeroIngresado = IngresarNro(numeroIngresado);

            while (numeroIngresado != 0)
            {
                suma += numeroIngresado;

                i++;
                Console.WriteLine("{0}º vez que ingresa.", i + 1);
                numeroIngresado = IngresarNro(numeroIngresado);
            }
            if(i!=0)
            {
                Console.WriteLine("El promedio es {0}, ingreso {1} numeros.", suma / i, i);    
            }
            else
            {
                Console.WriteLine("No hay numeros ingresados!");
            }
            Console.ReadKey();

        }
    }
 }
