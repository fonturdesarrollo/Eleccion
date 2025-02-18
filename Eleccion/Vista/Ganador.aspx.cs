using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eleccion
{
    public partial class Ganador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			if (!IsPostBack)
			{
				DataTable dt = Generico.ObtenerValorGenerico("EstatusVotacion");

				foreach (DataRow row in dt.Rows)
				{
					if (row["ValorGenerico"].ToString().ToLower().Contains("cerr"))
					{
						Response.Redirect("VotacionCerrada.aspx");
						break;
					}
					else if (row["ValorGenerico"].ToString().ToLower().Contains("ganador"))
					{
						CargarResultado();
						break;
					}
					else if (row["ValorGenerico"].ToString().ToLower().Contains("abier"))
					{
						Response.Redirect("../Index.aspx");
						break;
					}
				}
			}
		}
		private void CargarResultado()
        {
            try
            {
                DataSet ds = Voto.ObtenerGanadora(1);
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