using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tarea_2.DAL;
using Tarea_2.Entidades;
using Tarea_2.UI.Formularios;

namespace Tarea_2.UI.Reporte
{
    public partial class ReportUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*this.ReportViewer1.Visible = true;
            ReportViewer1.DataBind();
            ReportViewer1.LocalReport.Refresh();*/


            ReportViewer1.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
            ReportViewer1.Reset();
            ReportViewer1.LocalReport.ReportPath = Server.MapPath(@"~\UI\Reporte\Usuarios.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();

            ReportViewer1.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("DataSetUsuario",
                FormConsulta.lista));

            ReportViewer1.LocalReport.Refresh();

           
          }


    }
}