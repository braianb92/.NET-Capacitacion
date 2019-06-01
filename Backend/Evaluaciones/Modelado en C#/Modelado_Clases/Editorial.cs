using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelado_Clases
{
    class Editorial
    {
        public int idEditorial { get; set; }
        public string nombre { get; set; }

        public Editorial()
        {
            idEditorial = generarId();
        }

        public Editorial(string _nombreEditorial)
        {
            nombre = _nombreEditorial;
            idEditorial = generarId();
        }

        static int nextID = 1;
        static int generarId()
        {
            return nextID++;
        }
    }
}
