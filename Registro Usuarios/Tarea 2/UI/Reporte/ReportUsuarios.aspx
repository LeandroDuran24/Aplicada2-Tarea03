<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportUsuarios.aspx.cs" Inherits="Tarea_2.UI.Reporte.ReportUsuarios" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=14.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
          <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Height="635px" style="margin-right: 17px" Width="1365px">
            
              <LocalReport ReportPath="UI\Reporte\Usuario.rdlc" reportembeddedresource="UI\Reporte\Report.rdlc">
                  
              <datasources><rsweb:ReportDataSource DataSourceId="SqlDataSource2" Name="DataSet1" /></datasources></LocalReport>
            
        </rsweb:ReportViewer>  

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbUsuariosConnectionString4 %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbUsuariosConnectionString2 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>

    </form>
</body>
</html>
