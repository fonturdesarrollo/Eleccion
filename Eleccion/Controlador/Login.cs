using Database.Classes;
using System.Data;
using System.Data.SqlClient;

namespace Seguridad
{
    public partial class Login
    {
        public static DataSet  ValidarLogin(string sPassword)
        {
            SqlParameter[] dbParams = new SqlParameter[]
                {
                    DBHelper.MakeParam("@ClaveUsuario", SqlDbType.Int, 0, sPassword)
                };
            return DBHelper.ExecuteDataSet("usp_Login_ValidarLogin", dbParams);
        }
    }
}