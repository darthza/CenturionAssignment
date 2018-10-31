using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace Centurion.Business_Logic
{
    public class DataAccess
    {
        public object Sqlcommand { get; private set; }

        public DataSet getSPDS(string spName , SqlParameterCollection param)
        {
            SqlConnection sqlConn = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString);
            SqlCommand sqlcomm = new SqlCommand();
            sqlcomm.Connection = sqlConn;
            using (sqlConn)
            {
                try
                {
                    using (SqlDataAdapter da = new SqlDataAdapter())
                    {                    
                        sqlcomm.Parameters. = param;
                        var returnParam = new SqlParameter
                        {
                            ParameterName = "@Error",
                            Direction = ParameterDirection.Output,
                            Size = 1000
                        };
                        sqlcomm.Parameters.Add(returnParam);
                        sqlcomm.CommandText = "StoredProcedureName";
                        da.SelectCommand = sqlcomm;
                        da.SelectCommand.CommandType = CommandType.StoredProcedure;

                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        return ds;
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("SQL Error: " + ex.Message);
                }
                return new DataSet();
            } 
    }
}