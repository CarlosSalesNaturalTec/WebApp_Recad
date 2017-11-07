<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Asmob.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link rel="icon" href="Imagem/amobe.jpg" type="image/x-icon" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="utf-8" />
    <title></title>
</head>
<body>




    <div class="w3-bar w3-black w3-padding-16">
        
        <div class="w3-class w3-green">
            <div class="w3-right">
                <div class=" w3-bar-block w3-card-4">
                    <a href="Login.aspx" target="iframe" class="w3-bar-item w3-button w3-hover-green">Login</a>
                </div>  
            </div>
        </div>
        <div class="w3-class w3-green">
            <div class="w3-right">
                <div class=" w3-bar-block w3-card-4">
                    <a href="Historia.aspx" target="iframe" class="w3-bar-item w3-button w3-hover-green">Historia</a>
                </div>
            </div>
        </div>
        <div class="w3-class w3-green">
            <div class="w3-right">
                <div class=" w3-bar-block w3-card-4">
                    <a href="Default.aspx" class="w3-bar-item w3-button w3-hover-green">Home</a>
                </div>
            </div>
        </div>
    
    </div>
    <div>
        <iframe src="Home.aspx" width="100%" height="1024px" frameborder="0" name="iframe">Atualize seu Navegador!</iframe>
    </div>
</body>
</html>
