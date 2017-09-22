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

           // string lista =Request.QueryString["lista"];
            


            ReportViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Local;
            ReportViewer.Reset();
            ReportViewer.LocalReport.ReportPath = Server.MapPath(@"Usuarios.rdlc");
            ReportViewer.LocalReport.DataSources.Clear();

            ReportViewer.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("DataSetUsuario",
                FormConsulta.lista));

            ReportViewer.LocalReport.Refresh();

           
          }
    }
}