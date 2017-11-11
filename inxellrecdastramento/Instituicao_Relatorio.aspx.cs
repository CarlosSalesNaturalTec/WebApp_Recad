using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Instituicao_Relatorio_aspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Só nivel 1 autorizado a entrar;
        

        int nivel = Convert.ToInt16(Session["UserLevel"].ToString());
        if (nivel != 1)
        {
            Response.Redirect("NaoAutorizado.aspx");
        }

    }
}