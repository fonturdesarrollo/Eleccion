using Database.Classes;
using Seguridad.Clases;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;

namespace Eleccion
{
    public class Voto
    {
		public static int InsertarVoto(CVoto objetoVoto)
		{
			int resultado = 0;
            string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					foreach (var item in objetoVoto.tipoEleccionID)
					{
						using (SqlCommand cmd = new SqlCommand("usp_Voto_Insertar", conn))
						{
							cmd.CommandType = CommandType.StoredProcedure;

							cmd.Parameters.Add(new SqlParameter("@CandidatoID", SqlDbType.Int) { Value = objetoVoto.candidatoID });
							cmd.Parameters.Add(new SqlParameter("@UsuarioID", SqlDbType.VarChar) { Value = objetoVoto.usuarioID });
							cmd.Parameters.Add(new SqlParameter("@TipoEleccionID", SqlDbType.VarChar) { Value = item });

							resultado = Convert.ToInt32(cmd.ExecuteScalar());
						}
					}
				}
			}
			catch (Exception)
			{
				return 0;
			}

			return resultado;
		}

		public static bool EsVotoRegistrado(int codigoUsuario)
		{
			CSeguridad objetoSeguridad = new CSeguridad();
			objetoSeguridad.SeguridadUsuarioDatosID = codigoUsuario;
			if (objetoSeguridad.EsUsuarioAdministrador() == true)
			{
				return false;
			}

			bool resultado = false;
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				List<int> registrados = new List<int>();

				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("usp_Voto_ObtenerVotoRegistrado", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@UsuarioVoto", SqlDbType.Int) { Value = codigoUsuario });

						using (SqlDataReader dr = cmd.ExecuteReader())
						{
							int agregado = 1;
							while (dr.Read())
							{
								registrados.Add(agregado);
								agregado++;
							}

							if (registrados.Count >= 4)
							{
								resultado = true;
							}
						}
					}
				}
			}
			catch (Exception)
			{
				return resultado;
			}

			return resultado;
		}

		public static int RestablecerVoto(string cedulaVotante)
		{
			int codigoVotante = ObtenerIDVotante(cedulaVotante);
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("usp_Voto_Restablecer", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@UsuarioVoto", SqlDbType.Int) { Value = codigoVotante });

						cmd.ExecuteScalar();
					}
				}
				return 1;
			}
			catch (Exception)
			{
				return 0;
			}
		}

		private static int ObtenerIDVotante(string cedulaVotante)
		{
			int resultado = 0;
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("usp_Voto_ObtenerVotante", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@CedulaVotante", SqlDbType.VarChar) { Value = cedulaVotante });

						using (SqlDataReader dr = cmd.ExecuteReader())
						{
							while (dr.Read())
							{
								resultado = Convert.ToInt32(dr["SeguridadUsuarioDatosID"]);
							}
						}
					}
				}
			}
			catch (Exception)
			{
				throw;
			}

			return resultado;
		}

		public static DataSet ObtenerResultados(int tipoEleccionID)
		{
			DataSet dsResultados = new DataSet();
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("usp_Voto_ObtenerResultados", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@TipoEleccionID", SqlDbType.Int) { Value = tipoEleccionID });

						using (SqlDataAdapter da = new SqlDataAdapter(cmd))
						{
							da.Fill(dsResultados);
						}
					}
				}
			}
			catch (Exception)
			{
				throw;
			}

			return dsResultados;
		}

		public static DataSet ObtenerGanadora(int tipoEleccionID)
		{
			DataSet dsGanadora = new DataSet();
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("usp_Voto_ObtenerGanadora", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@TipoEleccionID", SqlDbType.Int) { Value = tipoEleccionID });

						using (SqlDataAdapter da = new SqlDataAdapter(cmd))
						{
							da.Fill(dsGanadora);
						}
					}
				}
			}
			catch (Exception)
			{
				throw;
			}

			return dsGanadora;
		}

		public static int ConfigurarEstatusEleccion(string descripcionGenerico, string valorGenerico)
		{
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("usp_Voto_EstablecerEstatusEleccion", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@DescripcionGenerico", SqlDbType.VarChar) { Value = descripcionGenerico });
						cmd.Parameters.Add(new SqlParameter("@ValorGenerico", SqlDbType.VarChar) { Value = valorGenerico });

						cmd.ExecuteScalar();
					}
				}
				return 1;
			}
			catch (Exception)
			{
				return 0;
			}
		}

		public static List<int> ObtenerTipoVotoEleccionPorUsuario(int codigoUsuario)
		{
			CSeguridad objetoSeguridad = new CSeguridad();
			objetoSeguridad.SeguridadUsuarioDatosID = codigoUsuario;
			List<int> tipoVoto = new List<int>();
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("usp_Voto_ObtenerVotoRegistrado", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@UsuarioVoto", SqlDbType.Int) { Value = codigoUsuario });

						using (SqlDataReader dr = cmd.ExecuteReader())
						{
							while (dr.Read())
							{
								tipoVoto.Add((int)dr["TipoEleccionID"]);
							}
						}
					}
				}
			}
			catch (Exception)
			{
				return tipoVoto;
			}

			return tipoVoto;
		}
	}
}