<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ExamenParcial2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Eliminar Pelicula</h2>
    <h3>Titulo:
        <asp:TextBox ID="Titulo" runat="server"></asp:TextBox>
        <asp:Button ID="BotonBuscar" runat="server" Height="45px" OnClick="BotonBuscar_Click" Text="Buscar" Width="166px" />
    </h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="207px" Width="354px">
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
    <p>&nbsp;</p>
    <p>
        <asp:Button ID="BotonEliminar" runat="server" Height="55px" OnClick="BotonEliminar_Click" Text="Eliminar" Width="339px" />
    </p>
    <p>&nbsp;</p>
</asp:Content>
