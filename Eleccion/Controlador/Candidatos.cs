using Database.Classes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Eleccion
{
    public class Candidatos
    {
		public static DataSet ObtenerCandidatos(int cedulaCandidato)
		{
			DataSet dsCandidatos = new DataSet();
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("usp_Candidato_ObtenerCandidatos", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@CedulaCandidato", SqlDbType.Int) { Value = cedulaCandidato });

						using (SqlDataAdapter da = new SqlDataAdapter(cmd))
						{
							da.Fill(dsCandidatos);
						}
					}
				}
			}
			catch (Exception)
			{
				throw;
			}

			return dsCandidatos;
		}
	}
}