using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Collections;

/// <summary>
/// Chua cac ham xu ly co ban voi database - dung cho cho toan project
/// </summary>
public class CommonDb
{
    private static SqlConnection conn;
    private static SqlDataAdapter adapter;

    public CommonDb()
    {
        //conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        //conn.Open();
    }
    /// <summary>
    /// create new connection
    /// </summary>
    /// <returns></returns>
    public static SqlConnection OpenConnection()
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
                conn.Open();
            }
            else
            {
                conn.Open();
            }
        }
        catch
        {
            return null;
        }
        return conn;
    }
    /// <summary>
    /// close a connection
    /// </summary>
    /// <param name="sqlCn"></param>
    public static void CloseConnection(SqlConnection sqlCn)
    {
        if (sqlCn != null)
        {
            if (sqlCn.State == ConnectionState.Open)
                sqlCn.Close();
            sqlCn.Dispose();
        }
    }

    /// <summary>
    /// Execute all store procedure without parammeter
    /// </summary>
    /// <param name="spName">Sql store procedure name</param>
    /// <returns>Sql data in a DataTable</returns>
    public static DataTable executeSelect(string spName)
    {
        DataSet dataSet = new DataSet();
        //Open connection
        conn = OpenConnection();

        adapter = new SqlDataAdapter(spName, conn);
        adapter.SelectCommand.CommandType = CommandType.StoredProcedure;

        adapter.Fill(dataSet);

        //Close connection
        CloseConnection(conn);
        return dataSet.Tables[0];
    }

    /// <summary>
    /// Execute all store procedure has parammeter
    /// </summary>
    /// <param name="spName">Sql store procedure name</param>
    /// <param name="paramList">Parameters of the store procedure</param>
    /// <returns>Sql data in a DataTable</returns>
    public static DataTable executeSelect(string spName, SqlParameter[] paramList)
    {
        DataSet dataSet = new DataSet();
        //Open connection
        conn = OpenConnection();

        adapter = new SqlDataAdapter(spName, conn);
        adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
        adapter.SelectCommand.Parameters.AddRange(paramList);

        adapter.Fill(dataSet);
        //Close connection
        CloseConnection(conn);

        return dataSet.Tables[0];
    }

    /// <summary>
    /// Execute all store procedure performs insert, update, delete
    /// </summary>
    /// <param name="spName">Sql store procedure name</param>
    /// <param name="paramList">Parameters of the store procedure</param>
    /// <returns>Sql data in a DataTable</returns>
    public static int executeUpdate(string spName, SqlParameter[] paramList)
    {
        int result = 0;
        //Open connection
        conn = OpenConnection();

        SqlCommand command = new SqlCommand(spName, conn);
        command.CommandType = CommandType.StoredProcedure;
        command.Parameters.AddRange(paramList);

        try
        {
            result = command.ExecuteNonQuery();
        }
        catch (SqlException)
        {
            //relationship error
            result = 0;
        }
        //Close connection
        CloseConnection(conn);

        return result;
    }

    /// <summary>
    /// executeScalary - thuc thi cac cau lenh voi bang co truong la identity
    /// </summary>
    /// <param name="spName"></param>
    /// <param name="paramList"></param>
    /// <returns>id tu tang cua record vua insert</returns>
    public static int executeScalary(string spName, SqlParameter[] paramList)
    {
        int result = 0;
        //Open connection
        conn = OpenConnection();

        SqlCommand command = new SqlCommand(spName, conn);
        command.CommandType = CommandType.StoredProcedure;
        command.Parameters.AddRange(paramList);

        result = int.Parse(command.ExecuteScalar().ToString());
        //Close connection
        CloseConnection(conn);

        return result;
    }
}
