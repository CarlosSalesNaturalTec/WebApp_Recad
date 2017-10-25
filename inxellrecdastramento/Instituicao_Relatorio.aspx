<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Instituicao_Relatorio.aspx.cs" Inherits="Instituicao_Relatorio_aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Relatorio da Instituição</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Styles: W3, BootsStrap, Font-Awesome -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body style="margin-left: 2%; margin-right: 2%">
    <!-- Linha 1-->
    <div class="w3-row w3-container w3-border w3-round w3-padding-16 w3-light-gray">
         <!-- Bloco 1 -->
        <div id="Bloco1" class="w3-col s12 m12 l12 w3-padding">
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title w3-small">RELATÓRIO DE INSTITUIÇÃO</h4>
                </div>

                <div class="panel-body">

                    <div class="form-group">
                        <label for="input_investimento" class="col-md-1 control-label">Investimento</label>
                        <div class="col-md-6">
                            <select class="form-control" id="input_investimento">
                                <option value="Todas">Todas</option>
                                <option value="investimento_federal">Federal</option>
                                <option value="investimento_Estadual">Estadual</option>
                                <option value="investimento_Municipal">Municipal</option>
                                <option value="investimento_Convênio">Convênio</option>
                           </select>
                        </div>
                        <div class="col-md-1">
                            <a href="#" onclick="Rel_Investimento();" class="btn btn-block btn-default"><i class="fa fa-print"></i></a>
                        </div>
                    </div>
                    <br />
                     <div class="form-group">
                        <label for="input_zona" class="col-md-1 control-label">Zona</label>
                        <div class="col-md-6">
                            <select class="form-control" id="input_zona">
                                <option value="Todas">Todas</option>
                                <option value="zona_Urbana">Urbana</option>
                                <option value="zona_Rural">Rural</option>
                           </select>
                        </div>
                        <div class="col-md-1">
                            <a href="#" onclick="Rel_Zona();" class="btn btn-block btn-default"><i class="fa fa-print"></i></a>
                        </div>
                    </div>
                </div>

            </div>

        </div>
                     <br />
    </div>
            <script src="Scripts/codeRelatorio_Instituicao.js"></script>
</body>
</html>
