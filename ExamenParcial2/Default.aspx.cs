using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenParcial2
{
    public partial class _Default : Page
    {
        static List<Pelicula> peliculaList = new List<Pelicula>();
        static List<string> ActoresTEMP = new List<string>();
        static List<Actor> actorList = new List<Actor>();   
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void Guardar()
        {
            string json = JsonConvert.SerializeObject(peliculaList);
            string archivo = Server.MapPath("Peliculas.json");
            System.IO.File.WriteAllText(archivo, json);
        }
        private void RefreshTextbox()
        {
            Titulo.Text = "";
            Año.Text = "";
            Genero.Text = "";
            Estudio.Text = "";
            Elenco.Text = "";
        }
        protected void BotonGuardar_Click(object sender, EventArgs e)
        {
            Pelicula pelicula = new Pelicula();
            pelicula.Titulo = Titulo.Text;
            pelicula.Año = Año.Text;
            pelicula.Genero= Genero.Text;
            pelicula.Estudio=Estudio.Text;
            pelicula.Elenco = actorList;
            peliculaList.Add(pelicula);
            GridView1.DataSource = peliculaList; GridView1.DataBind(); Guardar(); 
            RefreshTextbox(); ActoresTEMP.Clear();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Actor actores = new Actor();
            string ActorTEMP = Elenco.Text;
            actores.Peliculas = peliculaList;
            ActoresTEMP.Add(ActorTEMP);
            GridView2.DataSource=ActoresTEMP; GridView2.DataBind(); Elenco.Text = "";
        }
    }
}