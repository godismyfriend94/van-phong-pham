using System;
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

/// <summary>
/// Summary description for LogSystemLogic
/// </summary>
/// 

public class LogSystemLogic
{
    LogSystemDao logSystemDao = new LogSystemDao();
    public LogSystemLogic()
    {
    }

    /// <summary>
    /// GetAllLog - lấy về tất cả Log
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllLog()
    {
        return logSystemDao.GetAllLog();
    }

    /// <summary>
    /// GetLogById - lấy về Log theo id
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetLogById(int logId)
    {
        return logSystemDao.GetLogById(logId);
    }
    /// <summary>
    /// InsertLog - them thông tin log
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool InsertLog(LogSystem logSystem)
    {
        return logSystemDao.InsertLog(logSystem);
    }

    /// <summary>
    /// UpdateLog - sửa thông tin log
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool UpdateLog(LogSystem logSystem)
    {
        return logSystemDao.UpdateLog(logSystem);
    }

    /// <summary>
    /// DeleteLog - xoa thông tin log
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool DeleteLog(LogSystem logSystem)
    {
        return logSystemDao.DeleteLog(logSystem);
    }
}
