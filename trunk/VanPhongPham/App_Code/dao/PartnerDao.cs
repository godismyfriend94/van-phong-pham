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
/// Summary description for Partner
/// </summary>
/// 

public class PartnerDao
{
    CommonDb db = new CommonDb();
    public PartnerDao()
    {

    }

    /// <summary>
    /// GetAllPartner - lấy về tất cả partner
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllPartner()
    {
        return db.executeSelect("GetAllPartner");
    }

    /// <summary>
    /// GetPartnerById - lấy về partnerBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetPartnerById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@PartnerId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetPartnerById", paramList);
    }
    /// <summary>
    /// InsertPartner - them thông tin partner
    /// </summary>
    /// <param name="partner"></param>
    /// <returns></returns>
    public bool InsertPartner(Partner partner)
    {
        SqlParameter[] paramList = new SqlParameter[7];

        paramList[0] = new SqlParameter("@PartnerName", SqlDbType.NVarChar, 256);
        paramList[0].Value = partner.PartnerName;

        paramList[1] = new SqlParameter("@Address", SqlDbType.NVarChar, 256);
        paramList[1].Value = partner.Address;

        paramList[2] = new SqlParameter("@City", SqlDbType.NVarChar, 256);
        paramList[2].Value = partner.City;

        paramList[3] = new SqlParameter("@Phone", SqlDbType.NVarChar, 50);
        paramList[3].Value = partner.Phone;

        paramList[4] = new SqlParameter("@Link", SqlDbType.NVarChar, 256);
        paramList[4].Value = partner.Link;

        paramList[5] = new SqlParameter("@Email", SqlDbType.NVarChar, 256);
        paramList[5].Value = partner.Email;

        paramList[6] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[6].Value = partner.StatusId;

        if (db.executeUpdate("InsertPartner", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdatePartner - sửa thông tin partner
    /// </summary>
    /// <param name="partner"></param>
    /// <returns></returns>
    public bool UpdatePartner(Partner partner)
    {
        SqlParameter[] paramList = new SqlParameter[8];

        paramList[0] = new SqlParameter("@PartnerId", SqlDbType.Int);
        paramList[0].Value = partner.PartnerId;

        paramList[1] = new SqlParameter("@PartnerName", SqlDbType.NVarChar, 256);
        paramList[1].Value = partner.PartnerName;

        paramList[2] = new SqlParameter("@Address", SqlDbType.NVarChar, 256);
        paramList[2].Value = partner.Address;

        paramList[3] = new SqlParameter("@City", SqlDbType.NVarChar, 256);
        paramList[3].Value = partner.City;

        paramList[4] = new SqlParameter("@Phone", SqlDbType.NVarChar, 50);
        paramList[4].Value = partner.Phone;

        paramList[5] = new SqlParameter("@Link", SqlDbType.NVarChar, 256);
        paramList[5].Value = partner.Link;

        paramList[6] = new SqlParameter("@Email", SqlDbType.NVarChar, 256);
        paramList[6].Value = partner.Email;

        paramList[7] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[7].Value = partner.StatusId;
        if (db.executeUpdate("UpdatePartner", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeletePartner - xoa thông tin partner
    /// </summary>
    /// <param name="partner"></param>
    /// <returns></returns>
    public bool DeletePartner(Partner partner)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@PartnerId", SqlDbType.Int);
        paramList[0].Value = partner.PartnerId;

        if (db.executeUpdate("DeletePartner", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
