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
/// Summary description for InterfaceTypeLogic
/// </summary>
/// 

public class InterfaceTypeLogic
{
    InterfaceTypeDao interfaceTypeDao = new InterfaceTypeDao();
    public InterfaceTypeLogic()
    {
    }

    /// <summary>
    /// GetAllInterfaceType - lấy về tất cả interfaceType
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllInterfaceType()
    {
        return interfaceTypeDao.GetAllInterfaceType();
    }

    /// <summary>
    /// GetInterfaceTypeById - lấy về interfaceTypeBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetInterfaceTypeById(int id)
    {
        return interfaceTypeDao.GetInterfaceTypeById(id);
    }
    /// <summary>
    /// InsertInterfaceType - them thông tin interfaceType
    /// </summary>
    /// <param name="interfaceType"></param>
    /// <returns></returns>
    public bool InsertInterfaceType(InterfaceType interfaceType)
    {
        return interfaceTypeDao.InsertInterfaceType(interfaceType);
    }

    /// <summary>
    /// UpdateInterfaceType - sửa thông tin interfaceType
    /// </summary>
    /// <param name="interfaceType"></param>
    /// <returns></returns>
    public bool UpdateInterfaceType(InterfaceType interfaceType)
    {
        return interfaceTypeDao.UpdateInterfaceType(interfaceType);
    }

    /// <summary>
    /// DeleteinterfaceType - xoa thông tin interfaceType
    /// </summary>
    /// <param name="interfaceType"></param>
    /// <returns></returns>
    public bool DeleteInterfaceType(InterfaceType interfaceType)
    {
        return interfaceTypeDao.DeleteInterfaceType(interfaceType);
    }
}
