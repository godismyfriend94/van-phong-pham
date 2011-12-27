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
/// Summary description for MstGroupLogic
/// </summary>
/// 

public class MstGroupLogic
{
    MstGroupDao mstGroupDao = new MstGroupDao();
    public MstGroupLogic()
    {
    }

    /// <summary>
    /// GetAllMstGroup - lấy về tất cả group
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllGroup()
    {
        return mstGroupDao.GetAllGroup();
    }

    /// <summary>
    /// GetMstGroupByID - lấy về group theo id
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetMstGroupById(string groupId)
    {
        return mstGroupDao.GetMstGroupById(groupId);
    }
}

