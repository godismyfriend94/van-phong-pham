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
/// Summary description for BillLogic
/// </summary>
/// 

public class BillLogic
{
    BillDao billDao = new BillDao();
    public BillLogic()
    {

    }

    /// <summary>
    /// GetAllBill - lấy về tất cả bill
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllBill()
    {
        return billDao.GetAllBill();
    }

    /// <summary>
    /// GetBillById - lấy về billBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetBillById(int id)
    {
        return billDao.GetBillById(id);
    }
    /// <summary>
    /// InsertBill - them thông tin bill
    /// </summary>
    /// <param name="bill"></param>
    /// <returns></returns>
    public bool InsertBill(Bill bill)
    {
        return billDao.InsertBill(bill);
    }

    /// <summary>
    /// UpdateBill - sửa thông tin bill
    /// </summary>
    /// <param name="bill"></param>
    /// <returns></returns>
    public bool UpdateBill(Bill bill)
    {
        return billDao.UpdateBill(bill);
    }

    /// <summary>
    /// ChangeStatusBill - chuyen trang thai cua bill
    /// </summary>
    /// <param name="bill"></param>
    /// <returns></returns>
    public bool ChangeStatusBill(Bill bill)
    {
        return billDao.ChangeStatusBill(bill);
    }

    /// <summary>
    /// DeleteBill - xoa thông tin bill
    /// </summary>
    /// <param name="bill"></param>
    /// <returns></returns>
    public bool DeleteBill(Bill bill)
    {
        return billDao.DeleteBill(bill);
    }
}
