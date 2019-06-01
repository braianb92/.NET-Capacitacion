using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EjemploClaseAuto
{
    public class Auto
    {
        protected double _velocidad = 0; // Se accede dentro de la clase Auto y en las clases derivadas
        //private string _marca;
        private string _modelo;
        private string _color;

        public Auto(string marca, string modelo, string color)
        {
            //_marca = marca;
            this.Marca = marca; //POR LA AUTOIMPLEMENTADA
            _modelo = modelo;
            _color = color;
        }

        public Auto()
        {
        }

        public string Marca { get; set; } //Autoimplementada

        //	Propiedad Velocidad (solo lectura) 
        public double Velocidad
        {
            get { return _velocidad; }
        }

        /*public string Marca
        {
            get { return _marca; }
            set { _marca = value; }
        }*/

        public string Modelo
        {
            get { return _modelo; }
            set { _modelo = value; }
        }

        public string Color
        {
            get { return _color; }
            set { _color = value; }
        }

        //	Método Acelerar
        public void Acelerar(double cantidad)
        {
            if((cantidad+Velocidad)>=1 && (cantidad+Velocidad)<=120)
            {
                
                Console.WriteLine("--> Incrementando veloc. en {0} km/h", cantidad);
                _velocidad += cantidad;
            }
            else if((cantidad+Velocidad)>120)
            {
                Console.WriteLine("Esta sobrepasando la velocidad!");
            }
            else
            {
                Console.WriteLine("Esta por debajo de la velocidad permitida!");
            }
            
        }

        // Método Girar
        public void Girar(double cantidad)
        {
            if(cantidad>0)
            {
                Console.WriteLine("--> Girando {0} grados a la derecha", cantidad);
            }
            else
            {
                Console.WriteLine("--> Girando {0} grados a la izquierda", cantidad*-1);
            } 
        }

        // Método Frenar
        public void Frenar(double cantidad)
        {
            if((Velocidad-cantidad)>=1&&(Velocidad-cantidad)<=120)
            {
                Console.WriteLine("--> Reduciendo veloc. en {0} km/h", cantidad);
                _velocidad -= cantidad;
            }
            else
            {
                Console.WriteLine("--> La velocidad no puede disminuirse. en {0} km/h", cantidad);

            }
            
        }

        // Método Estacionar
        public void Estacionar()
        {
            Console.WriteLine("-->Estacionando auto");
            _velocidad = 0;
        }

    }

}

