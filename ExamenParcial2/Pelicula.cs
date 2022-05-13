using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamenParcial2
{
    public class Pelicula
    {
        public string Titulo { get; set; }
        public string Año { get; set; }
        
        public string Genero { get; set; }
        public string Estudio { get; set; }
        
        public  List<Actor> Elenco { get; set; }
    }
}