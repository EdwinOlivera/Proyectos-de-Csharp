<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Menu_Basico_Ejemplo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link type="text/css" rel="stylesheet" href="StyleSheet1.css" media="screen" />
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <hr style="color: #22B0CD; border: 1px solid #22B0CD; width: 40%; margin: auto; margin-top: 3%" />
            <h1 style="font-family: FuturaPTBold; font-weight: bold; height: 40px; text-align: center; z-index: -1; color: #1AA5C2">MENU PRINCIPAL</h1>
        </div>
        <p style="height: 20px;"></p>
        <div style="width: 40%; margin: 0 auto;">

            <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                    <asp:MenuItem Text="Registro de Usuarios" Value="Registro de Usuarios" NavigateUrl="~/RegistroUsuario.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Administración de Listas" Value="Administración de Listas">
                        <asp:MenuItem Text="Crear Listas" Value="Crear Listas" NavigateUrl="~/CrearListas.aspx"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Mantenimiento.aspx" Text="Mantenimiento" Value="Mantenimiento"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/CrearListasLocales.aspx" Text="Crear Listas Locales" Value="Crear Listas Locales"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Consulta de Listas " Value="Consulta de Listas ">
                        <asp:MenuItem NavigateUrl="~/ListasInternacionales.aspx" Text="Listas Internacionales" Value="Listas Internacionales"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/ListasLocales.aspx" Text="Listas Nacionales" Value="Listas Nacionales"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Login.aspx" Text="Cerrar Sesión" Value="Cerrar Sesión"></asp:MenuItem>
                </Items>
                <StaticItemTemplate>
                    <%# Eval("Text") %>
                </StaticItemTemplate>
            </asp:Menu>
        </div>
    </form>
</body>
</html>
