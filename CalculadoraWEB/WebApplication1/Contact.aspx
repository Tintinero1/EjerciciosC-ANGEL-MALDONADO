<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>


    


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--Codigo JavaScript--%>
    


    <h2><%: Title %>.</h2>
    <h3 id="TATA">Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    


<%--Codigo JavaScript--%>
    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a></address>
    <address>
        <asp:Label ID="Label1" runat="server" Text="E-Mail para contactarte"></asp:Label>
    </address>
    <address>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Hola" />
    </address>
    <address>
        <asp:Label ID="Label2" runat="server" Text="Telefono de contacto"></asp:Label>
    </address>
    <address>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </address>
    <address>
        <asp:Label ID="lb3" runat="server" Text="Nombre"></asp:Label>
    </address>

    
        <div>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar"/>
            <br/>
            <asp:Label ID="lblResultado" runat="server" ></asp:Label>
        </div>
   

    <script language="javascript" type="text/javascript">
        function fnAceptar() {
            //https://social.msdn.microsoft.com/Forums/es-ES/6fe7b86f-f566-43b1-83fb-208c74d95792/como-obtener-el-contenido-de-un-textbox-que-esta-en?forum=netfxwebes
            if (document.getElementById("<%=TextBox1.ClientID%>").value == "marcalbrand@hotmail.com") {
                alert('Hola: ' + document.getElementById("<%=txtNombre.ClientID%>").value + ' Tus datos se han enviado correctamente ' +  document.getElementById("<%=TextBox1.ClientID%>").value);
                
            }
            else
            {
                alert('E-mail no valido: ingrese un email correcto.');
            }
            document.getElementById('<%=lb3.ClientID%>').innerHTML = 'jhvjffjy';
        } 
    </script>

    <script runat="server">
        protected void Page_Load(object sender, EventArgs e)
        {
            this.btnAceptar.Attributes.Add("OnClick", "javascript:return fnAceptar();");
        }
    </script>
</asp:Content>
