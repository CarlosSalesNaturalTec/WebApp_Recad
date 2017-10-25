using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Grafico_Instituicao : System.Web.UI.Page
{
    StringBuilder str = new StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {
        int nivel = Convert.ToInt16(Session["UserLevel"].ToString());
        if (nivel != 1){
            Response.Redirect("NaoAutorizado.aspx");
        }

        string stringDadosGrafinst;

        // Bloco 1
        stringDadosGrafinst = " select Cidade as c1, count(ID_inst) as q1 " +
           "from Tbl_Instituicao " +
           "where ID_Munic = " + Session["ID_Munic"].ToString() +
           "group by Cidade ";

        Literal_Bloco1.Text = Monta_Graf_Morris_Bar(stringDadosGrafinst, "Bloco1_Chart");


        //Bloco 2
        stringDadosGrafinst = "select Investimento as a1, count(ID_inst) as q1 " +
            "from Tbl_Instituicao " +
            "where ID_Munic = " + Session["ID_Munic"].ToString() +
            "group by Investimento";

        Literal_Bloco2.Text = Monta_Graf_Morris_Donut(stringDadosGrafinst, "Bloco2_Chart");

        //Bloco 3

        stringDadosGrafinst = "select Zona as z1, count(ID_inst) as q1 " +
            "from Tbl_instituicao " +
            "where ID_Munic = " + Session["ID_Munic"].ToString() +
            "group by Zona";

        Literal_Bloco3.Text = Monta_Graf_Morris_Donut(stringDadosGrafinst, "Bloco3_Chart");

        //Bloco 4 

        stringDadosGrafinst = "select Porte as p1 , count(ID_inst) as q1 " +
            "from Tbl_instituicao " +
            "where ID_Munic = " + Session["ID_Munic"].ToString() +
            "group by Porte";

        Literal_Bloco4.Text = Monta_Graf_Morris_Donut(stringDadosGrafinst, "Bloco4_Chart");

        stringDadosGrafinst = "select Cat_Adm as ca1 , count(ID_inst) as q1 " +
            "from Tbl_instituicao " +
            "where ID_Munic = " + Session["ID_Munic"].ToString() +
            "group by Cat_Adm";

        Literal_Bloco5.Text = Monta_Graf_Morris_Bar(stringDadosGrafinst, "Bloco5_Chart");

    }
    private string Monta_Graf_Morris_Bar(string stringselect, string ID_Chart)
    {
        string txtAux = "";
        str.Clear();

        txtAux = "<script type=\"text/javascript\">";
        str.Append(txtAux);

        txtAux = "Morris.Bar({element: '" + ID_Chart + "', data: [";
        str.Append(txtAux);

        //dados
        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);
        while (dados.Read())
        {
            txtAux = "{coluna: \"" + Convert.ToString(dados[0]) + "\", valor: " + Convert.ToString(dados[1]) + "},";
            str.Append(txtAux);
        }
        ConexaoBancoSQL.fecharConexao();

        txtAux = "],";
        str.Append(txtAux);

        txtAux = "xkey: 'coluna',";
        str.Append(txtAux);

        txtAux = "ykeys: ['valor'],";
        str.Append(txtAux);

        txtAux = "labels: ['Quant. Total']";
        str.Append(txtAux);

        txtAux = "});";
        str.Append(txtAux);

        txtAux = "</script>";
        str.Append(txtAux);

        return str.ToString();

    }

    private string Monta_Graf_Morris_Donut(string stringselect, string ID_Chart)
    {
        string txtAux = "";
        str.Clear();

        txtAux = "<script type=\"text/javascript\">";
        str.Append(txtAux);

        txtAux = "Morris.Donut({element: '" + ID_Chart + "', data: [";
        str.Append(txtAux);

        //dados
        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);
        while (dados.Read())
        {
            txtAux = "{label: \"" + Convert.ToString(dados[0]) + "\", value: " + Convert.ToString(dados[1]) + "},";
            str.Append(txtAux);
        }
        ConexaoBancoSQL.fecharConexao();

        txtAux = "]});";
        str.Append(txtAux);

        txtAux = "</script>";
        str.Append(txtAux);

        return str.ToString();

    }

}