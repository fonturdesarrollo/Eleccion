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
    public class Generico
    {
		public static DataTable ObtenerValorGenerico(string descripcionGenerico)
		{
			DataTable dataTable = new DataTable();
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("usp_Genericos_ObtenerValorGenerico", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@DescripcionGenerico", SqlDbType.VarChar) { Value = descripcionGenerico });

						using (SqlDataReader reader = cmd.ExecuteReader())
						{
							dataTable.Load(reader);
						}
					}
				}
			}
			catch (Exception)
			{
				throw;
			}

			return dataTable;
		}

	}
}
