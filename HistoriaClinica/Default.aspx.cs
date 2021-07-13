using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace HistoriaClinica
{
    public partial class _Default : Page
    {
        private localhost.WebService1 pacientes;

        public _Default()
        {
             pacientes = new localhost.WebService1();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if( !this.IsPostBack)
            {
                enlazarGrilla();
            }
        }

        public void enlazarGrilla()
        {
            GridView1.DataSource = pacientes.obtenerPacientes();
            GridView1.DataBind();
        }

        protected void BtnDetalle_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Response.Redirect($"~/Detalle.aspx?PacienteID={btn.CommandArgument.ToString()}");
        }

        protected void BtnEditar_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Response.Redirect($"~/Guardar.aspx?PacienteID={btn.CommandArgument.ToString()}");
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            pacientes.eliminarPaciente(int.Parse(btn.CommandArgument.ToString()));
            enlazarGrilla();
        }

    }
}