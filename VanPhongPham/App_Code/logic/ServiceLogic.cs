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
/// Summary description for ServiceLogic
/// </summary>
/// 

public class ServiceLogic
{
    TblServiceDao tblServiceDao = new TblServiceDao();
    public ServiceLogic()
    {

    }

    /// <summary>
    /// GetAllTblService - lấy về tất cả tblService
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllTblService()
    {
        return tblServiceDao.GetAllTblService();
    }

    /// <summary>
    /// GetServiceById - lấy về tblService  theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetServiceById(int id)
    {
        return tblServiceDao.GetServiceById(id);
    }
    /// <summary>
    /// InserttblService - them thông tin tblService
    /// </summary>
    /// <param name="tblService"></param>
    /// <returns></returns>
    public bool InsertTblService(TblService tblService)
    {
        return tblServiceDao.InsertTblService(tblService);
    }

    /// <summary>
    /// UpdatetblService - sửa thông tin tblService
    /// </summary>
    /// <param name="tblService"></param>
    /// <returns></returns>
    public bool UpdateTblService(TblService tblService)
    {
        return tblServiceDao.UpdateTblService(tblService);
    }

    /// <summary>
    /// DeleteTblService - xoa thông tin tblService
    /// </summary>
    /// <param name="tblService"></param>
    /// <returns></returns>
    public bool DeleteTblService(TblService tblService)
    {
        return tblServiceDao.DeleteTblService(tblService);
    }
}
