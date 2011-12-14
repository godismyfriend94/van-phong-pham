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
/// Summary description for SubCategoryDao
/// </summary>
/// 

public class SubCategoryDao
{
    CommonDb db = new CommonDb();

    public SubCategoryDao()
    {

    }

    /// <summary>
    /// GetAllSubsubCategory - lấy về tất cả SubsubCategory
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllSubCategory()
    {
        return db.executeSelect("GetAllSubCategory");
    }

    /// <summary>
    /// GetSubsubCategoryById - lấy về SubsubCategory theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetSubsubCategoryById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@SubsubCategoryId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetSubsubCategoryById", paramList);
    }
    /// <summary>
    /// InsertSubsubCategory - them thông tin subCategory
    /// </summary>
    /// <param name="subCategory"></param>
    /// <returns></returns>
    public bool InsertSubsubCategory(SubCategory subCategory)
    {
        SqlParameter[] paramList = new SqlParameter[5];

        paramList[0] = new SqlParameter("@CategoryId", SqlDbType.Int);
        paramList[0].Value = subCategory.SubCategoryId;

        paramList[1] = new SqlParameter("@SubCategoryName", SqlDbType.NVarChar, 256);
        paramList[1].Value = subCategory.Description;

        paramList[2] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[2].Value = subCategory.StatusId;

        paramList[3] = new SqlParameter("@Description", SqlDbType.NVarChar, 2048);
        paramList[3].Value = subCategory.Description;

        paramList[4] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[4].Value = subCategory.StatusId;

        if (db.executeUpdate("InsertSubCategory", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdateSubCategory - sửa thông tin subCategory
    /// </summary>
    /// <param name="subCategory"></param>
    /// <returns></returns>
    public bool UpdateSubCategory(SubCategory subCategory)
    {
        SqlParameter[] paramList = new SqlParameter[4];

        paramList[0] = new SqlParameter("@SubCategoryId", SqlDbType.Int);
        paramList[0].Value = subCategory.SubCategoryId;

        paramList[1] = new SqlParameter("@CategoryId", SqlDbType.Int);
        paramList[1].Value = subCategory.CategoryId;

        paramList[2] = new SqlParameter("@SubCategoryName", SqlDbType.NVarChar, 256);
        paramList[2].Value = subCategory.SubCategoryName;

        paramList[3] = new SqlParameter("@Parent", SqlDbType.Int);
        paramList[3].Value = subCategory.Parent;

        paramList[4] = new SqlParameter("@Description", SqlDbType.NVarChar, 2048);
        paramList[4].Value = subCategory.Description;

        paramList[5] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[5].Value = subCategory.StatusId;

        if (db.executeUpdate("UpdateSubCategory", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeleteSubCategory - xoa thông tin subCategory
    /// </summary>
    /// <param name="subCategory"></param>
    /// <returns></returns>
    public bool DeleteSubCategory(SubCategory subCategory)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@SubCategoryId", SqlDbType.Int);
        paramList[0].Value = subCategory.SubCategoryId;

        if (db.executeUpdate("DeleteSubCategory", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
