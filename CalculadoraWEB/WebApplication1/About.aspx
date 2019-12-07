<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <pre><h4>
       | Nombre:                          Compilacion1                   |<br />
       | Tipo:                            Aplication Manifest            |<br />
       | Ruta de acceso a la carpeta:     C:\\Usuarios\machi\Escritorio  |<br />
       | Tamaño:                          5.66KB                         |<br />
       | Fecha de creacion:               07/15/2019                     |<br />
       | Fecha de modificacion:           07/15/2019                     |<br />
       | Atributos:                       A                                     |<br />
       | Propietario:                     MARC\machi                            |<br />
       | Equipo:                          MARC\(este equipo)                    |<br />     

    </h4><asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></pre>
    <p>.<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </p>
</asp:Content>
