using Database.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Eleccion
{
    public class Generico
    {
        public static SqlDataReader ObtenerValorGenerico(string descripcionGenerico)
        {
            SqlParameter[] dbParams = new SqlParameter[]
                {
                    DBHelper.MakeParam("@DescripcionGenerico", SqlDbType.VarChar, 0,descripcionGenerico),
                };
            return DBHelper.ExecuteDataReader("usp_Genericos_ObtenerValorGenerico", dbParams);
        }
    }
}
