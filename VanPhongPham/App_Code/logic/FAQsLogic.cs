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
/// Summary description for FAQsLogic
/// </summary>
/// 

public class FAQsLogic
{
    FAQsDao fAQsDao = new FAQsDao();
    public FAQsLogic()
    {

    }

    /// <summary>
    /// GetAllFAQs - lấy về tất cả fAQs
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllFAQs()
    {
        return fAQsDao.GetAllFAQs();
    }

    /// <summary>
    /// GetFAQsById - lấy về fAQs  theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetFAQsById(int id)
    {
        return fAQsDao.GetFAQsById(id);
    }
    /// <summary>
    /// InsertfAQs - them thông tin fAQs
    /// </summary>
    /// <param name="fAQs"></param>
    /// <returns></returns>
    public bool InsertFAQs(FAQs fAQs)
    {
        return fAQsDao.InsertFAQs(fAQs);
    }

    /// <summary>
    /// UpdatefAQs - sửa thông tin fAQs
    /// </summary>
    /// <param name="fAQs"></param>
    /// <returns></returns>
    public bool UpdateFAQs(FAQs fAQs)
    {
        return fAQsDao.UpdateFAQs(fAQs);
    }

    /// <summary>
    /// DeletefAQs - xoa thông tin fAQs
    /// </summary>
    /// <param name="fAQs"></param>
    /// <returns></returns>
    public bool DeleteFAQs(FAQs fAQs)
    {
        return fAQsDao.DeleteFAQs(fAQs);
    }
}
