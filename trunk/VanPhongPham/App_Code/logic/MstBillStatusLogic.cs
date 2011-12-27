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
/// Summary description for MstBillStatusLogic
/// </summary>
/// 

public class MstBillStatusLogic
{
    MstBillStatusDao mstBillStatusDao = new MstBillStatusDao();
    public MstBillStatusLogic()
    {

    }

    /// <summary>
    /// GetAllMstBillStatus - lấy về tất cả Bill status
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllMstBillStatus()
    {
        return mstBillStatusDao.GetAllMstBillStatus();
    }

    /// <summary>
    /// GetMstBillStatusById - lấy về bill status theo id
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetMstBillStatusById(int statusId)
    {
        return mstBillStatusDao.GetMstBillStatusById(statusId);
    }
}
