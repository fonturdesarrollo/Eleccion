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
    public partial class Votar : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(!Voto.EsVotoRegistrado(Convert.ToInt32(Session["UserId"])))
                {
                    CargarCandidatos();

					var tipoEleccion = Voto.ObtenerTipoVotoEleccionPorUsuario(Convert.ToInt32(Session["UserId"]));
					GridViewRow row = gridDetalle.Rows[0];

					CheckBox chkSimpatia = (CheckBox)row.FindControl("simpatia");
					CheckBox chkActitud = (CheckBox)row.FindControl("actitud");
					CheckBox chkSonrisa = (CheckBox)row.FindControl("sonrisa");

					if (tipoEleccion.Any())
					{
						chkSimpatia.Checked = tipoEleccion.Contains(1) ? true : false;
						chkActitud.Checked = tipoEleccion.Contains(2) ? true : false;
						chkSonrisa.Checked = tipoEleccion.Contains(3) ? true : false;

						chkSimpatia.Visible = chkSimpatia.Checked ? false : true;
						chkActitud.Visible = chkActitud.Checked ? false : true;
						chkSonrisa.Visible = chkSonrisa.Checked ? false : true;
					}
				}				
                else
                {
                    Response.Redirect("Mensaje.aspx");
                }
            }
        }
        private void CargarCandidatos()
        {
            try
            {
                DataSet ds = Candidatos.ObtenerCandidatos(Convert.ToInt32(Request.QueryString["cedulaCandidato"].ToString()));
                this.gridDetalle.DataSource = ds.Tables[0];
                this.gridDetalle.DataBind();
            }
            catch (Exception ex)
            {
                messageBox.ShowMessage(ex.Message + ex.StackTrace);
            }
        }

		protected void gridDetalle_RowCommand(object sender, GridViewCommandEventArgs e)
		{
			if (!Voto.EsVotoRegistrado(Convert.ToInt32(Session["UserId"])))
			{
				try
				{
					if (e.CommandName == "VotarDetalle")
					{
						GridViewRow row = gridDetalle.Rows[0];

						CheckBox chkSimpatia = (CheckBox)row.FindControl("simpatia");
						CheckBox chkActitud = (CheckBox)row.FindControl("actitud");
						CheckBox chkSonrisa = (CheckBox)row.FindControl("sonrisa");

						if ((chkSimpatia != null && chkSimpatia.Visible && chkSimpatia.Checked) ||
							(chkActitud != null && chkActitud.Visible && chkActitud.Checked) ||
							(chkSonrisa != null && chkSonrisa.Visible && chkSonrisa.Checked))
						{
							CVoto objetoVoto = new CVoto();
							objetoVoto.candidatoID = Convert.ToInt32(e.CommandArgument.ToString());
							objetoVoto.usuarioID = Convert.ToInt32(Session["UserId"]);
							objetoVoto.tipoEleccionID = new List<int>();

							if (chkSimpatia != null && chkSimpatia.Checked && chkSimpatia.Visible)
							{
								objetoVoto.tipoEleccionID.Add(1);
							}
							if (chkActitud != null && chkActitud.Checked && chkActitud.Visible)
							{
								objetoVoto.tipoEleccionID.Add(2);
							}
							if (chkSonrisa != null && chkSonrisa.Checked && chkSonrisa.Visible)
							{
								objetoVoto.tipoEleccionID.Add(3);
							}

							if (Voto.InsertarVoto(objetoVoto) > 0)
							{
								Session.Remove("UserName");
								Session.Remove("NombreCompletoUsuario");
								Session.Remove("ClaveUsuario");
								Response.Redirect("Mensaje.aspx");
							}
						}
						else
						{
							messageBox.ShowMessage("Debe marcar al menos una opción.");
						}
					}
				}
				catch (Exception ex)
				{
					messageBox.ShowMessage(ex.Message + ex.StackTrace);
				}
			}
			else
			{
				messageBox.ShowMessage("Voto registrado");
			}
		}
	}
}