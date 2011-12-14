using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Reflection;
using System.Runtime.InteropServices;
/// <summary>
/// Summary description for LogSystem
/// </summary>
/// 

public class LogSystemDao
{
    CommonDb db = new CommonDb();
    LogSystem logSystem = new LogSystem();

    public LogSystemDao()
    {
    }

    /// <summary>
    /// GetAllLog - lấy về tất cả Log
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllLog()
    {
        return db.executeSelect("GetAllLog");
    }

    /// <summary>
    /// GetLogById - lấy về Log theo id
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetLogById(int logId)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@LogId", SqlDbType.Int);
        paramList[0].Value = logId;

        return db.executeSelect("GetLogById", paramList);
    }
    /// <summary>
    /// InsertLog - them thông tin log
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool InsertLog(LogSystem logSystem)
    {
        SqlParameter[] paramList = new SqlParameter[3];

        paramList[0] = new SqlParameter("@LogName", SqlDbType.NVarChar, 256);
        paramList[0].Value = logSystem.LogName;

        paramList[1] = new SqlParameter("@LogForTable", SqlDbType.VarChar, 256);
        paramList[1].Value = logSystem.LogForTable;

        paramList[2] = new SqlParameter("@LogContent", SqlDbType.NVarChar, 2048);
        paramList[2].Value = logSystem.LogContent;

        if (db.executeUpdate("InsertLog", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdateLog - sửa thông tin log
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool UpdateLog(LogSystem logSystem)
    {
        SqlParameter[] paramList = new SqlParameter[4];

        paramList[0] = new SqlParameter("@LogId", SqlDbType.Int);
        paramList[0].Value = logSystem.LogId;

        paramList[1] = new SqlParameter("@LogName", SqlDbType.NVarChar, 256);
        paramList[1].Value = logSystem.LogName;

        paramList[2] = new SqlParameter("@LogForTable", SqlDbType.VarChar, 256);
        paramList[2].Value = logSystem.LogForTable;

        paramList[3] = new SqlParameter("@LogContent", SqlDbType.NVarChar, 2048);
        paramList[3].Value = logSystem.LogContent;

        if (db.executeUpdate("UpdateLog", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeleteLog - xoa thông tin log
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool DeleteLog(LogSystem logSystem)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@LogId", SqlDbType.Int);
        paramList[0].Value = logSystem.LogId;

        if (db.executeUpdate("DeleteLog", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
