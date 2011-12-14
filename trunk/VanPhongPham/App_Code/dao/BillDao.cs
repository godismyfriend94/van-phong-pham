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
/// Summary description for Bill
/// </summary>
/// 

public class BillDao
{
    CommonDb db = new CommonDb();
    public BillDao()
    {
    }

    /// <summary>
    /// GetAllBill - lấy về tất cả bill
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllBill()
    {
        return db.executeSelect("GetAllBill");
    }

    /// <summary>
    /// GetBillById - lấy về billBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetBillById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@BillId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetBillById", paramList);
    }
    /// <summary>
    /// InsertBill - them thông tin bill
    /// </summary>
    /// <param name="bill"></param>
    /// <returns></returns>
    public bool InsertBill(Bill bill)
    {
        SqlParameter[] paramList = new SqlParameter[9];

        paramList[0] = new SqlParameter("@UserId", SqlDbType.Int);
        paramList[0].Value = bill.UserId;

        paramList[1] = new SqlParameter("@ReceiverName", SqlDbType.NVarChar, 256);
        paramList[1].Value = bill.ReceiverName;

        paramList[2] = new SqlParameter("@DeliveryTime", SqlDbType.DateTime);
        paramList[2].Value = bill.DeliveryTime;

        paramList[3] = new SqlParameter("@DeliveryAddress", SqlDbType.NVarChar, 512);
        paramList[3].Value = bill.DeliveryAddress;

        paramList[4] = new SqlParameter("@ReceiverEmail", SqlDbType.NVarChar, 256);
        paramList[4].Value = bill.ReceiverEmail;

        paramList[5] = new SqlParameter("@ReceiverTel", SqlDbType.NVarChar, 50);
        paramList[5].Value = bill.ReceiverTel;

        paramList[6] = new SqlParameter("@ReceiverFax", SqlDbType.NVarChar, 256);
        paramList[6].Value = bill.ReceiverFax;

        paramList[7] = new SqlParameter("@Note", SqlDbType.NVarChar, 512);
        paramList[7].Value = bill.DeliveryAddress;

        paramList[8] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[8].Value = bill.StatusId;

        if (db.executeUpdate("InsertBill", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdateBill - sửa thông tin bill
    /// </summary>
    /// <param name="bill"></param>
    /// <returns></returns>
    public bool UpdateBill(Bill bill)
    {
        SqlParameter[] paramList = new SqlParameter[10];

        paramList[0] = new SqlParameter("@BillId", SqlDbType.Int);
        paramList[0].Value = bill.BillId;

        paramList[1] = new SqlParameter("@UserId", SqlDbType.Int);
        paramList[1].Value = bill.UserId;

        paramList[2] = new SqlParameter("@ReceiverName", SqlDbType.NVarChar, 256);
        paramList[2].Value = bill.ReceiverName;

        paramList[3] = new SqlParameter("@DeliveryTime", SqlDbType.DateTime);
        paramList[3].Value = bill.DeliveryTime;

        paramList[4] = new SqlParameter("@DeliveryAddress", SqlDbType.NVarChar, 512);
        paramList[4].Value = bill.DeliveryAddress;

        paramList[5] = new SqlParameter("@ReceiverEmail", SqlDbType.NVarChar, 256);
        paramList[5].Value = bill.ReceiverEmail;

        paramList[6] = new SqlParameter("@ReceiverTel", SqlDbType.NVarChar, 50);
        paramList[6].Value = bill.ReceiverTel;

        paramList[7] = new SqlParameter("@ReceiverFax", SqlDbType.NVarChar, 256);
        paramList[7].Value = bill.ReceiverFax;

        paramList[8] = new SqlParameter("@Note", SqlDbType.NVarChar, 512);
        paramList[8].Value = bill.DeliveryAddress;

        paramList[9] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[9].Value = bill.StatusId;

        if (db.executeUpdate("UpdateBill", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// ChangeStatusBill - chuyen trang thai cua bill
    /// </summary>
    /// <param name="bill"></param>
    /// <returns></returns>
    public bool ChangeStatusBill(Bill bill)
    {
        SqlParameter[] paramList = new SqlParameter[2];

        paramList[0] = new SqlParameter("@BillId", SqlDbType.Int);
        paramList[0].Value = bill.BillId;

        paramList[1] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[1].Value = bill.StatusId;

        if (db.executeUpdate("ChangeStatusBill", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeleteBill - xoa thông tin bill
    /// </summary>
    /// <param name="bill"></param>
    /// <returns></returns>
    public bool DeleteBill(Bill bill)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@BillId", SqlDbType.Int);
        paramList[0].Value = bill.BillId;

        if (db.executeUpdate("DeleteBill", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
