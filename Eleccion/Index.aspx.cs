using Eleccion;
using Seguridad.Clases;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Seguridad
{
    public partial class Index : System.Web.UI.Page
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
						Response.Redirect("Vista/VotacionCerrada.aspx");
						break;
					}
					else if (row["ValorGenerico"].ToString().ToLower().Contains("ganador"))
					{
						Response.Redirect("Vista/GanadorSimpatia.aspx");
						break;
					}
				}

				if (Request.Cookies["login"] != null)
				{
					if (Request.Cookies["login"].Value != "")
					{
						ProcesoLogin();
					}
				}
			}
		}

		protected void btnAceptar_Click(object sender, EventArgs e)
        {
            ProcesoLogin();
        }
        private void ProcesoLogin()
        {
            CSeguridad objetoSeguridad = new CSeguridad();
            if (Convert.ToInt32(hdnCodigoUsuario.Value) == 0)
            {
                try
                {
                    DataSet ds = Login.ValidarLogin(this.txtClave.Text);
                    DataTable dt = ds.Tables[0];
                    if (dt.Rows.Count == 0)
                    {
                        messageBox.ShowMessage("El usuario y/o la contraseña son incorrectos");
                    }
                    else
                    {
                        this.Session["UserId"] = dt.Rows[0]["SeguridadUsuarioDatosID"].ToString();
                        this.Session["UserName"] = dt.Rows[0]["LoginUsuario"].ToString();
                        this.Session["NombreCompletoUsuario"] = dt.Rows[0]["NombreCompleto"].ToString();
                        this.Session["ClaveUsuario"] = dt.Rows[0]["ClaveUsuario"].ToString();
                        hdnCodigoUsuario.Value = dt.Rows[0]["SeguridadUsuarioDatosID"].ToString();
                        objetoSeguridad.SeguridadUsuarioDatosID = Convert.ToInt32(this.Session["UserId"].ToString());

                        if(objetoSeguridad.EsUsuarioAdministrador())
                        {
                            Response.Redirect("Galeria.aspx");
                        }
                        else if (!Voto.EsVotoRegistrado(Convert.ToInt32(Session["UserId"])))
                        {
                            Response.Redirect("Galeria.aspx");
                        }
                        else if (Voto.EsVotoRegistrado(Convert.ToInt32(Session["UserId"])))
                        {
                            Session.Remove("UserId");
                            Session.Remove("UserName");
                            Session.Remove("NombreCompletoUsuario");
                            Session.Remove("ClaveUsuario");
                            hdnCodigoUsuario.Value = "0";
                            messageBox.ShowMessage("Ya votaste, gracias por tu participación");
                        }
                    }

                }
                catch (Exception ex)
                {
                    var x = ex.Message;
                    messageBox.ShowMessage(ex.Message);
                }
            }
        }

        private void RestablecerVariables()
        {
            this.Session["UserId"] = "0";
            this.Session["UserName"] = "";
            this.Session["NombreCompletoUsuario"] = "";
            this.Session["ClaveUsuario"] = "";
            hdnCodigoUsuario.Value = "0";
        }
    }
}