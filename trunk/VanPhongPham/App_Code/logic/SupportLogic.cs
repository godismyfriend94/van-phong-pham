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
/// Summary description for SupportLogic
/// </summary>
public class SupportLogic
{
    SupportDao supportDao = new SupportDao();
	public SupportLogic()
	{

	}

    /// <summary>
    /// GetAllSupport - lấy về tất cả support
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllSupport()
    {
        return supportDao.GetAllSupport();
    }

    /// <summary>
    /// GetsupportById - lấy về support  theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetSupportById(int id)
    {
        return supportDao.GetSupportById(id);
    }
    /// <summary>
    /// Insertsupport - them thông tin support
    /// </summary>
    /// <param name="support"></param>
    /// <returns></returns>
    public bool InsertSupport(Support support)
    {
        return supportDao.InsertSupport(support);
    }

    /// <summary>
    /// Updatesupport - sửa thông tin support
    /// </summary>
    /// <param name="support"></param>
    /// <returns></returns>
    public bool UpdateSupport(Support support)
    {
        return supportDao.UpdateSupport(support);
    }

    /// <summary>
    /// Deletesupport - xoa thông tin support
    /// </summary>
    /// <param name="support"></param>
    /// <returns></returns>
    public bool DeleteSupport(Support support)
    {
        return supportDao.DeleteSupport(support);
    }
}
