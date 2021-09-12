<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="producto._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>&nbsp;BIENVENIDOS A IMPORTACIONES TEC-Q</h1>
        <p class="lead">&quot;Lideres en el mercado de la importación y venta de hardware.&quot;</p>
        <p class="lead">Nuestros Productos:</p>
        <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="XmlDataSource1" DataTextField="text" DataValueField="url" DisplayMode="HyperLink" Height="66px" Width="1094px">
            <asp:ListItem Value="https://www.logitech.com/es-roam">Logitech</asp:ListItem>
            <asp:ListItem Value="https://www.razer.com">Razer</asp:ListItem>
            <asp:ListItem Value="https://www.corsair.com/lm/es/">Corsair</asp:ListItem>
        </asp:BulletedList>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/hyperlinks.xml"></asp:XmlDataSource>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
            <asp:ListItem Value="0">Producto</asp:ListItem>
            <asp:ListItem Value="1">Cliente</asp:ListItem>
            <asp:ListItem Value="2">Proovedor</asp:ListItem>
        </asp:RadioButtonList>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:Label ID="Label2" runat="server" Text="Ingrese  sus datos de producto"></asp:Label>
                <br />
                <br />
                <asp:Label ID="NombreP" runat="server" Text="Nombre:"></asp:Label>
                &nbsp;<asp:TextBox ID="nombre" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="label4" runat="server" Text="Codigo P"></asp:Label>
                &nbsp;<asp:TextBox ID="codigo" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Precio"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="precio" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Cantidad"></asp:Label>
                &nbsp;<asp:TextBox ID="cantidad" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="InfoProducto" runat="server" Height="36px" Text="Label" Width="600px"></asp:Label>
                <br />
                <br />
                <asp:Button ID="consulta" runat="server" OnClick="consulta_Click" Text="Button" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Label ID="Label7" runat="server" Text="Ingrese sus datos de cliente:"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Nombre"></asp:Label>
                &nbsp;<asp:TextBox ID="nombrecli" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="apellido" runat="server" Text="Apellido:"></asp:Label>
                &nbsp;
                <asp:TextBox ID="apellidocli" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Codigo"></asp:Label>
                &nbsp;
                <asp:TextBox ID="codigocli" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Text="Direccion:"></asp:Label>
                &nbsp;<asp:TextBox ID="direccioncli" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="InfoCli" runat="server" Height="36px" Text="Label" Width="600px"></asp:Label>
                <br />
                <br />
                <asp:Button ID="consultacli" runat="server" OnClick="consultacli_Click" Text="Button" />
                <br />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:Label ID="Label11" runat="server" Text="Nombre"></asp:Label>
                &nbsp;<asp:TextBox ID="nombrepro" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="apellido0" runat="server" Text="Apellido:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="apellidopro" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" Text="Codigo"></asp:Label>
                &nbsp;<asp:TextBox ID="codigopro" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Text="RUC:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="ruc" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="InfoPro" runat="server" Height="36px" Text="Label" Width="600px"></asp:Label>
                <br />
                <br />
                <asp:Button ID="consultapro" runat="server" OnClick="consultacli_Click" Text="Button" />
            </asp:View>
        </asp:MultiView>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &quot;El cliente es primero&quot;<br />
    </div>

    <div class="row">
        <div class="col-md-4">
        </div>
    </div>

</asp:Content>
