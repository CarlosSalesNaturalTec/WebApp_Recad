function Rel_Investimento() {
    var v1 = document.getElementById('input_investimento').value;
    var url = "Instituicao_Relatorios_PDF.aspx?p1 = " + v1;
    window.open(url, "_blank");
}

function Rel_Zona() {
    var v1 = document.getElementById('input_zona').value;
    var url = "Instituicao_Relatorios_PDF2.aspx?p1 = " + v1;
    window.open(url, "_blank");
}