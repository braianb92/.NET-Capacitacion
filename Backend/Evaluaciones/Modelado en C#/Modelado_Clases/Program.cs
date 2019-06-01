using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelado_Clases
{
    class Program
    {
        static void Main(string[] args)
        {
            //string libroAutor;
            //string libroGenero;
            //string libroEditorial;

            Genero genero1 = new Genero("Terror");
            Genero genero2 = new Genero("Educacion");
            Genero genero3 = new Genero("Drama");
            Genero genero4 = new Genero("Epico");

            Autor autor1 = new Autor("Stephen", "King");
            Autor autor2 = new Autor("Oscar","Wilde");
            Autor autor3 = new Autor("Mario","Benedetti");
            Autor autor4 = new Autor("JR", "Tolkien");

            Editorial editorial1 = new Editorial("Cuspide");
            Editorial editorial2 = new Editorial("Debolsillo");
            Editorial editorial3 = new Editorial("Oxford");

            //Punto A
            Libro libro1 = new Libro();

            //Punto B
            libro1.titulo = "Fantasma de Canterville";
            libro1.cantidad = 10;
            libro1.idAutor = autor2;
            libro1.idEditorial = editorial3;
            libro1.idGenero = genero1;

            //Punto C
            Console.WriteLine("Libro: {0}\nCantidad: {1}\n Autor: {2} {3}\nGenero: {4}\n Editorial: {5}\n", libro1.titulo,
                               libro1.cantidad, libro1.idAutor.nombre,libro1.idAutor.apellido,libro1.idGenero.nombreGenero,libro1.idEditorial.nombre);
            

            //Punto D
            List<Libro> librosList = new List<Libro>()
            {
                new Libro() {titulo="El Retrato de Dorian Grey",cantidad=10,idGenero=genero1,idAutor=autor2,idEditorial=editorial3},
                new Libro() {titulo="Hobbit",cantidad=100,idGenero=genero4,idAutor=autor4,idEditorial=editorial3},
                new Libro() {titulo="Payaso IT",cantidad=43,idGenero=genero1,idAutor=autor1,idEditorial=editorial1},
                new Libro() {titulo="Poesia",cantidad=35,idGenero=genero3,idAutor=autor3,idEditorial=editorial2}
            };

            //Punto E
            foreach (var elemento in librosList)
            {
                Console.WriteLine("Libro: {0}\nCantidad: {1}\n Autor: {2} {3}\nGenero: {4}\n Editorial: {5}\n",elemento.titulo,elemento.cantidad,
                                    elemento.idAutor.nombre, elemento.idAutor.apellido,elemento.idGenero.nombreGenero,elemento.idEditorial.nombre);
            }
            Console.ReadKey();




        }
    }
}
