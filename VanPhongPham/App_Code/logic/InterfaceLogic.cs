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
/// Summary description for Interface
/// </summary>
/// 

public class InterfaceLogic
{
    InterfaceDao interfaceDao = new InterfaceDao();
    public InterfaceLogic()
    {
    }

    /// <summary>
    /// GetAllTblInterface - lấy về tất cả tblInterface
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllTblInterface()
    {
        return interfaceDao.GetAllTblInterface();
    }

    /// <summary>
    /// GettblInterfaceById - lấy về tblInterfaceBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetTblInterfaceById(int id)
    {
        return interfaceDao.GetTblInterfaceById(id);
    }
    /// <summary>
    /// InserttblInterface - them thông tin tblInterface
    /// </summary>
    /// <param name="tblInterface"></param>
    /// <returns></returns>
    public bool InsertTblInterface(TblInterface tblInterface)
    {
        return interfaceDao.InsertTblInterface(tblInterface);
    }

    /// <summary>
    /// UpdatetblInterface - sửa thông tin tblInterface
    /// </summary>
    /// <param name="tblInterface"></param>
    /// <returns></returns>
    public bool UpdateTblInterface(TblInterface tblInterface)
    {
        return interfaceDao.UpdateTblInterface(tblInterface);
    }

    /// <summary>
    /// DeleteTblInterface - xoa thông tin tblInterface
    /// </summary>
    /// <param name="tblInterface"></param>
    /// <returns></returns>
    public bool DeleteTblInterface(TblInterface tblInterface)
    {
        return interfaceDao.DeleteTblInterface(tblInterface);
    }
}

