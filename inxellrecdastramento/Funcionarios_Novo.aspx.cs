using System;
using System.Text;

public partial class Funcionarios_Novo : System.Web.UI.Page
{
    StringBuilder str = new StringBuilder();


    protected void Page_Load(object sender, EventArgs e)
    {
        //caso não esteja logado, gera um erro em tempo de execução e vai para página de login
        string IDAux = Session["ID_Munic"].ToString();
        string idUFAux = Session["ID_UF"].ToString();

        string ScriptAux = "<script type=\"text/javascript\">" +
                        "document.getElementById('IDInstHidden').value = \"" + IDAux + "\";" +
                        "document.getElementById('ID_UF_Hidden').value = \"" + idUFAux + "\";" +
                        "</script>";

        Literal1.Text = ScriptAux;
       


    }
   
}