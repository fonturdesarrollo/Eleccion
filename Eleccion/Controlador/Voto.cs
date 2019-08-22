using Database.Classes;
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
    }
}