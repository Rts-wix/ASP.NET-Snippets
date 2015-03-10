using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class søgogerstat_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String mainTekst =
        @"En lang tekst med flere linieskift
        Her er linie 2
        Og her line tre";

        Literal1.Text = mainTekst; 
        Literal2.Text = mainTekst.Replace("\n", "<br />\n");
    }
}