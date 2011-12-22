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
/// Summary description for LogSystem
/// </summary>
public class LogSystem
{
    int logId;
    string logName;
    string logForTable;
    string logContent;
    DateTime logDate;

    public int LogId
    {
        get { return logId; }
        set { logId = value; }
    }
    
    public string LogName
    {
        get { return logName; }
        set { logName = value; }
    }

    public string LogForTable
    {
        get { return logForTable; }
        set { logForTable = value; }
    }

    public string LogContent
    {
        get { return logContent; }
        set { logContent = value; }
    }

    public DateTime LogDate
    {
        get { return logDate; }
        set { logDate = value; }
    }

	public LogSystem()
	{
	}

    public LogSystem(string _logName, string _logForTable, string _logContent)
    {
        this.logName = _logName;
        this.logForTable = _logForTable;
        this.logContent = _logContent;
    }
}
