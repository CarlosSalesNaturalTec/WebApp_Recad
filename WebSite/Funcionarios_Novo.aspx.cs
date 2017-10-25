using System;
using System.Text;
public partial class Funcionarios_Novo : System.Web.UI.Page
{
    StringBuilder str = new StringBuilder();
    string IDAux;
    string rel;


    protected void Page_Load(object sender, EventArgs e)
    {
        //caso não esteja logado, gera um erro em tempo de execução e vai para página de login
        IDAux = Session["ID_Munic"].ToString();


        string ScriptAux = "<script type=\"text/javascript\">" +
                        "document.getElementById('IDInstHidden').value = \"" + IDAux + "\";" +
                        "</script>";
        
        literal_instituicao.Text = ScriptAux;

        inst(IDAux);
    }

    private void inst(string mun)
    {


        StringBuilder strInst = new StringBuilder();

        string sql;
        sql = "select ID_inst, nome from Tbl_Instituicao " +
                            "where ID_Munic = " + mun + " " +
                            "order by nome ";


        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(sql);

        while (dados.Read())
        {
            strInst.Append("<option value=\"" + Convert.ToString(dados[0]) + "\">" + Convert.ToString(dados[1]) + "</option>");
        }
        ConexaoBancoSQL.fecharConexao();

        literal_instituicao.Text = strInst.ToString();
    }
    }