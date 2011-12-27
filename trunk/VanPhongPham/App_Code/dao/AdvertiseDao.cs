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
/// Summary description for Advertise
/// </summary>
/// 
public class AdvertiseDao
{
    CommonDb db = new CommonDb();
    public AdvertiseDao()
	{
	}

    /// <summary>
    /// GetAllAdvertise - lấy về tất cả advertise
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllAdvertise()
    {
        return db.executeSelect("GetAllAdvertise");
    }

    /// <summary>
    /// GetLeftAdvertise
    /// </summary>
    /// <returns></returns>
    public DataTable GetLeftAdvertise()
    {
        return db.executeSelect("GetLeftAdvertise");
    }

    /// <summary>
    /// GetRighAdvertise
    /// </summary>
    /// <returns></returns>
    public DataTable GetRighAdvertise()
    {
        return db.executeSelect("GetRighAdvertise");
    }
    /// <summary>
    /// GetAdvertiseById - lấy về advertiseBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetAdvertiseById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@AdvertiseId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetAdvertiseById", paramList);
    }
    /// <summary>
    /// InsertAdvertise - them thông tin advertise
    /// </summary>
    /// <param name="advertise"></param>
    /// <returns></returns>
    public bool InsertAdvertise(Advertise advertise)
    {
        SqlParameter[] paramList = new SqlParameter[5];

        paramList[0] = new SqlParameter("@AdvertiseName", SqlDbType.NVarChar, 256);
        paramList[0].Value = advertise.AdvertiseName;

        paramList[1] = new SqlParameter("@AdvertiseLink", SqlDbType.NVarChar, 256);
        paramList[1].Value = advertise.AdvertiseLink;

        paramList[2] = new SqlParameter("@ImageURL", SqlDbType.NVarChar, 256);
        paramList[2].Value = advertise.ImageURL;

        paramList[3] = new SqlParameter("@AdvertisePostion", SqlDbType.Int);
        paramList[3].Value = advertise.AdvertisePostion;

        paramList[4] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[4].Value = advertise.StatusId;

        if (db.executeUpdate("InsertAdvertise", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdateAdvertise - sửa thông tin advertise
    /// </summary>
    /// <param name="advertise"></param>
    /// <returns></returns>
    public bool UpdateAdvertise(Advertise advertise)
    {
        SqlParameter[] paramList = new SqlParameter[6];

        paramList[0] = new SqlParameter("@AdvertiseId", SqlDbType.Int);
        paramList[0].Value = advertise.AdvertiseId;

        paramList[1] = new SqlParameter("@AdvertiseName", SqlDbType.NVarChar, 256);
        paramList[1].Value = advertise.AdvertiseName;

        paramList[2] = new SqlParameter("@AdvertiseLink", SqlDbType.NVarChar, 256);
        paramList[2].Value = advertise.AdvertiseLink;

        paramList[3] = new SqlParameter("@ImageURL", SqlDbType.NVarChar, 256);
        paramList[3].Value = advertise.ImageURL;

        paramList[4] = new SqlParameter("@AdvertisePostion", SqlDbType.Int);
        paramList[4].Value = advertise.AdvertisePostion;

        paramList[5] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[5].Value = advertise.StatusId;

        if (db.executeUpdate("UpdateAdvertise", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeleteAdvertise - xoa thông tin advertise
    /// </summary>
    /// <param name="advertise"></param>
    /// <returns></returns>
    public bool DeleteAdvertise(Advertise advertise)
    {
        SqlParameter[] paramList = new SqlParameter[2];

        paramList[0] = new SqlParameter("@AdvertiseId", SqlDbType.Int);
        paramList[0].Value = advertise.AdvertiseId;

        if (db.executeUpdate("DeleteAdvertise", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}

