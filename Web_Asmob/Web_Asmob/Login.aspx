<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_Asmob.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
</head>
<body style="background-image: url(Imagem/fundo.jpg); background-repeat: repeat; overflow: hidden;">
    <div id="divLogin" class="w3-display-middle ">

        <section class="w3-padding w3-center w3-animate-opacity" style="max-width: 400px">
            <h3><strong>Asmop - LOGIN</strong> </h3>

            <p>
                <input id="inputUser" placeholder="Usuário" class="w3-input w3-border w3-round" type="text" />
            </p>
            <p>
                <input id="inputPwd" placeholder="Senha" class="w3-input w3-border w3-round" type="password" />
            </p>
            <p>
                <button id="btLogin" class="w3-btn w3-green w3-round" onclick="">Entrar</button>
            </p>
            <hr />
            <h5><strong><i class="fa fa-book" aria-hidden="true"></i>&nbsp;Asmop</strong></h5>
        </section>
    </div>
</body>
</html>
