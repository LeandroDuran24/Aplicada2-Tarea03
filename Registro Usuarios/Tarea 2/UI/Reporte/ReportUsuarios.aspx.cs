using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tarea_2.Entidades;

namespace Tarea_2.UI.Reporte
{
    public partial class ReportUsuarios : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {


            this.ReportViewer1.Visible = true;               
        }

    }
}