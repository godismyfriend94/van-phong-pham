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
/// Summary description for MstStatus
/// </summary>
/// 

public class MstStatusDao
{
    CommonDb db = new CommonDb();
    MstStatus mstStatus = new MstStatus();
    public MstStatusDao()
    {

    }

    /// <summary>
    /// GetAllMstGroup - lấy về tất cả status
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllMstStatus()
    {
        return db.executeSelect("GetAllStatus");
    }

    /// <summary>
    /// GetMstStatusById - lấy về status theo id
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetMstStatusById(int statusId)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@StatusId", SqlDbType.Int);
        paramList[0].Value = statusId;

        return db.executeSelect("GetStatusById", paramList);
    }
}

