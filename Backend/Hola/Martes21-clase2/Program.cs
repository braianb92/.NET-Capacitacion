using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Martes21_clase2
{
    class Program
    {
        static void Main(string[] args)
        {
            /*bool A = true;
            bool B = false;
            bool resultado = A && B;
            Console.WriteLine("{0} and {1} da {2}",A,B,resultado);

            resultado = A || B;
            Console.WriteLine("{0} or {1} da {2}",A,B,resultado);

            resultado = !A;
            Console.WriteLine("not {0} da {1}",A,resultado);*/
            //---------------------------------------------------------
            /*int A = 10;
            int B = 5;
            Console.WriteLine("{0} es mayor que {1}? {2}", A, B, A > B);
            Console.WriteLine("{0} es menor que {1}? {2}", A, B, A < B);*/
            //------------------------------------------------------------
            /*int C = 5;
            int B = 7;

            Console.WriteLine("C vale {0} y B vale {1} y C=B++ {2}", C, B, C = B++);
            Console.WriteLine("C vale {0} y B vale {1} y C=++B {2}", C, B, C = ++B*/
            //------------------------------------------------------------------
            /*int condicion = 6;
            Console.WriteLine("La variable tiene {0} ",condicion);
            if (condicion==3)
            {
                Console.WriteLine("La condicion se cumplio!");
            }
            else
            {
                Console.WriteLine("La condicion NO se cumplio!");
            }*/
            //---------------------------------------------------------------
            //VERSION 1 CONVERSION STRING A ENTERO (EXPLICITA METDODO CONVERT)
            /*int valor = 0;

            Console.Write("Ingrese un valor entero: ");
            valor = Convert.ToInt32(Console.ReadLine());
           
            if (valor==10)
            {
                Console.WriteLine("Valor ingresado {0} es igual a 10", valor);
            }
            else
            {
                Console.WriteLine("Valor ingresado {0} es distinto a 10", valor);
            }


            Console.ReadKey()*/
            //-------------------------------------------------------------
            //VERSION 2 CONVERSION STRING A ENTERO (EXPLICITA BOXING)
            /*int valor = 0;
            string ingreso;

            Console.Write("Ingrese un valor entero: ");
            ingreso = Console.ReadLine();
            valor = (int)ingreso;

            if (valor == 10)
            {
                Console.WriteLine("Valor ingresado {0} es igual a 10", valor);
            }
            else
            {
                Console.WriteLine("Valor ingresado {0} es distinto a 10", valor);
            }


            Console.ReadKey();*/
            //------------------------------------------------------------------
            //VERSION 3.1 CONVERSION STRING A ENTERO (EXPLICITA METDODO PARSE)
            /*int valor = 0;
            string ingreso;

            Console.Write("Ingrese un valor entero: ");
            ingreso=Console.ReadLine();
            valor = int.Parse(ingreso);
           
            if (valor==10)
            {
                Console.WriteLine("Valor ingresado {0} es igual a 10", valor);
            }
            else
            {
                Console.WriteLine("Valor ingresado {0} es distinto a 10", valor);
            }


            Console.ReadKey();*/
            //---------------------------------------------------------------
            //VERSION 3.2 CONVERSION STRING A ENTERO (EXPLICITA METDODO PARSE)
            /*int valor;

             Console.Write("Ingrese un valor entero: ");
             valor = int.Parse(Console.ReadLine());

             if (valor == 10)
             {
                 Console.WriteLine("Valor ingresado {0} es igual a 10", valor);
             }
             else
             {
                 Console.WriteLine("Valor ingresado {0} es distinto a 10", valor);
             }


             Console.ReadKey();*/
            //---------------------------------------------------------------------------------
            //SWITCH CON ENTERO
            /*int cond = 9;
            switch(cond)
            {
                case 10:
                    Console.WriteLine("El valor es 10");
                    break;
                case 11:
                    Console.WriteLine("El valor es 11");
                    break;
                case 12:
                    Console.WriteLine("El valor es 12");
                    break;
                default:
                    Console.WriteLine("El valor es otro");
                    break;
            }
            Console.ReadKey();*/
            //-------------------------------------------
            //SWITCH CON ENTERO
            /*char cond = 'a';
            switch (cond)
            {
                case 'a':
                    Console.WriteLine("La letra es a");
                    break;
                case 'b':
                    Console.WriteLine("La letra es b");
                    break;
                case 'c':
                    Console.WriteLine("La letra es c");
                    break;
                default:
                    Console.WriteLine("La letra es otra");
                    break;
            }
            Console.ReadKey();*/

            /*int a = 1;
            while(a<=5)
            {
                Console.WriteLine(a);
                a = a + 1;
                //a++;
                
            }

            Console.WriteLine("--Fin de iteracion--");
            Console.WriteLine("El valor de a llego a {0}", a);

            Console.ReadKey();*/

            /* int a = 5;
             while (a >= 1)
             {
                 Console.WriteLine(a);
                 a--;


             }

             Console.WriteLine("--Fin de iteracion--");
             Console.WriteLine("El valor de a llego a {0}", a);

             Console.ReadKey();*/

            int[] numeros = new int[7];
            int suma = 0;
            int prom = 0;

            numeros[0]=1;
            numeros[1]=2;
            numeros[2]=3;
            numeros[3]=4;
            numeros[4]=5;
            numeros[5]=6;
            numeros[6]=7;
            
            for(int i=0;i<numeros.Length;i++)
            {
                suma += numeros[i];
            }
            prom = suma / numeros.Length;
            Console.WriteLine("La suma es: {0} y el promedio es: {1}", suma, prom);
            Console.ReadKey();
        }
    }
}
