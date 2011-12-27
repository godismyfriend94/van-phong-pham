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
/// Summary description for PartnerLogic
/// </summary>
/// 

public class PartnerLogic
{
    PartnerDao partnerDao = new PartnerDao();
    public PartnerLogic()
    {

    }

    /// <summary>
    /// GetAllPartner - lấy về tất cả partner
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllPartner()
    {
        return partnerDao.GetAllPartner();
    }

    /// <summary>
    /// GetPartnerById - lấy về partnerBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetPartnerById(int id)
    {
        return partnerDao.GetPartnerById(id);
    }
    /// <summary>
    /// InsertPartner - them thông tin partner
    /// </summary>
    /// <param name="partner"></param>
    /// <returns></returns>
    public bool InsertPartner(Partner partner)
    {
        return partnerDao.InsertPartner(partner);
    }

    /// <summary>
    /// UpdatePartner - sửa thông tin partner
    /// </summary>
    /// <param name="partner"></param>
    /// <returns></returns>
    public bool UpdatePartner(Partner partner)
    {
        return partnerDao.UpdatePartner(partner);
    }

    /// <summary>
    /// DeletePartner - xoa thông tin partner
    /// </summary>
    /// <param name="partner"></param>
    /// <returns></returns>
    public bool DeletePartner(Partner partner)
    {
        return partnerDao.DeletePartner(partner);
    }
}
