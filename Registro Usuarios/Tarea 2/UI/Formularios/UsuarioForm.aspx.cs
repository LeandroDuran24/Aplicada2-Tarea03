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
            this.fecha.Text = string.Format("{0:G}", DateTime.Now);



            ScriptResourceDefinition myScriptResDef = new ScriptResourceDefinition();
            myScriptResDef.Path = "~/Scripts/jquery-1.4.2.min.js";
            myScriptResDef.DebugPath = "~/Scripts/jquery-1.4.2.js";
            myScriptResDef.CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js";
            myScriptResDef.CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.js";
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", null, myScriptResDef);
        }

        Usuarios user = new Usuarios();

        public Usuarios LlenarCampos()
        {
            //user.idUsuario = Int32.Parse(idTextbox.Text);
            user.nombres = NombreTextbox.Text;
            user.email = emailTextbox.Text;
            user.fecha = Convert.ToDateTime(fecha.Text);
            user.tipoEmail = tipoTextbox.Text;
            user.clave = claveTextbox.Text;
            user.confirmar = confTextbox.Text;
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
            RequiredFieldValidator1.Text = "";
            RequiredFieldValidator2.Text = "";
            RequiredFieldValidator3.Text = "";
            RequiredFieldValidator4.Text = "";
            RequiredFieldValidator5.Text = "";
            
        }

        


        protected void Nuevo_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                if (user.idUsuario != 0)
                {

                    BLL.UsuarioBll.Mofidicar(user);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Se Ha Modificado Correctamente');</script>");
                }
                else
                {
                    user = LlenarCampos();
                    BLL.UsuarioBll.Guardar(user);
                    
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Se Guardo Correctamente');</script>");
                    Limpiar();
                    NombreTextbox.Focus();

                }
            }
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(idTextbox.Text);
            user = BLL.UsuarioBll.Buscar(p => p.idUsuario == id);
            
            
            
            //if(idTextbox.Text=="")
            //{
            //    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Debe de Insertar el Id a Buscar');</script>");
            //}
            //else
            //{
                if (user != null)
                {
                    emailTextbox.Text = user.email;
                    NombreTextbox.Text = user.nombres;
                    claveTextbox.Text = user.clave;
                    confTextbox.Text = user.confirmar;
                    tipoTextbox.Text = user.tipoEmail;

                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('No existe ese Registro');</script>");
                }
            //}


           
        }

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(idTextbox.Text);
            user = BLL.UsuarioBll.Buscar(p => p.idUsuario == id);

            if (user != null)
            {
                if (user.idUsuario != 1)
                {
                    BLL.UsuarioBll.Eliminar(user);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Se ha Eliminado Correctamente');</script>");
                    Limpiar();
                    NombreTextbox.Focus();
                }
                


            }
           
        }
    }
}