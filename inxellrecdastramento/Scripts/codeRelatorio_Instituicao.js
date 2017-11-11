function Rel_Investimento() {

    var v1 = document.getElementById('input_investimento').value;
    var url = "Instituicoes_Relatorios_PDF_invest.aspx?p1=" + v1;
    window.open(url, "_blank");

}

function Rel_Zona() {

    var v1 = document.getElementById('input_zona').value;
    var url = "Instituicoes_Relatorios_PDF_zona.aspx?p1=" + v1;
    window.open(url, "_blank");

}