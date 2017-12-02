﻿using System;
using System.Text;

public partial class Funcionarios_Listagem : System.Web.UI.Page
{
    StringBuilder str = new StringBuilder();
    int TotaldeRegistros = 0;
    string IDAux, iduser;
    int nivel;

    protected void Page_Load(object sender, EventArgs e)
    {
        string idlevel = Session["UserLevel"].ToString();
         /* <!--*******Customização somente se for usar um "ID Auxiliar" para o novo registro *******--> */
        string ScriptAux = "<script type=\"text/javascript\">" +
                        "document.getElementById('IdNivelAux').value = \"" + idlevel + "\";" +
                        "</script>";
        Literal_nivel.Text = ScriptAux;

        nivel = Convert.ToInt16(Session["UserLevel"].ToString());

        // ID dO Municipio
        IDAux = Session["ID_Munic"].ToString();

        // ID UF
        iduser = Session["UserID"].ToString();

        montaCabecalho();
        dadosCorpo();
        montaRodape();

        Literal1.Text = str.ToString();

    }

    private void montaCabecalho()
    {
        // <!--*******Customização*******-->
        string stringcomaspas = "<table id=\"tabela\" class=\"table table-striped table-hover table-bordered \">" +
            "<thead>" +
            "<tr>" +
            "<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NOME</th>" +
            "<th>FUNÇÃO</th>" +
            "<th>CELULAR</th>" +
            "<th>E-MAIL</th>" +
            "</tr>" +
            "</thead>" +
            "<tbody>";
        str.Clear();
        str.Append(stringcomaspas);
    }

    private void dadosCorpo()
    {
        // <!--*******Customização*******-->


        string stringselect = " ";
        switch (nivel)
        {
            case 0:

                stringselect = "select ID_func, nome, Funcao, celular1, email " +
               "from tbl_Funcionarios " +
               "where id_uf = " + iduser +
               " order by Nome";

                break;
            default:
                stringselect = "select ID_func, nome, Funcao, celular1, email " +
               "from tbl_Funcionarios " +
               "where ID_Munic = " + IDAux +
               " order by Nome";
                break;
        }


        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);

        while (dados.Read())
        {
            string Coluna0 = Convert.ToString(dados[0]); //id 

            string Coluna1 = Convert.ToString(dados[1]);
            string Coluna2 = Convert.ToString(dados[2]);
            string Coluna3 = Convert.ToString(dados[3]);
            string Coluna4 = Convert.ToString(dados[4]);

            // <!--*******Customização*******-->
            string bt1 = "<a class='w3-btn w3-round w3-hover-blue w3-text-green' onclick='exibirFicha("+ Coluna0 + ")'><i class='fa fa-id-card-o' aria-hidden='true'></i></a>";
            string bt2 = "<a class='w3-btn w3-round w3-hover-red w3-text-green' onclick='Excluir(" + Coluna0 + ")'><i class='fa fa-trash-o' aria-hidden='true'></i></a>&nbsp;&nbsp;";
            string bt3 = "<a class='w3-btn w3-round w3-hover-blue w3-text-green' onclick='Imprimir(" + Coluna0 + ")'><i class='fa fa-print' aria-hidden='true'></i></a>&nbsp;&nbsp;";

            string stringcomaspas = "<tr>" +
                "<td>" + bt1 + bt2 + bt3 +  Coluna1 + "</td>" +
                "<td>" + Coluna2 + "</td>" +
                "<td>" + Coluna3 + "</td>" +
                "<td>" + Coluna4 + "</td>" +
                "</tr>";

            str.Append(stringcomaspas);
            TotaldeRegistros += 1;
        }
        ConexaoBancoSQL.fecharConexao();

        lblTotalRegistros.Text = TotaldeRegistros.ToString();

    }

    private void montaRodape()
    {
        string footer = "</tbody></table>";
        str.Append(footer);
    }
}