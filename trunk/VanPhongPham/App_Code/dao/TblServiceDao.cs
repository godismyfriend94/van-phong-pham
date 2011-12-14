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
/// Summary description for Service
/// </summary>
/// 

public class TblServiceDao
{
    CommonDb db = new CommonDb();
    public TblServiceDao()
    {

    }

    /// <summary>
    /// GetAllTblService - lấy về tất cả tblService
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllTblService()
    {
        return db.executeSelect("GetAllTblService");
    }

    /// <summary>
    /// GetServiceById - lấy về tblService  theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetServiceById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@ServiceId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetServiceById", paramList);
    }
    /// <summary>
    /// InserttblService - them thông tin tblService
    /// </summary>
    /// <param name="tblService"></param>
    /// <returns></returns>
    public bool InsertTblService(TblService tblService)
    {
        SqlParameter[] paramList = new SqlParameter[4];

        paramList[0] = new SqlParameter("@ServiceName", SqlDbType.NVarChar, 256);
        paramList[0].Value = tblService.ServiceName;

        paramList[1] = new SqlParameter("@ServiceLink", SqlDbType.NVarChar, 256);
        paramList[1].Value = tblService.ServiceLink;

        paramList[2] = new SqlParameter("@Description", SqlDbType.NVarChar, 512);
        paramList[2].Value = tblService.Description;

        paramList[3] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[3].Value = tblService.StatusId;

        if (db.executeUpdate("InsertTblService", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdatetblService - sửa thông tin tblService
    /// </summary>
    /// <param name="tblService"></param>
    /// <returns></returns>
    public bool UpdateTblService(TblService tblService)
    {
        SqlParameter[] paramList = new SqlParameter[5];

        paramList[0] = new SqlParameter("@ServiceId", SqlDbType.Int);
        paramList[0].Value = tblService.ServiceId;

        paramList[1] = new SqlParameter("@ServiceName", SqlDbType.NVarChar, 256);
        paramList[1].Value = tblService.ServiceName;

        paramList[2] = new SqlParameter("@ServiceLink", SqlDbType.NVarChar, 256);
        paramList[2].Value = tblService.ServiceLink;

        paramList[3] = new SqlParameter("@Description", SqlDbType.NVarChar, 512);
        paramList[3].Value = tblService.Description;

        paramList[4] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[4].Value = tblService.StatusId;

        if (db.executeUpdate("UpdateTblService", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeleteTblService - xoa thông tin tblService
    /// </summary>
    /// <param name="tblService"></param>
    /// <returns></returns>
    public bool DeleteTblService(TblService tblService)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@ServiceId", SqlDbType.Int);
        paramList[0].Value = tblService.ServiceId;

        if (db.executeUpdate("DeleteTblService", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
