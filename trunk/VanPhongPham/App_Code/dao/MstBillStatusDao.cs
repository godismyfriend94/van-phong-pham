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
/// Summary description for MstBillStatus
/// </summary>
/// 

public class MstBillStatusDao
{
    CommonDb db = new CommonDb();
    MstBillStatus mstBillStatus = new MstBillStatus(); 
    public MstBillStatusDao()
    {

    }

    /// <summary>
    /// GetAllMstBillStatus - lấy về tất cả Bill status
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllMstBillStatus()
    {
        return db.executeSelect("GetAllBillStatus");
    }

    /// <summary>
    /// GetMstBillStatusById - lấy về bill status theo id
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetMstBillStatusById(int statusId)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@StatusId", SqlDbType.Int);
        paramList[0].Value = statusId;

        return db.executeSelect("GetBillStatusById", paramList);
    }
}
