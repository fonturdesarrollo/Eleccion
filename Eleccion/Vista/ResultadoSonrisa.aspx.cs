using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eleccion
{
    public partial class ResultadoSonrisa : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                CargarResultado();
            }
        }
        private void CargarResultado()
        {
            try
            {
                DataSet ds = Voto.ObtenerResultados(3);
                this.gridDetalle.DataSource = ds.Tables[0];
                this.gridDetalle.DataBind();
            }
            catch (Exception ex)
            {
                messageBox.ShowMessage(ex.Message + ex.StackTrace);
            }
        }
    }
}