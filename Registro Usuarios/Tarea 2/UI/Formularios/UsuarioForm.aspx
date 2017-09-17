<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsuarioForm.aspx.cs" Inherits="Tarea_2.UI.Formularios.UsuarioForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <!--Inclusion de bootstrap-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../Css/MyStyle.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Usuarios</title>
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
                                <li><a href="Menu Principal.aspx"><span class="glyphicon glyphicon-home">Inicio &nbsp</span></a></li>
                                <li class="active"><a href="UsuarioForm.aspx"><span class="glyphicon glyphicon-user">Usuarios &nbsp</span></a></li>
                                <li><a href="../Consultas/FormConsulta.aspx"><span class="glyphicon glyphicon-search">Consulta &nbsp</span></a></li>
                                <li><a href="../Reporte/ReportUsuarios.aspx"><span class="glyphicon glyphicon-list-alt">Reporte</span></a></li>
                                
                                
                            </ul>
                            <br />
                            <h1 class="page-header text-center">Registro Usuarios <span class="glyphicon glyphicon-user"></span></h1>
                        </div>
                    </nav>

            
        </header>

        <div class="container-fluid">
            <div class="col-lg-12 col-md-6  col-sm-8 col-xs-12">

                <!--input del id-->
                <div class="text-center">
                    <div class="label">
                    <label for="id_Usuario">Id Usuario</label>
                    </div>
                </div>
                <div class="text-center">
                  
                    <asp:TextBox ID="idTextbox" runat="server" Width="190px" Height="33px" ForeColor="Black"></asp:TextBox>&nbsp
                     <asp:Button ID="Buscar"  CssClass="btn btn-primary btn-md boton-buscar" runat="server" Text="Buscar" OnClick="Buscar_Click" Width="105px" ValidationGroup="buscar" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="idTextbox" ErrorMessage="#" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationGroup="buscar"></asp:RequiredFieldValidator>
                </div>

                <!--input del nombre-->
                <div class="text-center">
                    <div class="label">
                    <label for="Nombres">Nombres</label>
                    </div>
                </div>
                <div class="text-center">
                    <asp:TextBox ID="NombreTextbox" runat="server" Width="300px" Height="33px"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NombreTextbox" ErrorMessage="#" Font-Bold="True" ForeColor="Red" ValidationGroup="guardar"></asp:RequiredFieldValidator>
                   
                </div>
                
                <!--input del email-->
                <div class="text-center">
                    <div class="label">
                    <label for="Email">Email</label>
                    </div>
                </div>
                <div class="text-center">
                    <asp:TextBox ID="emailTextbox" runat="server" Width="300px" Height="33px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailTextbox" ErrorMessage="#" Font-Bold="True" ForeColor="Red" ValidationGroup="guardar"></asp:RequiredFieldValidator>
                </div>

                <!--input de fecha-->
                <div class="text-center">
                    <div class="label">
                    <label for="fecha">Fecha</label>
                    </div>
                </div>
                <div class="text-center">
                    <asp:TextBox ID="fecha" runat="server" Width="300px" Height="33px"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="fecha" ErrorMessage="#" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                    
                </div>

                           
                <!--input del tipo-->
                <div class="text-center">
                    <div class="label">
                    <label for="tipo_Email">Tipo Email</label>
                    </div>
                </div>
                <div class="text-center">
                    <asp:TextBox ID="tipoTextbox" runat="server" Width="300px" Height="33px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tipoTextbox" ErrorMessage="#" Font-Bold="True" Font-Italic="False" ForeColor="Red" ValidationGroup="guardar"></asp:RequiredFieldValidator>
                </div>
               
                <!--input del clave-->

                <div class="text-center">
                    <div class="label">
                    <label for="contrasena">Contraseña</label>
                    </div>
                </div>
                <div class="text-center">
                    <asp:TextBox ID="claveTextbox" runat="server" Width="300px" Height="33px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="claveTextbox" ErrorMessage="#" Font-Bold="True" ForeColor="Red" ValidationGroup="guardar"></asp:RequiredFieldValidator>
                </div>
                
                <!--input del confirmar-->
                <div class="text-center">
                    <div class="label">
                    <label for="confirmar_Contraseña">Confirmar Contraseña</label>
                    </div>
                </div>
                <div class="text-center">
                     <asp:TextBox Type="password" ID="confTextbox" runat="server" Width="300px" Height="33px"></asp:TextBox>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="confTextbox" ErrorMessage="#" Font-Bold="True" ForeColor="Red" ValidationGroup="guardar"></asp:RequiredFieldValidator>

                </div>
                <br />
               

                <!--botones del formulario-->
                
                <div class="text-center">
                   
                    <asp:Button ID="Nuevo" CssClass="btn btn-primary btn-md boton" runat="server" Text="Nuevo" OnClick="Nuevo_Click" />&nbsp&nbsp
                    <asp:Button ID="Button1" CssClass="btn btn-primary btn-md boton" runat ="server" OnClick="Button1_Click" Text="Guardar" ValidationGroup="guardar" />&nbsp&nbsp
                    <asp:Button ID="Eliminar" CssClass="btn btn-primary btn-md boton" runat="server" Text="Eliminar" OnClick="Eliminar_Click" />
           </div>

            </div>
        </div>
        

        <footer>
            
                <p class="page-footer"><span class="glyphicon glyphicon-copyright-mark"></span>Leandro Rafael Duran Minaya[Programacion Aplicada II].</p>

           
        </footer>


    </form>
</body>
</html>
