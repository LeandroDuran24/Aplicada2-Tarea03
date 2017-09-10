using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tarea_2.Entidades;

namespace Tarea_2.UI.Formularios
{
    public partial class UsuarioForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        Usuarios user = new Usuarios();

        public Usuarios LlenarCampos()
        {
            //user.id_usuario = Int32.Parse(idTextbox.Text);
            user.nombres = NombreTextbox.Text;
            user.email = emailTextbox.Text;
            user.tipo_Email = tipoTextbox.Text;
            user.contrasena = claveTextbox.Text;
            return user;
        }

        public void Limpiar()
        {
            idTextbox.Text = "";
            NombreTextbox.Text = "";
            emailTextbox.Text = "";
            tipoTextbox.Text = "";
            claveTextbox.Text = "";
            confTextbox.Text = "";
        }

        protected void Nuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            user = LlenarCampos();
            BLL.UsuarioBll.Guardar(user);
            Limpiar();
            NombreTextbox.Focus();
        }
    }
}