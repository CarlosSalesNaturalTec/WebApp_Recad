﻿using System;

public partial class CAD_Municipio_Novo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string iduser = Session["UserID"].ToString();

        /* <!--*******Customização somente se for usar um "ID Auxiliar" para o novo registro *******--> */
        string ScriptAux = "<script type=\"text/javascript\">" +
                        "document.getElementById('IDAuxHidden').value = \"" + iduser  + "\";" +
                        "</script>";        
        Literal1.Text = ScriptAux;
        
    }
}