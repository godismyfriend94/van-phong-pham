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
/// Summary description for Advertise
/// </summary>
/// 
public class AdvertiseLogic
{
    AdvertiseDao advertiseDao = new AdvertiseDao();

    public AdvertiseLogic()
	{
	}

    /// <summary>
    /// GetAllAdvertise - lấy về tất cả advertise
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllAdvertise()
    {
        return advertiseDao.GetAllAdvertise();
    }

    /// <summary>
    /// GetLeftAdvertise
    /// </summary>
    /// <returns></returns>
    public DataTable GetLeftAdvertise()
    {
        return advertiseDao.GetLeftAdvertise();
    }

    /// <summary>
    /// GetRighAdvertise
    /// </summary>
    /// <returns></returns>
    public DataTable GetRighAdvertise()
    {
        return advertiseDao.GetRighAdvertise();
    }
    /// <summary>
    /// GetAdvertiseById - lấy về advertiseBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetAdvertiseById(int id)
    {
        return advertiseDao.GetAdvertiseById(id);
    }
    /// <summary>
    /// InsertAdvertise - them thông tin advertise
    /// </summary>
    /// <param name="advertise"></param>
    /// <returns></returns>
    public bool InsertAdvertise(Advertise advertise)
    {
        return advertiseDao.InsertAdvertise(advertise);
    }

    /// <summary>
    /// UpdateAdvertise - sửa thông tin advertise
    /// </summary>
    /// <param name="advertise"></param>
    /// <returns></returns>
    public bool UpdateAdvertise(Advertise advertise)
    {
        return advertiseDao.UpdateAdvertise(advertise);
    }

    /// <summary>
    /// DeleteAdvertise - xoa thông tin advertise
    /// </summary>
    /// <param name="advertise"></param>
    /// <returns></returns>
    public bool DeleteAdvertise(Advertise advertise)
    {
        return advertiseDao.DeleteAdvertise(advertise);
    }
}

