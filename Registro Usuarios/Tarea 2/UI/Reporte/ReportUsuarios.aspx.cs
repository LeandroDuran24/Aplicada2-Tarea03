using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea_2.UI.Reporte
{
    public partial class ReportUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ReportViewer1.Visible = true;
            ReportViewer1.DataBind();
            ReportViewer1.LocalReport.Refresh();
        }
    }
}