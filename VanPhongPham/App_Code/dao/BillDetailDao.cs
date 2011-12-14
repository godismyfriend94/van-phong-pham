using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Reflection;
using System.Runtime.InteropServices;
/// <summary>
/// Summary description for BillDetailDao
/// </summary>
/// 

public class BillDetailDao
{
    CommonDb db = new CommonDb();
    public BillDetailDao()
    {

    }

    /// <summary>
    /// GetBillDetail - lấy về tất cả billDetail
    /// </summary>
    /// <returns></returns>
    public DataTable GetBillDetail()
    {
        return db.executeSelect("GetBillDetail");
    }

    /// <summary>
    /// GetBillDetailByBillAndProduct - lấy về billDetailBy theo BillAndProduct
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetBillDetailByBillAndProduct(BillDetail billDetail)
    {
        SqlParameter[] paramList = new SqlParameter[2];

        paramList[0] = new SqlParameter("@BillId", SqlDbType.Int);
        paramList[0].Value = billDetail.BillId;

        paramList[1] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[1].Value = billDetail.ProductId;

        return db.executeSelect("GetBillDetailByBillAndProduct", paramList);
    }
    /// <summary>
    /// InsertbillDetail - them thông tin billDetail
    /// </summary>
    /// <param name="billDetail"></param>
    /// <returns></returns>
    public bool InsertBillDetail(BillDetail billDetail)
    {
        SqlParameter[] paramList = new SqlParameter[3];

        paramList[0] = new SqlParameter("@BillId", SqlDbType.Int);
        paramList[0].Value = billDetail.BillId;

        paramList[1] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[1].Value = billDetail.ProductId;

        paramList[2] = new SqlParameter("@Quantity", SqlDbType.Int);
        paramList[2].Value = billDetail.Quantity;

        if (db.executeUpdate("InsertBillDetail", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdateBillDetail - sửa thông tin billDetail
    /// </summary>
    /// <param name="billDetail"></param>
    /// <returns></returns>
    public bool UpdateBillDetail(BillDetail billDetail)
    {
        SqlParameter[] paramList = new SqlParameter[3];

        paramList[0] = new SqlParameter("@BillId", SqlDbType.Int);
        paramList[0].Value = billDetail.BillId;

        paramList[1] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[1].Value = billDetail.ProductId;

        paramList[2] = new SqlParameter("@Quantity", SqlDbType.Int);
        paramList[2].Value = billDetail.Quantity;

        if (db.executeUpdate("UpdateBillDetail", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeletebillDetail - xoa thông tin billDetail
    /// </summary>
    /// <param name="billDetail"></param>
    /// <returns></returns>
    public bool DeleteBillDetail(BillDetail billDetail)
    {
        SqlParameter[] paramList = new SqlParameter[2];

        paramList[0] = new SqlParameter("@BillId", SqlDbType.Int);
        paramList[0].Value = billDetail.BillId;

        paramList[1] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[1].Value = billDetail.ProductId;

        if (db.executeUpdate("DeleteBillDetail", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
