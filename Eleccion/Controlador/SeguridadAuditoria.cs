using Database.Classes;
using Seguridad.Clases;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace Seguridad
{
    public class SeguridadAuditoria : Page
    {
        public SeguridadAuditoria()
        {
            this.Load += new EventHandler(Page_Load);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            EstablecerSeguridad();
        }
        private void EstablecerSeguridad()
        {

            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Cache.SetNoStore();

            if (this.Session["UserID"] == null)
            {
                AuditarMovimiento(HttpContext.Current.Request.Url.AbsolutePath, "Intento de entrar en pantalla sin iniciar sesión", System.Net.Dns.GetHostEntry(Request.ServerVariables["REMOTE_HOST"]).HostName, 0);
                Server.Transfer("Index.aspx");
            }
            else
            {
                CSeguridad objetoSeguridad = new CSeguridad();
                objetoSeguridad.SeguridadUsuarioDatosID = Convert.ToInt32(this.Session["UserId"].ToString());
                if (objetoSeguridad.EsUsuarioAdministrador() == false)
                {
                    if(EsCambioClave(HttpContext.Current.Request.Url.AbsolutePath) == false)
                    {
                        if (objetoSeguridad.EsAccesoPermitido(CodigoObjetoSegunUrl(HttpContext.Current.Request.Url.AbsolutePath)) == false)
                        {
                            AuditarMovimiento(HttpContext.Current.Request.Url.AbsolutePath, "Intento de entrar en pantalla sin tener permiso", System.Net.Dns.GetHostEntry(Request.ServerVariables["REMOTE_HOST"]).HostName, Convert.ToInt32(this.Session["UserId"].ToString()));
							Server.Transfer("Index.aspx");
						}
                    }
                }

            }
        }
        private int CodigoObjetoSegunUrl(string urlSeleccionado)
        {
            int codigoObjeto = 0;
            switch (urlSeleccionado.Replace("/Eleccion/", "/"))
            {
                case "/Galeria.aspx":
                    codigoObjeto = 1;
                    break;
                case "/Vista/Votar.aspx":
                    codigoObjeto = 2;
                    break;
                default:
                    break;
            }
            return codigoObjeto;
        }
        private bool EsCambioClave(string urlSeleccionado)
        {
            bool resultado = false;
            if(urlSeleccionado.Replace("/Eleccion/", "/") == "/Vista/SeguridadCambiarClave.aspx")
            {
                resultado = true;
            }
            return resultado;
        }
		public static void AuditarMovimiento(string nombreFormulario, string descripcionProceso, string nombreEquipoCliente, int codigoUsuario)
		{
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				string nombreServidor = System.Net.Dns.GetHostName();
				System.Net.IPHostEntry ipServidor = System.Net.Dns.GetHostEntry(nombreServidor);
				System.Net.IPAddress[] addr = ipServidor.AddressList;
				string ipEquipoCliente = addr[1].ToString();

				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("usp_SeguridadAuditoria_AuditarMovimiento", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@SeguridadUsuarioDatosID", SqlDbType.Int) { Value = codigoUsuario });
						cmd.Parameters.Add(new SqlParameter("@NombreFormulario", SqlDbType.VarChar) { Value = nombreFormulario });
						cmd.Parameters.Add(new SqlParameter("@DescripcionProceso", SqlDbType.VarChar) { Value = descripcionProceso });
						cmd.Parameters.Add(new SqlParameter("@NombreEquipoCliente", SqlDbType.VarChar) { Value = nombreEquipoCliente });
						cmd.Parameters.Add(new SqlParameter("@IPEquipoCliente", SqlDbType.VarChar) { Value = ipEquipoCliente });

						cmd.ExecuteScalar();
					}
				}
			}
			catch (Exception)
			{
				throw;
			}
		}

		public static DataSet ObtenerMovimientosAuditoria()
        {
            SqlParameter[] dbParams = new SqlParameter[]
                {

                };

            return DBHelper.ExecuteDataSet("usp_SeguridadAuditoria_ObtenerMovimientosAuditoria", dbParams);

        }
    }
    }