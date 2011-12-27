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
/// Summary description for BillDetailLogic
/// </summary>
/// 

public class BillDetailLogic
{
    BillDetailDao billDetailDao = new BillDetailDao();
    public BillDetailLogic()
    {

    }

    /// <summary>
    /// GetBillDetail - lấy về tất cả billDetail
    /// </summary>
    /// <returns></returns>
    public DataTable GetBillDetail()
    {
        return billDetailDao.GetBillDetail();
    }

    /// <summary>
    /// GetBillDetailByBillAndProduct - lấy về billDetailBy theo BillAndProduct
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetBillDetailByBillAndProduct(BillDetail billDetail)
    {
        return billDetailDao.GetBillDetailByBillAndProduct(billDetail);
    }
    /// <summary>
    /// InsertbillDetail - them thông tin billDetail
    /// </summary>
    /// <param name="billDetail"></param>
    /// <returns></returns>
    public bool InsertBillDetail(BillDetail billDetail)
    {
        return billDetailDao.InsertBillDetail(billDetail);
    }

    /// <summary>
    /// UpdateBillDetail - sửa thông tin billDetail
    /// </summary>
    /// <param name="billDetail"></param>
    /// <returns></returns>
    public bool UpdateBillDetail(BillDetail billDetail)
    {
        return billDetailDao.UpdateBillDetail(billDetail);
    }

    /// <summary>
    /// DeletebillDetail - xoa thông tin billDetail
    /// </summary>
    /// <param name="billDetail"></param>
    /// <returns></returns>
    public bool DeleteBillDetail(BillDetail billDetail)
    {
        return billDetailDao.DeleteBillDetail(billDetail);
    }
}
