<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Suporte.aspx.cs" Inherits="Suporte" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Recadastramento - Suporte</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


    <style>
        body {
            background-image: url("Images/fundo.jpg");
            background-repeat: repeat;
        }
    </style>


</head>
<body>

    <div class="w3-sidebar w3-bar-block w3-green w3-card-2" style="width: 180px">
       
         <hr />
                <button id="bt1" class="w3-bar-item w3-button tablink w3-hover-light-blue w3-blue" onclick="openLink(event, 'obs')"><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Suporte</button>
                <button id="bt2" class="w3-bar-item w3-button tablink w3-hover-light-blue w3-blue" onclick="openLink(event, 'cont')"><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Contato</button>
         
         <hr />
    </div>
    <!-- Grupo Obs -->

    <br />

    <div>
        <div class="w3-col s12 w3-border w3-round w3-light-gray w3-margin-bottom">
            <h3 class="w3-center w3-margin-left"><i class="fa fa-check-square-o " style="margin-top:10px;"  aria-hidden ="true"></i>&nbsp;Suporte</h3>
        </div>
    </div>

    <div id="obs" class="w3-row w3-container grupo w3-animate-left  " style="display: block;">
        <form class="form-horizontal" runat="server">
            <fieldset>

                <div class="form-group w3-margin-left">
                    <label for="nome" class="col-md-3 control-label">Nome : </label>
                    <div class=" col-md-8">
                        <input type="text" class="form-control" id="nome" name="nome" style="width: 500px;" required>
                    </div>
                </div>


                <div class="form-group w3-margin-left">
                    <label for="email" class="col-md-3 control-label">Seu Email : </label>
                    <div class=" col-md-8">
                        <input type="email" class="form-control" id="email" name="eamil" style="width: 500px;" required>
                    </div>
                </div>

                <div class="form-group w3-margin-left">

                    <label for="obs_assunto" class="col-md-3 control-label">Assunto : </label>
                    <div class=" col-md-8">
                        <input type="text" class="form-control" id="obs_assunto" name="assunto" style="width: 500px;" required>
                    </div>
                </div>

                <div class="form-group w3-margin-left">
                    <label for="coment" class="col-md-3 control-label">Comentário : </label>
                    <div class=" col-md-8">
                        <textarea rows="5" class="form-control " id="coment" name="coment" required></textarea>
                    </div>
                </div>

            </fieldset>
        </form>
        <div class="col-md-7  w3-round w3-padding" style="margin-top: 10px">
            <br />
            <div class="col-md-4"></div>
            <p>
                <button id="envia" class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="enviar();">
                    <i class="fa fa-envelope-open-o" aria-hidden="true"></i>&nbsp;Enviar</button>
            </p>
        </div>
    </div>


    <!--Grupo Cont-->
    <div id="cont" class="w3-row w3-container grupo w3-animate-left" style="display: none;">
        <div class="w3-col s9 w3-border w3-light-gray w3-hover-light-green w3-padding-32 w3-margin-top" style="margin-left: 300px;">
            <h4 style="margin-left: 60px;">Fale Conosco:</h4>
            <h4 style="margin-left: 60px;">Caso queira entrar em contato telefônico: 71-3508-3580</h4>
        </div>

    </div>



    <script type="text/javascript" src="Scripts/codeSuporte.js"></script>
    <script type="text/javascript" src="Scripts/codeMunicipio_Novo.js"></script>
    
</body>
</html>
