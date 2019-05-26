using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab
{
    class Program
    {
        static void Main(string[] args)
        {
            //LAB 2 EJERCICIO 1
            /*int nro1 = 100;
            int nro2 = 500;
            int nro3 = 250;
            int mayor;

            if (nro1 > nro2)
            {
                mayor = nro1;
            }
            else
            {
                mayor = nro2;
            }
            if (nro3 > mayor)
            {
                mayor = nro3;
            }
            Console.WriteLine("El numero mayor es {0}", mayor);
            Console.ReadKey();*/

            //LAB 2 EJERCIOCIO 4

            /*int valor1;
            int valor2;
            int opcion;

            Console.Write("Ingrese primer operando: ");
            valor1 = int.Parse(Console.ReadLine());

            Console.Write("Ingrese segundo operando: ");
            valor2 = int.Parse(Console.ReadLine());

            Console.Write("\n1)Suma\n2)Resta\n3)Producto\n4)Division\n5)Salir\n");
            opcion = int.Parse(Console.ReadLine());

         
            switch (opcion)
            {
                case 1:
                    Console.WriteLine("La suma de {0} y {1} es {2}", valor1, valor2, valor1 + valor2);
                    break;
                case 2:
                    Console.WriteLine("La resta de {0} y {1} es {2}", valor1, valor2, valor1 - valor2);
                    break;
                case 3:

                    Console.WriteLine("El producto de {0} y {1} es {2}", valor1, valor2, valor1 * valor2);
                    break;
                case 4:
                    Console.WriteLine("La division de {0} y {1} es {2}", valor1, valor2, valor1 / valor2);
                    break;
            }
            

            Console.ReadKey();*/


            //LAB 3 EJERCICIO 2

            /*int a = 1;

            while(a<=10)
            {
                Console.WriteLine("{0}", a);
                a += 2;
            }
            Console.ReadKey();*/

            //LAB 3 EJERCICIO 4

            /*int a = 1;

            while(a<=10)
            {
                if(a!=2&&a!=5&&a!=9)
                {
                    Console.WriteLine("{0}", a);
                }
                a ++;
            }
            Console.ReadKey();*/

            //LAB 3 EJERCICIO 5

            /*int a = 1;

            while(a<=30)
            {
                if(a<10||a>20)
                {
                    Console.WriteLine("{0}", a);
                }
                a++;
            }
            Console.ReadKey();*/

            //LAB 3 EJERCICIO 6

            /*int a = 1;
            int suma=0;

            while(a<=10)
            {
                suma += a;
                a++;
            }
            Console.WriteLine("Suma {0}", suma);
            Console.ReadKey();*/

            //LAB 3 EJERCICIO 7

            int a = 1;
            int suma=0;

            while(a<=25)
            {
                if(a%2==0)
                {
                    suma += a;
                }
                a++;
            }
            Console.WriteLine("Suma {0}", suma);
            Console.ReadKey();










        }
    }
}
