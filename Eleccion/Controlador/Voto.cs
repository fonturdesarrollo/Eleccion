using Database.Classes;
using Seguridad.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Eleccion
{
    public class Voto
    {
        public static int InsertarVoto(CVoto objetoVoto)
        {
            try
            {
                SqlParameter[] dbParams = new SqlParameter[]
                {
                    DBHelper.MakeParam("@CandidatoID", SqlDbType.Int, 0, objetoVoto.candidatoID),
                    DBHelper.MakeParam("@UsuarioID", SqlDbType.VarChar, 0, objetoVoto.usuarioID),
                };

                return Convert.ToInt32(DBHelper.ExecuteScalar("usp_Voto_Insertar", dbParams));
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
                SqlParameter[] dbParams = new SqlParameter[]
                {
                    DBHelper.MakeParam("@UsuarioVoto", SqlDbType.Int, 0, codigoUsuario)
                };

                SqlDataReader dr = DBHelper.ExecuteDataReader("usp_Voto_ObtenerVotoRegistrado", dbParams);

                while (dr.Read())
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
        public static DataSet ObtenerResultados()
        {
            SqlParameter[] dbParams = new SqlParameter[]
                {

                };
            return DBHelper.ExecuteDataSet("usp_Voto_ObtenerResultados", dbParams);

        }
    }
}