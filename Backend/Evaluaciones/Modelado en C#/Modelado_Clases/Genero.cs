using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelado_Clases
{
    class Genero
    {
        public int idGenero { get; set; }
        public string nombreGenero { get; set; }

        public Genero()
        {
            idGenero = generarId();
        }

        public Genero (string _nombreGenero)
        {
            nombreGenero = _nombreGenero;
            idGenero = generarId();
        }

        static int nextID = 1;
        static int generarId()
        {
            return nextID++;
        }
    }
}
