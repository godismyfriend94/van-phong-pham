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
/// Summary description for fAQs
/// </summary>
/// 

public class FAQsDao
{
    CommonDb db = new CommonDb();
    public FAQsDao()
    {

    }

    /// <summary>
    /// GetAllFAQs - lấy về tất cả fAQs
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllFAQs()
    {
        return db.executeSelect("GetAllFAQs");
    }

    /// <summary>
    /// GetFAQsById - lấy về fAQs  theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetFAQsById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@FaqId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetFAQsById", paramList);
    }
    /// <summary>
    /// InsertfAQs - them thông tin fAQs
    /// </summary>
    /// <param name="fAQs"></param>
    /// <returns></returns>
    public bool InsertFAQs(FAQs fAQs)
    {
        SqlParameter[] paramList = new SqlParameter[4];

        paramList[0] = new SqlParameter("@Question", SqlDbType.NVarChar, 512);
        paramList[0].Value = fAQs.Question;

        paramList[1] = new SqlParameter("@Answer", SqlDbType.NVarChar, 512);
        paramList[1].Value = fAQs.Answer;

        paramList[2] = new SqlParameter("@FaqIndex", SqlDbType.Int);
        paramList[2].Value = fAQs.FaqIndex;

        paramList[3] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[3].Value = fAQs.StatusId;

        if (db.executeUpdate("InsertFAQs", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdatefAQs - sửa thông tin fAQs
    /// </summary>
    /// <param name="fAQs"></param>
    /// <returns></returns>
    public bool UpdateFAQs(FAQs fAQs)
    {
        SqlParameter[] paramList = new SqlParameter[5];

        paramList[0] = new SqlParameter("@FaqId", SqlDbType.Int);
        paramList[0].Value = fAQs.FaqId;

        paramList[1] = new SqlParameter("@Question", SqlDbType.NVarChar, 512);
        paramList[1].Value = fAQs.Question;

        paramList[2] = new SqlParameter("@Answer", SqlDbType.NVarChar, 512);
        paramList[2].Value = fAQs.Answer;

        paramList[3] = new SqlParameter("@FaqIndex", SqlDbType.Int);
        paramList[3].Value = fAQs.FaqIndex;

        paramList[4] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[4].Value = fAQs.StatusId;

        if (db.executeUpdate("UpdateFAQs", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeletefAQs - xoa thông tin fAQs
    /// </summary>
    /// <param name="fAQs"></param>
    /// <returns></returns>
    public bool DeleteFAQs(FAQs fAQs)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@FaqId", SqlDbType.Int);
        paramList[0].Value = fAQs.FaqId;

        if (db.executeUpdate("DeleteFAQs", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
