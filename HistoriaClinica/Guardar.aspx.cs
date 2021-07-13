using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace HistoriaClinica
{
    public partial class Guardar : System.Web.UI.Page
    {
        localhost.WebService1 paciente;
        
        public Guardar()
        {
            paciente = new localhost.WebService1();    
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int ID = Convert.ToInt32(Request.QueryString["PacienteID"]);
                if (ID > 0)
                {
                    DataTable datos = paciente.obtenerPaciente(ID);
                    DataRow filaActual = datos.Rows[0];

                    string nombreCompleto = $"{filaActual["primer_nombre"]} {filaActual["segundo_nombre"]} {filaActual["primer_apellido"]} {filaActual["segundo_apellido"]}";

                    Page.Title = $"Editar {nombreCompleto}";
                    lblTitle.Text = $"Editar {nombreCompleto}";

                    /*Llenar los campos del formulario*/
                    txtId.Text = filaActual["id"].ToString();
                    txtPrimerNombre.Text = filaActual["primer_nombre"].ToString();
                    txtSegundoNombre.Text = $"{filaActual["segundo_nombre"]}";
                    txtPrimerApellido.Text = $"{filaActual["primer_apellido"]}";
                    txtSegundoApellido.Text = $"{filaActual["segundo_apellido"]}";
                    txtDocumento.Text = $"{filaActual["identificacion"]}";
                    DropDownListTipoDocumento.SelectedValue = $"{filaActual["tipo_identificacion"]}";
                    txtDireccion.Text = $"{filaActual["direccion"]}";
                    txtTelefono.Text = $"{filaActual["telefono"]}";
                    txtEdad.Text = $"{filaActual["edad"]}";
                    txtSexo.Text = $"{filaActual["sexo"]}";
                    //txtFecNac.Text = $"{filaActual["fecha_nacimiento;
                    txtFecNac.Text = Convert.ToDateTime(filaActual["fecha_nacimiento"]).Date.ToString("yyyy-MM-dd");
                }
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            localhost.Paciente Datos = new localhost.Paciente();

            Datos.primer_nombre = txtPrimerNombre.Text;
            Datos.segundo_nombre = txtSegundoNombre.Text;
            Datos.primer_apellido = txtPrimerApellido.Text;
            Datos.segundo_apellido = txtSegundoApellido.Text;
            Datos.tipo_identificacion = DropDownListTipoDocumento.SelectedValue;
            Datos.identificacion = txtDocumento.Text;
            Datos.telefono = txtTelefono.Text;
            Datos.direccion = txtDireccion.Text;
            Datos.sexo = txtSexo.Text;
            Datos.edad = int.Parse(txtEdad.Text);
            Datos.fecha_nacimiento = txtFecNac.Text;

            if (string.IsNullOrEmpty(txtId.Text))
            {
                paciente.guardarPaciente(Datos);
            }
            else
            {
                paciente.actualizarPaciente(int.Parse(txtId.Text), Datos);
            }

            Response.Redirect("~/Default.aspx");
        }
    }
}