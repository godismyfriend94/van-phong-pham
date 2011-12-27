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
/// Summary description for MstStatus
/// </summary>
/// 

public class MstStatusLogic
{
    MstStatusDao mstStatusDao = new MstStatusDao();
    public MstStatusLogic()
    {

    }

    /// <summary>
    /// GetAllMstGroup - lấy về tất cả status
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllMstStatus()
    {
        return mstStatusDao.GetAllMstStatus();
    }

    /// <summary>
    /// GetMstStatusById - lấy về status theo id
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetMstStatusById(int statusId)
    {
        return mstStatusDao.GetMstStatusById(statusId);
    }
}

