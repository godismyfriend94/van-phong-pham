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
/// Summary description for Policy
/// </summary>
/// 

public class PolicyDao
{
    CommonDb db = new CommonDb();
    public PolicyDao()
    {

    }

    /// <summary>
    /// GetAllPolicy - lấy về tất cả policy
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllPolicy()
    {
        return db.executeSelect("GetAllPolicy");
    }

    /// <summary>
    /// GetPolicyById - lấy về policyBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetPolicyById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@PolicyId", SqlDbType.Int);
        paramList[0].Value = id;
        
        return db.executeSelect("GetPolicyById", paramList);
    }
    /// <summary>
    /// Insertpolicy - them thông tin policy
    /// </summary>
    /// <param name="policy"></param>
    /// <returns></returns>
    public bool InsertPolicy(Policy policy)
    {
        SqlParameter[] paramList = new SqlParameter[3];

        paramList[0] = new SqlParameter("@PolicyType", SqlDbType.NVarChar, 256);
        paramList[0].Value = policy.PolicyType;

        paramList[1] = new SqlParameter("@PolicyContent", SqlDbType.NVarChar);
        paramList[1].Value = policy.PolicyContent;

        paramList[2] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[2].Value = policy.StatusId;

        if (db.executeUpdate("InsertPolicy", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// Updatepolicy - sửa thông tin policy
    /// </summary>
    /// <param name="policy"></param>
    /// <returns></returns>
    public bool UpdatePolicy(Policy policy)
    {
        SqlParameter[] paramList = new SqlParameter[4];

        paramList[0] = new SqlParameter("@PolicyId", SqlDbType.Int);
        paramList[0].Value = policy.PolicyId;

        paramList[1] = new SqlParameter("@PolicyType", SqlDbType.NVarChar, 256);
        paramList[1].Value = policy.PolicyType;

        paramList[2] = new SqlParameter("@PolicyContent", SqlDbType.NVarChar);
        paramList[2].Value = policy.PolicyContent;

        paramList[3] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[3].Value = policy.StatusId;

        if (db.executeUpdate("UpdatePolicy", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeletePolicy - xoa thông tin policy
    /// </summary>
    /// <param name="policy"></param>
    /// <returns></returns>
    public bool DeletePolicy(Policy policy)
    {
        SqlParameter[] paramList = new SqlParameter[2];

        paramList[0] = new SqlParameter("@PolicyId", SqlDbType.Int);
        paramList[0].Value = policy.PolicyId;

        if (db.executeUpdate("DeletePolicy", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
