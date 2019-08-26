using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eleccion
{
    public partial class PanelDeControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRestablecer_Click(object sender, EventArgs e)
        {
            if(Voto.RestablecerVoto(txtCedula.Text) > 0 )
            {
                messageBox.ShowMessage("Voto restablecido");
                txtCedula.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Voto.ConfigurarEstatusEleccion("EstatusVotacion",txtEstatus.Text) > 0)
            {
                messageBox.ShowMessage("Elección Configurada");
                txtEstatus.Text = "";
            }
        }
    }
}