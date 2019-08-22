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
    public partial class Votar : Seguridad.SeguridadAuditoria
    {
        protected new void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarCandidatos();
            }
        }

        private void CargarCandidatos()
        {
            try
            {
                DataSet ds = Candidatos.ObtenerCandiatos();
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
            if( !Voto.EsVotoRegistrado(Convert.ToInt32(Session["UserId"])))
            {
                try
                {
                    if (e.CommandName == "VotarDetalle")
                    {

                        CVoto objetoVoto = new CVoto();
                        objetoVoto.candidatoID = Convert.ToInt32(e.CommandArgument.ToString());
                        objetoVoto.usuarioID = Convert.ToInt32(Session["UserId"]);

                        if (Voto.InsertarVoto(objetoVoto) > 0)
                        {
                            Session.Remove("UserId");
                            Session.Remove("UserName");
                            Session.Remove("NombreCompletoUsuario");
                            Session.Remove("ClaveUsuario");
                            Response.Redirect("Mensaje.aspx");
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