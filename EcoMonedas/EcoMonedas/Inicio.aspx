<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="EcoMonedas.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>EcoMonedas</title>
    <link href="Imagenes/LogoT.png" rel="icon"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <style>
        a.ex5:hover, a.ex5:active {text-decoration: underline; color:black;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="box-shadow: 0px 7px 0px -4px rgba(126,217,87,1); ">
            <a class="navbar-brand" href="Inicio.aspx"><img src="Imagenes/LogoT.png" width="auto" height="50"/></a>
            <asp:Menu  runat="server" Orientation="Horizontal" CssClass="navbar-nav ml-auto" id="navbarColor01" DataSourceID="SiteMapDataSource1" OnMenuItemDataBound="navbarColor01_MenuItemDataBound"> 
                <StaticMenuItemStyle HorizontalPadding="20px" VerticalPadding="20px" />
                <StaticMenuStyle CssClass="navbar-nav mr-auto" />
                <StaticSelectedStyle CssClass="active" />
                <DynamicMenuStyle CssClass="dropdown-menu" />
                <LevelMenuItemStyles>
                    <asp:MenuItemStyle CssClass="ex5 nav-item nav-link" />
                    <asp:MenuItemStyle CssClass="nav-item nav-link bg-primary"/>
                </LevelMenuItemStyles>
            </asp:Menu>
        </nav>
        <ol class="breadcrumb"  style="background-color:ghostwhite"> <!--#7ed957 //  #a52a2a-->
            <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
        </ol>
        <asp:SiteMapDataSource runat="server" ShowStartingNode="false" ID="SiteMapDataSource1"></asp:SiteMapDataSource>
        <div class="container">
            <label><p>
                Aqui va toda la pagina de Inicio 
                   </p></label>
        </div>
        <footer class="footer navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <asp:Label ID="copyright" runat="server" Text="<%$ AppSettings: copyright %>"></asp:Label>
            </div>
        </footer>
    </form>
</body>
</html>
