using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelado_Clases
{
    class Libro
    {
        public int idLibro { get; set; }
        public Autor idAutor { get; set; }
        public Editorial idEditorial { get; set; }
        public Genero idGenero { get; set; }
        public string titulo { get; set; }
        public int cantidad { get; set; }

        public Libro()
        {
            idLibro = generarId();
        }

        public Libro(string _nombreLibro,int _cantidad,Autor _idAutor,Editorial _idEditorial,Genero _idGenero)
        {
            titulo = _nombreLibro;
            idAutor = _idAutor;
            idEditorial = _idEditorial;
            idGenero = _idGenero;
            idLibro = generarId();
        }

        static int nextID=1;
        static int generarId()
        {
            return nextID++;
        }
    }
}
