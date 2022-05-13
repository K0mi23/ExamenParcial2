<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ExamenParcial2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Ingreso Pelicula Nueva</h1>
        <p>Titulo:
            <asp:TextBox ID="Titulo" runat="server"></asp:TextBox>
        </p>
        <p>Año:
            <asp:TextBox ID="Año" runat="server"></asp:TextBox>
        </p>
        <p>Género:
            <asp:TextBox ID="Genero" runat="server"></asp:TextBox>
        </p>
        <p>Estudio:
            <asp:TextBox ID="Estudio" runat="server"></asp:TextBox>
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="262px" Width="531px">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
        </p>
        <h1>Ingreso Actor</h1>
        <p>Nombre: <asp:TextBox ID="Elenco" runat="server"></asp:TextBox>
        </p>
        <p>Fecha de Nacimiento</p>
        <p>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </p>
        <p>
            <asp:Button ID="AgregarElenco" runat="server" Height="63px" OnClick="Button1_Click" Text="Agregar Actor" Width="316px" />
        </p>
        <p>
            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="262px" Width="531px">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
        </p>
        <p>
            &nbsp;<asp:Button ID="BotonGuardar" runat="server" Height="75px" OnClick="BotonGuardar_Click" Text="Guardar" Width="295px" />
        </p>
    </div>

</asp:Content>
