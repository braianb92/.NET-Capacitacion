using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO
{
    class Alumno
    {
        int dNI;

        /*public void SetDNI(int valor)
        {
            dNI = valor;
        }

        public int GetDNI()
        {
            return dNI;
        }*/

        //MEZCLA DE METODO-PROPIEDAD
        /*public int DNI
        {
            set { dNI = value; }
            get { return dNI;}
        }*/

         //METODO ARRIBA PERO ABREVIADO
        public int DNI { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public DateTime FechaNacimiento { get; set; }

        public string traerDatos()
        {
            return "DNI: " + DNI + "\nNOMBRE: " + Nombre + "\nAPELLIDO: " + Apellido;
        }

        public int traerEdad()
        {
            return DateTime.Today.AddTicks(-FechaNacimiento.Ticks).Year - 1;
        }

        //3 EJEMPLOS DE SOBRECARGA-OVERLOAD
        public Alumno()
        {
            Console.WriteLine("Se creo un objeto-alumno sin parametros");
        }

        public Alumno(string nombre)
        {
            Console.WriteLine("Se creo un objeto-alumno con un parametro");
            Nombre = nombre;
        }

        public Alumno(string nombre,string apellido)
        {
            Console.WriteLine("Se creo un objeto-alumno con dos parametros");
            Nombre = nombre;
            Apellido = apellido;
        }
    }
}
