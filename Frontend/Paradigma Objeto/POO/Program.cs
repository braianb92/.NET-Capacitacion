<<<<<<< HEAD
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO
{
    class Program
    {
        static void Main(string[] args)
        {
            Alumno alumno1 = new Alumno();
            Alumno alumno2 = new Alumno();
            Alumno alumno3 = new Alumno("Jose");
            Alumno alumno4 = new Alumno("Jose","con apellido");


            //CON PROPIEDAD EN PUBLIC
            /*alumno1.dNI = 36791111;
            Console.WriteLine($"El DNI del alumno es: {alumno1.dNI}");
            Console.ReadKey();*/

            //CON PROPIEDAD EN PRIVATE HACIENDO METODO A MANO
            /*alumno1.SetDNI(36791111);
            Console.WriteLine($"El DNI del alumno es: {alumno1.GetDNI()}");
            Console.ReadKey();*/

            //CON PROPIEDAD EN PRIVATE USANDO LOS GET Y SET PROPIOS
            alumno1.DNI = 36791111;
            alumno1.Nombre = "Braian";
            alumno1.Apellido = "Baldino";
            alumno1.FechaNacimiento = Convert.ToDateTime("22/04/1992");

            alumno2.DNI = 30557788;
            alumno2.Nombre = "Juan";
            alumno2.Apellido = "Perez";
            alumno2.FechaNacimiento = Convert.ToDateTime("15/03/1997");

            //Console.WriteLine($"El DNI del alumno es: {alumno1.DNI}");
            //Console.WriteLine($"El Nombre y Apellido es: {alumno1.Nombre} {alumno1.Apellido}");

            Console.WriteLine(alumno1.traerDatos());
            Console.WriteLine($"Edad: {alumno1.traerEdad()}");
            Console.WriteLine(alumno2.traerDatos());
            Console.WriteLine($"Edad: {alumno2.traerEdad()}");

            Console.WriteLine(alumno3.traerDatos());
            Console.WriteLine($"Edad: {alumno3.traerEdad()}");

            Console.WriteLine(alumno4.traerDatos());
            Console.WriteLine($"Edad: {alumno4.traerEdad()}");




            Console.ReadKey(); 

        }
    }
}
=======
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO
{
    class Program
    {
        static void Main(string[] args)
        {
            Alumno alumno1 = new Alumno();
            Alumno alumno2 = new Alumno();
            Alumno alumno3 = new Alumno("Jose");
            Alumno alumno4 = new Alumno("Jose","con apellido");


            //CON PROPIEDAD EN PUBLIC
            /*alumno1.dNI = 36791111;
            Console.WriteLine($"El DNI del alumno es: {alumno1.dNI}");
            Console.ReadKey();*/

            //CON PROPIEDAD EN PRIVATE HACIENDO METODO A MANO
            /*alumno1.SetDNI(36791111);
            Console.WriteLine($"El DNI del alumno es: {alumno1.GetDNI()}");
            Console.ReadKey();*/

            //CON PROPIEDAD EN PRIVATE USANDO LOS GET Y SET PROPIOS
            alumno1.DNI = 36791111;
            alumno1.Nombre = "Braian";
            alumno1.Apellido = "Baldino";
            alumno1.FechaNacimiento = Convert.ToDateTime("22/04/1992");

            alumno2.DNI = 30557788;
            alumno2.Nombre = "Juan";
            alumno2.Apellido = "Perez";
            alumno2.FechaNacimiento = Convert.ToDateTime("15/03/1997");

            //Console.WriteLine($"El DNI del alumno es: {alumno1.DNI}");
            //Console.WriteLine($"El Nombre y Apellido es: {alumno1.Nombre} {alumno1.Apellido}");

            Console.WriteLine(alumno1.traerDatos());
            Console.WriteLine($"Edad: {alumno1.traerEdad()}");
            Console.WriteLine(alumno2.traerDatos());
            Console.WriteLine($"Edad: {alumno2.traerEdad()}");

            Console.WriteLine(alumno3.traerDatos());
            Console.WriteLine($"Edad: {alumno3.traerEdad()}");

            Console.WriteLine(alumno4.traerDatos());
            Console.WriteLine($"Edad: {alumno4.traerEdad()}");




            Console.ReadKey(); 

        }
    }
}
>>>>>>> e2a40dc520f2ae50cb69cd5c160a4bc341392fe8
