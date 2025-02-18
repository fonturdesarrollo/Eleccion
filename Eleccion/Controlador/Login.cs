using Database.Classes;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Seguridad
{
    public partial class Login
    {
		public static DataSet ValidarLogin(string sPassword)
		{
			DataSet dsLogin = new DataSet();
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("usp_Login_ValidarLogin", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@ClaveUsuario", SqlDbType.VarChar) { Value = sPassword });

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

	}
}