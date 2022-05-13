using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenParcial2
{
    public partial class About : Page
    {
        string TituloPelicula;
        static List <Pelicula> peliculaList = new List <Pelicula> ();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("Peliculas.json");
            StreamReader json = File.OpenText(archivo);
            string J = json.ReadToEnd();
            json.Close();
            peliculaList = JsonConvert.DeserializeObject<List<Pelicula>>(J);
        }
        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(peliculaList);
            string archivo = Server.MapPath("Peliculas.json");
            System.IO.File.WriteAllText(archivo, json);
        }
        protected void BotonBuscar_Click(object sender, EventArgs e)
        {
            TituloPelicula = Titulo.Text;
            bool flag = false;

            foreach (var u in peliculaList)
            {
                Pelicula PeliculaEliminar = u.Elenco.Find(c => c.Nombre == TituloPelicula);

                if (PeliculaEliminar != null)
                {
                    Titulo.Text = PeliculaEliminar.Titulo;
                    GridView1.DataSource=PeliculaEliminar.Titulo;
                    flag = true;
                }
            }
            if (!flag)
            {
                Response.Write("<script>alert('La Pelicula no fue encontrada')</script>");
                TituloPelicula = "";
                Titulo.Text = "";
            }
        }

        protected void BotonEliminar_Click(object sender, EventArgs e)
        {
            foreach (var u in peliculaList)
            {
                Pelicula PeliculaEliminar = u.Peliculas.Find(c => c.Titulo == TituloPelicula);
                if (PeliculaEliminar != null)
                {
                    u.Peliculas.Remove(PeliculaEliminar);
                    Guardar();
                }
            }
        }
    }
}