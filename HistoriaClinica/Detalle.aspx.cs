using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace HistoriaClinica
{
    public partial class Detalle : System.Web.UI.Page
    {
        private localhost.WebService1 paciente;

        public Detalle()
        {
            paciente = new localhost.WebService1();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(Request.QueryString["PacienteID"]);
            if (ID > 0)
            {
                DataTable datos = paciente.obtenerPaciente(ID);
                DataRow filaActual = datos.Rows[0];

                string nombreCompleto = $"{filaActual["primer_nombre"]} {filaActual["segundo_nombre"]} {filaActual["primer_apellido"]} {filaActual["segundo_apellido"]}";
                
                txtNombre.Text = nombreCompleto;
                LblNombreCompleto.Text = nombreCompleto;
                txtDocumento.Text = $"{filaActual["tipo_identificacion"]} {filaActual["identificacion"]}";
                txtDireccion.Text = $"{filaActual["direccion"]}";
                txtTelefono.Text = $"{filaActual["telefono"]}";
                txtEdad.Text = $"{filaActual["edad"]}";
                txtSexo.Text = $"{filaActual["sexo"]}";
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}