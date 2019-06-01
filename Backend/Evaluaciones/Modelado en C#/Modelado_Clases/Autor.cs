using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelado_Clases
{
    class Autor
    {
        public int idAutor { get; set; }
        public string nombre { get; set; } 
        public string apellido { get; set; }

        public Autor()
        {
            idAutor = generarId();
        }

        public Autor(string _nombreAutor, string _apellidoAutor)
        {   
            nombre = _nombreAutor;
            apellido = _apellidoAutor;
            idAutor = generarId();
        }

        static int nextID = 1;
        static int generarId()
        {
            return nextID++;
        }
    }      
}

