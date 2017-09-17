using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tarea_2.Entidades;

namespace Tarea_2.UI.Formularios
{
    public partial class FormConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                Usuarios user = new Usuarios();
                GridView1.DataSource = BLL.UsuarioBll.GetListTodo();
                GridView1.DataBind();
            

            
        }
        public List<Usuarios> lista { get; set; }


        public void SeleccionarCombo()
        {
            if(DropDownList1.SelectedIndex==0)
            {
                int id = Convert.ToInt32(TextBox1.Text);
                lista = BLL.UsuarioBll.GetList(p => p.idUsuario == id);
                GridView1.DataSource = lista;
                GridView1.DataBind();
            }
            else if(DropDownList1.SelectedIndex==1)
            {
                if(TextBox1.Text=="")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Debe de Insertar el Nombre');</script>");
                }
                else
                {
                    lista = BLL.UsuarioBll.GetList(p => p.nombres == TextBox1.Text);
                    GridView1.DataSource = lista;
                    GridView1.DataBind();
                }
                

            }
            else if(DropDownList1.SelectedIndex==2)
            {
               DateTime desde= Convert.ToDateTime(desdeFecha.Text);
               DateTime hasta= Convert.ToDateTime(desdeFecha.Text);

                if(desdeFecha.Text!= "" && hastaFecha.Text!="")
                {
                    if (desde <= hasta)
                    {
                        lista = BLL.UsuarioBll.GetList(p => p.fecha >= desde && p.fecha <= hasta);
                        GridView1.DataSource = lista;
                        GridView1.DataBind();
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('La Primera Fecha debe ser Menor a la Segunda Fecha');</script>");
                    }
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Debe de Insertar el Intervalo de Fecha');</script>");
                }
                

               
            }
            else if (DropDownList1.SelectedIndex == 3)
            {

                lista = BLL.UsuarioBll.GetListTodo();
                GridView1.DataSource = lista;
                GridView1.DataBind();

            }
            GridView1.DataSource = lista;
            GridView1.DataBind();

        }

 

        protected void Button1_Click(object sender, EventArgs e)
        {
            SeleccionarCombo();
            
        }
    }
}