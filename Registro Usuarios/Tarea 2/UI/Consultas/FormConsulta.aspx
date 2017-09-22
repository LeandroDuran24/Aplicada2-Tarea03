<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormConsulta.aspx.cs" Inherits="Tarea_2.UI.Formularios.FormConsulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Inclusion de bootstrap-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../Css/MyStyle.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Consulta</title>
</head>
<body>
    <form id="form1" runat="server">



        <header>

            <nav class=" navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">BarberShop</a>&nbsp
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="../Formularios/MenuForm.aspx"><span class="glyphicon glyphicon-home">Inicio &nbsp</span></a></li>
                        <li><a href="../Formularios/UsuarioForm.aspx"><span class="glyphicon glyphicon-user">Usuarios &nbsp</span></a></li>
                        <li class="active"><a href="../Consultas/FormConsulta.aspx"><span class="glyphicon glyphicon-search">Consulta &nbsp</span></a></li>
                        <li><a href="../Reporte/ReportUsuarios.aspx"><span class="glyphicon glyphicon-list-alt">Reporte &nbsp</span></a></li>

                    </ul>

                </div>
            </nav>
            <h1 class="page-header text-center">Consulta Usuarios <span class="glyphicon glyphicon-user"></span></h1>


        </header>

        <div class="container-fluid">
            <div class="col-lg-12 col-md-6  col-sm-8 col-xs-12">

                <!--comboBox-->
                <div class="text-center">
                    <label for="Busqueda:">Busqueda</label>

                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="110px" Height="22px">
                        <asp:ListItem>Id</asp:ListItem>
                        <asp:ListItem>Nombre</asp:ListItem>
                        <asp:ListItem>Fecha</asp:ListItem>
                        <asp:ListItem>Todos</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp


                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                    <asp:Button ID="Button1" CssClass="boton-buscar" runat="server" OnClick="Button1_Click" Text="Filtrar" />&nbsp
                      
                </div>

                <!--fecha-->
                <div class="text-center">
                    <p>
                        <label for="Desde:">Desde </label>
                        &nbsp;<asp:TextBox ID="desdeFecha" runat="server" Width="120px"></asp:TextBox>
                        <label for="hasta">Hasta</label>
                        <asp:TextBox ID="hastaFecha" runat="server" Width="120px"></asp:TextBox>
                        <a id="Reporte" href="../Reporte/ReportUsuarios.aspx" class="boton-buscar" >Imprimir</a>

                    </p>

                </div>

            </div>
        </div>


        
            <br />
            <br />
            <br />
        <div class="text-center">
            <asp:GridView ID="GridView1" CssClass="text-center" runat="server" CaptionAlign="Bottom" HorizontalAlign="Center">
                <HeaderStyle BackColor="#0066FF" BorderColor="Black" BorderStyle="Double" />
                <PagerStyle BackColor="White" BorderColor="White" BorderStyle="Double" />
                <RowStyle BackColor="White" BorderColor="Black" BorderStyle="Double" Font-Italic="True" ForeColor="Black" />
            </asp:GridView>
        </div>


        <br />
        <br />
        <br />
        <br />
        <footer>

            <p class="page-footer"><span class="glyphicon glyphicon-copyright-mark"></span>Leandro Rafael Duran Minaya[Programacion Aplicada II].amacion Aplicada II].</p>

        </footer>

    </form>
</body>
</html>
