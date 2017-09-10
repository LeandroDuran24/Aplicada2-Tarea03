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
            <h1 class="page-header text-center">Registro Usuarios <span class="glyphicon glyphicon-user"></span></h1>
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
                  
                    <asp:TextBox ID="idTextbox" runat="server" Width="198px" Height="33px" ForeColor="#CCCCCC"></asp:TextBox>&nbsp
                     <asp:Button ID="Buscar"  CssClass="btn btn-primary btn-md boton-buscar" runat="server" Text="Buscar" />
                </div>

                <!--input del nombre-->
                <div class="text-center">
                    <div class="label">
                    <label for="Nombres">Nombres</label>
                    </div>
                </div>
                <div class="text-center">
                    <asp:TextBox ID="NombreTextbox" runat="server" Width="300px" Height="33px"></asp:TextBox>
                </div>
                
                <!--input del email-->
                <div class="text-center">
                    <div class="label">
                    <label for="Email">Email</label>
                    </div>
                </div>
                <div class="text-center">
                    <asp:TextBox ID="emailTextbox" runat="server" Width="300px" Height="33px"></asp:TextBox>
                </div>
               
                <!--input del tipo-->
                <div class="text-center">
                    <div class="label">
                    <label for="tipo_Email">Tipo Email</label>
                    </div>
                </div>
                <div class="text-center">
                    <asp:TextBox ID="tipoTextbox" runat="server" Width="300px" Height="33px"></asp:TextBox>
                </div>
               
                <!--input del clave-->

                <div class="text-center">
                    <div class="label">
                    <label for="contrasena">Contraseña</label>
                    </div>
                </div>
                <div class="text-center">
                    <asp:TextBox ID="claveTextbox" runat="server" Width="300px" Height="33px"></asp:TextBox>
                </div>
                
                <!--input del confirmar-->
                <div class="text-center">
                    <div class="label">
                    <label for="confirmar_Contraseña">Confirmar Contraseña</label>
                    </div>
                </div>
                <div class="text-center">
                     <asp:TextBox ID="confTextbox" runat="server" Width="300px" Height="33px"></asp:TextBox>

                </div>
                <br />
               

                <!--botones del formulario-->
                
                <div class="text-center">
                   
                    
                   
                    
                   
                    
                   
                    <asp:Button ID="Nuevo" CssClass="btn btn-primary btn-md boton" runat="server" Text="Nuevo" OnClick="Nuevo_Click" />&nbsp&nbsp
                    <asp:Button ID="Button1" CssClass="btn btn-primary btn-md boton" runat ="server" OnClick="Button1_Click" Text="Guardar" />&nbsp&nbsp
                    <asp:Button ID="Eliminar" CssClass="btn btn-primary btn-md boton" runat="server" Text="Eliminar" />
           </div>

            </div>
        </div>
        
        <br />
        <br />
        <br />
        <br />
        <br />
        

        <footer>
            <div class="page-footer">
                <p><span class="glyphicon glyphicon-copyright-mark"></span>Leandro Rafael Duran Minaya[Programacion Aplicada II].</p>

            </div>
        </footer>


    </form>
</body>
</html>
