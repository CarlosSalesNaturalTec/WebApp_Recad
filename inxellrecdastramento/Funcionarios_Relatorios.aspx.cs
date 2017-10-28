using System;
using System.Text;

public partial class Funcionarios_Relatorios : System.Web.UI.Page
{
    StringBuilder str = new StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {

        // somente usuarios nivel 1 tem acesso (gestor de município)
        int nivel = Convert.ToInt16(Session["UserLevel"].ToString());
        if (nivel != 1) { Response.Redirect("NaoAutorizado.aspx"); }

        string idMunicAux = Session["ID_Munic"].ToString();

        PreencheInstituicoes(idMunicAux);

    }

    private void PreencheInstituicoes(string idMunic)
    {

        StringBuilder strInst = new StringBuilder();
        strInst.Clear();
        strInst.Append("<option value=\"0\">Todas</option>");

        string strSelect = "select ID_inst, nome from Tbl_Instituicao " +
                            "where ID_Munic = " + idMunic + " " +
                            "order by nome ";

        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(strSelect);

        while (dados.Read())
        {
            strInst.Append("<option value=\"" + Convert.ToString(dados[0]) + "\">" + Convert.ToString(dados[1]) + "</option>");
        }
        ConexaoBancoSQL.fecharConexao();

        literal_instituicao.Text = strInst.ToString();

    }

}