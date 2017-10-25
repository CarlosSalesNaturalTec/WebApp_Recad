﻿document.getElementById("input1").focus();

function SalvarRegistro() {

    //validações
    if (document.getElementById('input1').value == "") {
        alert("Informe Nome da Instituição");   //<!--*******Customização*******-->
        openLink(event, 'grupo1')
        $('#bt1').addClass(' w3-blue');
        document.getElementById("input1").focus();  //<!--*******Customização*******-->
        return;
    }

    //pega o valor de cada campo e constroi string com todos  
    var i, x, strLine = "";
    x = document.getElementsByClassName("form-control");
    for (i = 0; i < x.length; i++) {
        strLine = strLine + "param" + i + ":'" + x[i].value + "',";
    }

    var foto = document.getElementById('FotoHidden').value;
    strLine = strLine + "param" + i + ":'" + foto + "',";

    i++;
    strLine = strLine + "param" + i + ":'" + document.getElementById('IDMunicipio').value + "'";

    //UI - exibir animações - aguarde...
    UIAguardar();

    $.ajax({
        type: "POST",
        url: "WebService.asmx/InstituicaoSalvar",  
        data: '{' + strLine + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            window.location.href = response.d;
        },
        failure: function (response) {
            alert(response.d);
        }
    });
}

function AlterarRegistro() {

    //validações
    if (document.getElementById('input1').value == "") {
        alert("Informe Nome da instituição");   //<!--*******Customização******-->
        openLink(event, 'grupo1')
        $('#bt1').addClass(' w3-blue');
        document.getElementById("input1").focus();  //<!--*******Customização******-->
        return;
    }

    //pega o valor de cada campo e constroi string com todos  
    var i, x, strLine = "";
    x = document.getElementsByClassName("form-control");
    for (i = 0; i < x.length; i++) {
        strLine = strLine + "param" + i + ":'" + x[i].value + "',";
    }

    var foto = document.getElementById('FotoHidden').value;
    strLine = strLine + "param" + i + ":'" + foto + "',";

    i++;
    var idAux = document.getElementById('IDAuxHidden').value;
    strLine = strLine + "param" + i + ":'" + idAux + "'";


    //UI - exibir animações - aguarde...
    UIAguardar();

    $.ajax({
        type: "POST",
        url: "WebService.asmx/InstituicaoAlterar",   //<!--*******Customização*******-->
        data: '{' + strLine + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var linkurl = response.d;
            window.location.href = linkurl;
        },
        failure: function (response) {
            alert(response.d);
        }
    });
}

function IncluirUsuario() {

    //validações
    if (document.getElementById('input_userNome').value == "") {
        alert("Informe Nome do Responsável");   //<!--*******Customização*******-->
        document.getElementById("input_userNome").focus();  //<!--*******Customização*******-->
        return;
    }

    var v1 = document.getElementById('IDAuxHidden').value;
    var v2 = document.getElementById("input_userNome").value;
    var v3 = document.getElementById("input_user").value;
    var v4 = document.getElementById("input_pwd").value;
    
    $.ajax({
        type: "POST",
        url: "WebService.asmx/InstituicaoNewUser",  //<!--*******Customização*******-->
        data: '{param1: "' + v1 + '", param2: "' + v2 + '", param3: "' + v3 + '", param4: "' + v4 + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            insertLinha();
        },
        failure: function (response) {
            alert(response.d);
        }
    });
}

function ExcluirUser(r, USerID) {

    var conf = confirm("Confirma Exclusão de Usuário?");
    if (conf == false) {
        return;
    }

    $.ajax({
        type: "POST",
        url: "WebService.asmx/InstituicaoDELuser",  //<!--*******Customização*******-->
        data: '{param1: "' + USerID + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            // excluir linha do Table
            var i = r.parentNode.parentNode.rowIndex;
            document.getElementById("MyTable").deleteRow(i);
        },
        failure: function (response) {
            alert(response.d);
        }
    });


}

function insertLinha() {

    var col1 = document.getElementById('input_userNome').value;
    var col2 = document.getElementById('input_user').value;

    var table = document.getElementById("MyTable");

    var row = table.insertRow(-1);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);

    cell1.innerHTML = col1;
    cell2.innerHTML = col2;

    //apaga formulario
    document.getElementById('input_userNome').value = "";
    document.getElementById('input_user').value = "";
    document.getElementById('input_pwd').value = "";

}

function cancelar() {
    var linkurl = "CAD_Instituicao_Listagem.aspx";   //<!--*******Customização*******-->
    window.location.href = linkurl;
}

function UIAguardar() {
    var i, x;

    x = document.getElementsByClassName("btcontroles");
    for (i = 0; i < x.length; i++) {
        x[i].disabled = true;
    }

    x = document.getElementsByClassName("aguarde");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "block";
    }
}


//Menu
function openLink(evt, animName) {
    var i, x, tablinks;
    x = document.getElementsByClassName("grupo");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < x.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" w3-blue", "");
    }
    document.getElementById(animName).style.display = "block";
    evt.currentTarget.className += " w3-blue";
}

function classeBt2() {
    openLink(event, 'grupo2')
    $('#bt2').addClass(' w3-blue');
}
function classeBt3() {
    openLink(event, 'grupo3')
    $('#bt3').addClass(' w3-blue');
}
function classeBt4() {
    openLink(event, 'grupo4')
    $('#bt4').addClass(' w3-blue');
}
function classeBt5() {
    openLink(event, 'grupo5')
    $('#bt5').addClass(' w3-blue');
}
function classeBt6() {
    openLink(event, 'grupo6')
    $('#bt6').addClass(' w3-blue');
}
function classeBt7() {
    openLink(event, 'grupo7')
    $('#bt7').addClass(' w3-blue');
}
function classeBt8() {
    openLink(event, 'grupo8')
    $('#bt8').addClass(' w3-blue');
}
function classeBt9() {
    openLink(event, 'grupo9')
    $('#bt9').addClass(' w3-blue');
}
function classeBt10() {
    openLink(event, 'grupo10')
    $('#bt10').addClass(' w3-blue');
}

function btvoltar1() {
    openLink(event, 'grupo1')
    $('#bt1').addClass(' w3-blue');
}
function btvoltar2() {
    openLink(event, 'grupo2')
    $('#bt2').addClass(' w3-blue');
}
function btvoltar3() {
    openLink(event, 'grupo3')
    $('#bt3').addClass(' w3-blue');
}
function btvoltar4() {
    openLink(event, 'grupo4')
    $('#bt4').addClass(' w3-blue');
}
function btvoltar5() {
    openLink(event, 'grupo5')
    $('#bt5').addClass(' w3-blue');
}
function btvoltar6() {
    openLink(event, 'grupo6')
    $('#bt6').addClass(' w3-blue');
}
function btvoltar7() {
    openLink(event, 'grupo7')
    $('#bt7').addClass(' w3-blue');
}
function btvoltar8() {
    openLink(event, 'grupo8')
    $('#bt8').addClass(' w3-blue');
}
function btvoltar9() {
    openLink(event, 'grupo9')
    $('#bt9').addClass(' w3-blue');
}


var handleFileSelect = function (evt) {
    var files = evt.target.files;
    var file = files[0];
    if (files && file) {
        var reader = new FileReader();
        reader.onload = function (readerEvt) {
            var binaryString = readerEvt.target.result;
            var data_uri = "data:image/png;base64," + btoa(binaryString);
            document.getElementById('results').innerHTML = '<img src="' + data_uri + '"/>';
            document.getElementById("FotoHidden").value = data_uri
        };
        reader.readAsBinaryString(file);
    }
};

if (window.File && window.FileReader && window.FileList && window.Blob) {
    document.getElementById('filePicker').addEventListener('change', handleFileSelect, false);
} else {
    alert('The File APIs are not fully supported in this browser.');
}