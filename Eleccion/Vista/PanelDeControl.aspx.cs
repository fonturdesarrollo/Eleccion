using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eleccion
{
    public partial class PanelDeControl : Seguridad.SeguridadAuditoria
    {
        protected new void Page_Load(object sender, EventArgs e)
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
    }
}