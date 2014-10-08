
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Site.Pages.Cadastroaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro</title>
    <link href="../Style/humanity/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="../Scripts/jquery-ui-1.10.4.custom.js" type="text/javascript"></script>

    <script type="text/ecmascript">
        $(document).ready(
            function () {
                //transformar uma div numa janela de diálogo:
                $("#janela").dialog({
                    modal: true,
                    autoOpen: false,
                    width: 600
                });
                //aplicando formatação do botão -->> class:
                $(".botao").button();
                
                //campo calendário:
                $("#txtDataNasc").datepicker({
                    dateFormat: 'dd/mm/yy',
                    changeMonth: true,
                    changeYear: true,
                });
                //aplicando navegação em abas:
                $("#painel").tabs();
                
                //evento JS:
                $("#btnJanela").click(
                    function () {
                        $("#janela").dialog("open");
                    });
            });
    </script>

</head>
<body>
    
    <input type="button" id="btnJanela" class="botao" value="Cadastrar Cliente" />

    <span style="font-family:Verdana; font-size:14pt; margin:10px;">
        <asp:Label ID="lblMensagem" runat="server"/>
    </span>

    <div id="janela" title="Formulário de Cadastro de Clientes">
        
        <form id="formulario" runat="server">
          
            <!-- Esqueleto para navegação em abas -->  
            
            <div id="painel">
                <ul>
                    <li><a href="#aba1">Dados Principais</a></li>
                    <li><a href="#aba2">Detalhes</a></li>
                </ul>
                
                <!-- Primeira aba do formulário -->
                <div id="aba1">
                    
                   Nome do Cliente: <br />
                    <asp:TextBox ID="txtNome" runat="server" Width="70%"/>
                    <br /><br />
                    
                   Email: <br />
                    <asp:TextBox ID="txtEmail" runat="server" Width="50%"/>
                    <br /><br />
                    
                   Data de Nascimento: <br />
                    <asp:TextBox ID="txtDataNasc" runat="server" Width="25%"/>
                    <br /><br />
                    
                    <asp:Button ID="btnCadastro" runat="server" CssClass="botao" Text="Cadastrar" OnClick="BtnCadastrarCliente"/> 

                </div>

                <!-- Segunda aba do formulário -->
                <div id="aba2">
                   Informações Adicionais:
                    <asp:TextBox ID="txtDetalhes" runat="server" 
                        TextMode="MultiLine"
                        Width="500"
                        Height="100" /> 
                </div>
            </div>
        </form>
    </div>
</body>
</html>
