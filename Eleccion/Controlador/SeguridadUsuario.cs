using Database.Classes;
using Seguridad.Clases;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Seguridad
{
    public partial class SeguridadUsuario
    {
        public static bool EsUsuarioPermitido(HttpSessionState Session, int codigoObjeto)
        {
            bool respuesta = true;
            CSeguridad objetoSeguridad = new CSeguridad();
            if (Session["UserID"] == null)
            {
                respuesta = false;
            }
            //Valida que si el usuario esta correctamente loggeado no pueda entrar a modulo no permitido
            if(respuesta == true)
            {
                if(codigoObjeto != 999)
                {
                    objetoSeguridad.SeguridadUsuarioDatosID = Convert.ToInt32(Session["UserId"].ToString());
                    if (objetoSeguridad.EsUsuarioAdministrador() == false)
                    {
                        respuesta = objetoSeguridad.EsAccesoPermitido(codigoObjeto);
                        if(respuesta== false)
                        {
                            Session.Abandon();
                        }
                    }
                    else
                    {
                        respuesta = true;
                    }
                }
                else
                {
                    respuesta = true;
                }
            }
            return respuesta;
        }
		public static int InsertarUsuario(CSeguridad objetoSeguridad)
		{
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					string storedProcedure = objetoSeguridad.SeguridadUsuarioDatosID == 0
						? "[usp_SeguridadUsuario_Insertar]"
						: "[usp_SeguridadUsuario_Actualizar]";

					using (SqlCommand cmd = new SqlCommand(storedProcedure, conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@SeguridadUsuarioDatosID", SqlDbType.Int) { Value = objetoSeguridad.SeguridadUsuarioDatosID });
						cmd.Parameters.Add(new SqlParameter("@LoginUsuario", SqlDbType.VarChar) { Value = objetoSeguridad.LoginUsuario });
						cmd.Parameters.Add(new SqlParameter("@ClaveUsuario", SqlDbType.VarChar) { Value = objetoSeguridad.ClaveUsuario });
						cmd.Parameters.Add(new SqlParameter("@NombreCompleto", SqlDbType.VarChar) { Value = objetoSeguridad.NombreCompleto });
						cmd.Parameters.Add(new SqlParameter("@DescripcionUsuario", SqlDbType.VarChar) { Value = objetoSeguridad.DescripcionUsuario });
						cmd.Parameters.Add(new SqlParameter("@SeguridadGrupoID", SqlDbType.Int) { Value = objetoSeguridad.SeguridadGrupoID });
						cmd.Parameters.Add(new SqlParameter("@UsuarioTecnico", SqlDbType.Bit) { Value = objetoSeguridad.UsuarioTecnico });
						cmd.Parameters.Add(new SqlParameter("@EstatusUsuario", SqlDbType.VarChar) { Value = objetoSeguridad.EstatusUsuario });
						cmd.Parameters.Add(new SqlParameter("@EmpresaSucursalID", SqlDbType.Int) { Value = objetoSeguridad.EmpresaSucursalID });

						return Convert.ToInt32(cmd.ExecuteScalar());
					}
				}
			}
			catch (Exception)
			{
				return 0;
			}
		}

		public static DataSet ObtenerLogin(string loginDeUsuario)
		{
			DataSet dsLogin = new DataSet();
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("usp_SeguridadUsuario_ObtenerLogin", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@LoginUsuario", SqlDbType.VarChar) { Value = loginDeUsuario });

						using (SqlDataAdapter da = new SqlDataAdapter(cmd))
						{
							da.Fill(dsLogin);
						}
					}
				}
			}
			catch (Exception)
			{
				throw;
			}

			return dsLogin;
		}

        public static DataSet ObtenerSucursalesDeUsuario(int codigoUsuario, int codigoEmpresa)
        {
            SqlParameter[] dbParams = new SqlParameter[]
                {
                    DBHelper.MakeParam("@SeguridadUsuarioDatosID", SqlDbType.Int, 0, codigoUsuario),
                    DBHelper.MakeParam("@EmpresaID", SqlDbType.Int, 0, codigoEmpresa)
                };

            return DBHelper.ExecuteDataSet("usp_SeguridadUsuario_ObtenerSucursalesUsuario", dbParams);
        }
        public static DataSet EliminarSucursalUsuario(int codigoUsuario)
        {
            SqlParameter[] dbParams = new SqlParameter[]
                {
                    DBHelper.MakeParam("@SeguridadUsuarioSucursalEmpresaID", SqlDbType.Int, 0, codigoUsuario),
                };

            return DBHelper.ExecuteDataSet("usp_SeguridadUsuario_EliminarSucursalUsuario", dbParams);
        }

    }
}