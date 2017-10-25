<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Grafico_Instituicao.aspx.cs" Inherits="Grafico_Instituicao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        
    <title>Relatório de Instituição</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

         <!-- Jquery-->
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Styles: W3, BootsStrap, Font-Awesome -->
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- Gráfico Morris.JS -->
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
        <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    </head>
    
    <body style="margin-left: 2%; margin-right: 2%">
        <br />
        <!-- linha 1 --> 
        <div class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">
            <!-- Bloco 1 -->
        <div id="Bloco1" class="w3-col s12 m8 18 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Evolução Recadastramento</h4>
                </div>

                <div class="panel-body">
                    <div id="Bloco1_Chart" style="min-width: 280px; height: 200px; margin: 0 auto"></div>
                </div>
                <p>&nbsp;</p>
            </div>
        </div>
          <div id="Bloco3" class="w3-col s12 m4 l4 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Zona - Área</h4>
                </div>
                <div class="panel-body">
                    <div id="Bloco3_Chart" style="min-width: 280px; height: 200px; margin: 0 auto"></div>
                </div>
                    <p>&nbsp;</p>
            </div>
         </div>

     
        </div>
         <div class="w3-row-padding ">
            <p>&nbsp;</p>
         </div>

        <div class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">
             <div id="Bloco2" class="w3-col s12 m6 l4 w3-padding">
                <div class="panel panel-success">
                    <div class="panel-heading text-center">
                        <h4 class="panel-title w3-small">Investimento</h4>
                    </div>
                <div class="panel-body">
                    <div id="Bloco2_Chart" style="min-width: 280px; height: 200px; margin: 0 auto"></div>
                </div>
                        <p>&nbsp;</p>
                </div>
        </div>
         
           <div id="Bloco4" class="w3-col s12 m4 l4 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Porte</h4>
                </div>
                <div class="panel-body">
                    <div id="Bloco4_Chart" style="min-width: 280px; height: 200px; margin: 0 auto"></div>
                </div>
                    <p>&nbsp;</p>
            </div>
         </div>
          <div id="Bloco5" class="w3-col s12 m4 l4 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">Catogoria Administrativa</h4>
                </div>
                <div class="panel-body">
                    <div id="Bloco5_Chart" style="min-width: 280px; height: 200px; margin: 0 auto"></div>
                </div>
                    <p>&nbsp;</p>
            </div>
         </div>  
        </div>



            <asp:Literal ID="Literal_Bloco1" runat="server"></asp:Literal>
            <asp:Literal ID="Literal_Bloco2" runat="server"></asp:Literal>
            <asp:Literal ID="Literal_Bloco3" runat="server"></asp:Literal>
            <asp:Literal ID="Literal_Bloco4" runat="server"></asp:Literal>  
            <asp:Literal ID="Literal_Bloco5" runat="server"></asp:Literal>          
    
    </body>
</html>
