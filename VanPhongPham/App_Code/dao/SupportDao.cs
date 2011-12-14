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
/// Summary description for SupportDao
/// </summary>
public class SupportDao
{
    CommonDb db = new CommonDb();
    Support support = new Support();

	public SupportDao()
	{
	}

    /// <summary>
    /// GetAllSupport - lấy về tất cả support
    /// </summary>
    /// <returns></returns>
    //public DataTable GetAllSupport()
    //{
    //    return db.executeSelect("GetAllSupport");
    //}

    /// <summary>
    /// GetsupportById - lấy về support  theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetSupportById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@SupportId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetSupportById", paramList);
    }
    /// <summary>
    /// Insertsupport - them thông tin support
    /// </summary>
    /// <param name="support"></param>
    /// <returns></returns>
    public bool InsertSupport(Support support)
    {
        SqlParameter[] paramList = new SqlParameter[4];

        paramList[0] = new SqlParameter("@SupportName", SqlDbType.NVarChar, 256);
        paramList[0].Value = support.SupportName;

        paramList[1] = new SqlParameter("@SupportLink", SqlDbType.NVarChar, 256);
        paramList[1].Value = support.SupportLink;

        paramList[2] = new SqlParameter("@SupportImage", SqlDbType.NVarChar, 256);
        paramList[2].Value = support.SupportImage;

        paramList[3] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[3].Value = support.StatusId;

        if (db.executeUpdate("InsertSupport", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// Updatesupport - sửa thông tin support
    /// </summary>
    /// <param name="support"></param>
    /// <returns></returns>
    public bool UpdateSupport(Support support)
    {
        SqlParameter[] paramList = new SqlParameter[5];

        paramList[0] = new SqlParameter("@SupportId", SqlDbType.Int);
        paramList[0].Value = support.SupportId;

        paramList[1] = new SqlParameter("@SupportName", SqlDbType.NVarChar, 256);
        paramList[1].Value = support.SupportName;

        paramList[2] = new SqlParameter("@SupportLink", SqlDbType.NVarChar, 256);
        paramList[2].Value = support.SupportLink;

        paramList[3] = new SqlParameter("@SupportImage", SqlDbType.NVarChar, 256);
        paramList[3].Value = support.SupportImage;

        paramList[4] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[4].Value = support.StatusId;

        if (db.executeUpdate("UpdateSupport", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// Deletesupport - xoa thông tin support
    /// </summary>
    /// <param name="support"></param>
    /// <returns></returns>
    public bool DeleteSupport(Support support)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@SupportId", SqlDbType.Int);
        paramList[0].Value = support.SupportId;

        if (db.executeUpdate("DeleteSupport", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
