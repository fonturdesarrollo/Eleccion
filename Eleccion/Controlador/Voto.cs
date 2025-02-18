using Database.Classes;
using Seguridad.Clases;
using System;
using System.Collections.Generic;
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
            try
            {
				SqlParameter[] dbParamsDelete = new SqlParameter[]
				{
					DBHelper.MakeParam("@UsuarioVoto", SqlDbType.Int, 0, objetoVoto.usuarioID)
				};

				foreach (var item in objetoVoto.tipoEleccionID)
                {
					SqlParameter[] dbParams = new SqlParameter[]
					{
					    DBHelper.MakeParam("@CandidatoID", SqlDbType.Int, 0, objetoVoto.candidatoID),
					    DBHelper.MakeParam("@UsuarioID", SqlDbType.VarChar, 0, objetoVoto.usuarioID),
					    DBHelper.MakeParam("@TipoEleccionID", SqlDbType.VarChar, 0, item),
					};

					resultado = Convert.ToInt32(DBHelper.ExecuteScalar("usp_Voto_Insertar", dbParams));
				}


                return resultado;
            }
            catch (Exception)
            {
                return 0;
            }
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
            try
            {
                List<int> registrados = new List<int>();

                SqlParameter[] dbParams = new SqlParameter[]
                {
                    DBHelper.MakeParam("@UsuarioVoto", SqlDbType.Int, 0, codigoUsuario)
                };

                SqlDataReader dr = DBHelper.ExecuteDataReader("usp_Voto_ObtenerVotoRegistrado", dbParams);

                int agregado = 1;
                while (dr.Read())
                {
                    registrados.Add(agregado);
                    agregado++;
                }

                if(registrados.Count >= 4)
                {
                    resultado = true;
				}

                return resultado;
            }
            catch (Exception e)
            {
                return resultado;
            }
        }
        public static int RestablecerVoto(string cedulaVotante)
        {
            int codigoVotante = ObtenerIDVotante(cedulaVotante);

            try
            {
                SqlParameter[] dbParams = new SqlParameter[]
                {
                    DBHelper.MakeParam("@UsuarioVoto", SqlDbType.Int, 0, codigoVotante)
                };

                DBHelper.ExecuteScalar("usp_Voto_Restablecer", dbParams);
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
            try
            {
                SqlParameter[] dbParams = new SqlParameter[]
                {
                    DBHelper.MakeParam("@CedulaVotante", SqlDbType.VarChar, 0, cedulaVotante)
                };

                SqlDataReader dr = DBHelper.ExecuteDataReader("usp_Voto_ObtenerVotante", dbParams);

                while (dr.Read())
                {
                    resultado =  Convert.ToInt32(dr["SeguridadUsuarioDatosID"]);
                }

                return resultado;
            }
            catch (Exception e)
            {
                throw;
            }
        }
        public static DataSet ObtenerResultados(int tipoEleccionID)
        {
            SqlParameter[] dbParams = new SqlParameter[]
                {
					DBHelper.MakeParam("@TipoEleccionID", SqlDbType.Int, 0, tipoEleccionID)
				};

            return DBHelper.ExecuteDataSet("usp_Voto_ObtenerResultados", dbParams);

        }

        public static DataSet ObtenerGanadora(int tipoEleccionID)
        {
            SqlParameter[] dbParams = new SqlParameter[]
                {
					DBHelper.MakeParam("@TipoEleccionID", SqlDbType.Int, 0, tipoEleccionID)
				};
            return DBHelper.ExecuteDataSet("usp_Voto_ObtenerGanadora", dbParams);
        }

		public static int ConfigurarEstatusEleccion(string descripcionGenerico, string valorGenerico)
        {
            try
            {
                SqlParameter[] dbParams = new SqlParameter[]
                {
                    DBHelper.MakeParam("@DescripcionGenerico", SqlDbType.VarChar, 0, descripcionGenerico),
                    DBHelper.MakeParam("@ValorGenerico", SqlDbType.VarChar, 0, valorGenerico)
                };

                DBHelper.ExecuteScalar("usp_Voto_EstablecerEstatusEleccion", dbParams);
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

			try
			{
				SqlParameter[] dbParams = new SqlParameter[]
				{
					DBHelper.MakeParam("@UsuarioVoto", SqlDbType.Int, 0, codigoUsuario)
				};

				SqlDataReader dr = DBHelper.ExecuteDataReader("usp_Voto_ObtenerVotoRegistrado", dbParams);

				while (dr.Read())
				{
                    tipoVoto.Add((int)dr["TipoEleccionID"]);
				}

				return tipoVoto.ToList();
			}
			catch (Exception e)
			{
				return tipoVoto;
			}
		}
	}
}