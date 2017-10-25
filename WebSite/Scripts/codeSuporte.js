

function enviar() {

    var v0 = document.getElementById("nome").value;
    var v1 = document.getElementById("email").value;
    var v2 = document.getElementById("obs_assunto").value;
    var v3 = document.getElementById("coment").value;
    
    
    var url = "Suporte_Email.aspx?p0=" + v0 + "&p1=" + v1 + "&p2=" + v2 + "&p3=" + v3;

    window.location.href = url;
   
}