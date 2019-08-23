using Database.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Eleccion
{
    public class Candidatos
    {
        public static DataSet ObtenerCandiatos(int cedulaCandidato)
        {
            SqlParameter[] dbParams = new SqlParameter[]
                {
                    DBHelper.MakeParam("@CedulaCandidato", SqlDbType.Int, 0,cedulaCandidato),
                };
            return DBHelper.ExecuteDataSet("usp_Candidato_ObtenerCandidatos", dbParams);

        }
    }
}