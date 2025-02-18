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
    public partial class VotacionCerrada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			if (!IsPostBack)
			{
				DataTable dt = Generico.ObtenerValorGenerico("EstatusVotacion");

				foreach (DataRow row in dt.Rows)
				{
					string valorGenerico = row["ValorGenerico"].ToString().ToLower();

					if (valorGenerico.Contains("ganador"))
					{
						Response.Redirect("Ganador.aspx");
						break;
					}
					else if (valorGenerico.Contains("abier"))
					{
						Response.Redirect("../Index.aspx");
						break;
					}
				}
			}
		}
	}
}