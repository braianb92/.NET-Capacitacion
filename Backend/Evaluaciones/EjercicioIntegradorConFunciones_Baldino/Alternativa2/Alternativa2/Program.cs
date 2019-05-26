using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Alternativa2
{
    class Program
    {
       
        static void Informar_inflacionAnual(double[] vector)
        {
            double suma = 0;

            for (int i = 0; i < vector.Length; i++)
            {
                suma += vector[i];
            }
            Console.WriteLine("Inflacion anual es de: {0}", suma);
        }

        static void Informar_inflacionMasBaja(double[] vector,string[] meses)
        {
            double min = vector[0];
            string mes = "";
            for (int i = 0; i < vector.Length; i++)
            {
                if (vector[i] < min)
                {
                    min = vector[i];
                    mes = meses[i];
                }
            }
            Console.WriteLine("La inflacion mas baja: {0} del mes {1} ", min, mes);
        }

        static void Informar_inflacionMasAlta (double[] vector,string[] meses)
        {
            int i = 0;
            string mes = "";
            double max = 0;
            for (i = 0; i < vector.Length; i++)
            {
                if(vector[i]>max)
                {
                    max = vector[i];
                    mes = meses[i];
                }
            }
            Console.WriteLine("La inflacion mas alta: {0} del mes {1} ",max,mes);
        }

        static void Informar_promedioInflacion(double[] vector)
        {
            double suma = 0;

            for (int i = 0; i < vector.Length ; i++)
            {
                suma += vector[i];
            }
            Console.WriteLine("El promedio de la inflacion es: {0}", Math.Round((suma/12),2));
        }

        static void Main(string[] args)
        {
            double[] vectorInflacion = new double [12]
            { 0.8,0.1,0.3,0.4,0.3,0.6,0.5,0.3,0.7,0.3,0.2,0.9};

            string[] vectorMes = new string[12]
            { "Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"};

            Informar_inflacionAnual(vectorInflacion);
            Informar_inflacionMasBaja(vectorInflacion,vectorMes);
            Informar_inflacionMasAlta(vectorInflacion,vectorMes);
            Informar_promedioInflacion(vectorInflacion);

            Console.ReadKey();
        }
    }
}
