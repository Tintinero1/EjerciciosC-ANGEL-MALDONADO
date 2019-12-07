<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A.aspx.cs" Inherits="WebApplication1.A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                Pagina A<asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" TabIndex="1" Text="Suma " AutoPostBack="True" Checked="True" />+
                <asp:RadioButton ID="RadioButton2" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Resta " AutoPostBack="True" TabIndex="2" />-
                <asp:RadioButton ID="RadioButton3" runat="server" OnCheckedChanged="RadioButton3_CheckedChanged" Text="Multiplicacion " TabIndex="3" AutoPostBack="True" />x
                <asp:RadioButton ID="RadioButton4" runat="server" OnCheckedChanged="RadioButton4_CheckedChanged" Text="Division " TabIndex="4" AutoPostBack="True" />/
                </asp:Panel>
&nbsp;<br />
            Valor1: <asp:TextBox ID="txt1" runat="server" TabIndex="5"></asp:TextBox><br />
            Valor2: <asp:TextBox ID="txt2" runat="server" TabIndex="6"></asp:TextBox>
            <asp:Button ID="BtnOpe" runat="server" Text="Suma" OnClick="BtnOpe_Click" OnClientClick="myFunction()" TabIndex="7" />

            <br />
            Resultado: <asp:TextBox ID="txtRes" runat="server" TabIndex="8" onfocus="myFunction()" AutoPostBack="True" ></asp:TextBox>

            <script language="javascript" type="text/javascript">
                function fnAceptar() {
                    window.clipboardData.setData('Text', "Hola");
                }


            </script>

            <script runat="server">
                protected void Page_Load(object sender, EventArgs e)
                {
                    this.BtnOpe.Attributes.Add("OnClick", "javascript:return fnAceptar();");
                    
                }
            </script>
            
            <script>
                function myFunction() {
                    
                    /* Get the text field */
                    var copyText = document.getElementById("txtRes");

                    /* Select the text field */
                    copyText.select();

                    /* Copy the text inside the text field */
                    document.execCommand("copy");

                    /* Alert the copied text */
                    var ele = document.getElementById('txtRes');
                    ele.focus();
                    
                    /*alert("Copied the text: " + copyText.value);*/
                }
    </script>
        </div>
    </form>
</body>
</html>
