<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Menu_Basico_Ejemplo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/MyStyle.css" media="screen" />
</head>
<body style="font-family: tipo_texto; background-image: url(imagenes/fondo1.jpg); background-repeat: no-repeat; background-size:auto; background-position: center;">
    <div class="espacio_relleno" style="margin: 0 auto; padding-bottom: 4%;"></div>

    <form id="form1" runat="server" style="width: 60%; padding-top:2%; padding-bottom:2%; border-radius: 20px; background-color: white; margin: 0 auto;">
         <div class="logo">
            <img src="imagenes/logo.png" style="width: 25%; margin: auto; display: block;" alt="Logo de Banco Popular" />
         </div>
        <div>
                <hr style="color: #22B0CD; border: 1px solid #22B0CD; width: 40%; margin: auto; margin-top: 3%" />
                <h1 style="font-family: FuturaPTBold; font-weight: bold; height: 40px; text-align: center; z-index: -1; color: #1AA5C2">MENU PRINCIPAL</h1>
        </div>
        <p Style="Height: 20px;"></p>
        <div style="width: 80%; margin: 0 auto;">

        <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem Text="Registro de Usuarios" Value="Registro de Usuarios" NavigateUrl="~/RegistroUsuario.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Administración de Listas" Value="Administración de Listas" Selectable="False">
                    <asp:MenuItem Text="Crear Listas" Value="Crear Listas" NavigateUrl="~/CrearListas.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/CrearListasLocales.aspx" Text="Crear Listas Locales" Value="Crear Listas Locales"></asp:MenuItem>
                    <asp:MenuItem Text="Mantenimiento" Value="Mantenimiento" Selectable="False">
                        <asp:MenuItem NavigateUrl="~/Actualizar_ListaLocal.aspx" Text="Lista Local" Value="Lista Local"></asp:MenuItem>
                        <asp:MenuItem Text="Catálogo" Value="Catálogo" Selectable="False">
                            <asp:MenuItem NavigateUrl="~/ActivarLista.aspx" Text="Activar Lista" Value="Activar Lista"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/InactivarLista.aspx" Text="Inactivar Lista" Value="Inactivar Lista"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/ModificaLista.aspx" Text="Actualizar lista" Value="Actualizar lista"></asp:MenuItem>
                        </asp:MenuItem>

                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Consulta de Listas " Value="Consulta de Listas " Selectable="False">
                    <asp:MenuItem NavigateUrl="~/ListasInternacionales.aspx" Text="Listas Internacionales" Value="Listas Internacionales"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Consulta.aspx" Text="Listas Nacionales" Value="Listas Nacionales"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Login.aspx" Text="Cerrar Sesión" Value="Cerrar Sesión"></asp:MenuItem>
            </Items>
        </asp:Menu>
        </div>
    </form>
</body>
</html>
