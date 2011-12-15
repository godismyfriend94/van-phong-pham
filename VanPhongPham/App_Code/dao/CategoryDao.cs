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
/// Summary description for Category
/// </summary>
/// 

public class CategoryDao
{
    CommonDb db = new CommonDb();
    Category category = new Category();

    public CategoryDao()
    {

    }

    /// <summary>
    /// GetAllCategory - lấy về tất cả category
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllCategory()
    {
        return db.executeSelect("GetAllCategory");
    }

    /// <summary>
    /// GetCategoryById - lấy về category theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetCategoryById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@CategoryId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetCategoryById", paramList);
    }
    /// <summary>
    /// InsertCategory - them thông tin category
    /// </summary>
    /// <param name="category"></param>
    /// <returns></returns>
    public bool InsertCategory(Category category)
    {
        SqlParameter[] paramList = new SqlParameter[4];

        paramList[0] = new SqlParameter("@CategoryName", SqlDbType.NVarChar, 256);
        paramList[0].Value = category.CategoryName;

        paramList[1] = new SqlParameter("@CategoryImage", SqlDbType.NVarChar, 256);
        paramList[1].Value = category.CategoryImage;

        paramList[2] = new SqlParameter("@Description", SqlDbType.NVarChar, 2048);
        paramList[2].Value = category.Description;

        paramList[3] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[3].Value = category.StatusId;

        if (db.executeUpdate("InsertCategory", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdateCategory - sửa thông tin category
    /// </summary>
    /// <param name="category"></param>
    /// <returns></returns>
    public bool UpdateCategory(Category category)
    {
        SqlParameter[] paramList = new SqlParameter[5];

        paramList[0] = new SqlParameter("@CategoryId", SqlDbType.Int);
        paramList[0].Value = category.CategoryId;

        paramList[1] = new SqlParameter("@CategoryName", SqlDbType.NVarChar, 256);
        paramList[1].Value = category.CategoryName;

        paramList[2] = new SqlParameter("@CategoryImage", SqlDbType.NVarChar, 256);
        paramList[2].Value = category.CategoryImage;

        paramList[3] = new SqlParameter("@Description", SqlDbType.NVarChar, 2048);
        paramList[3].Value = category.Description;

        paramList[4] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 2048);
        paramList[4].Value = category.StatusId;

        if (db.executeUpdate("UpdateCategory", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeleteCategory - xoa thông tin category
    /// </summary>
    /// <param name="category"></param>
    /// <returns></returns>
    public bool DeleteCategory(Category category)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@CategoryId", SqlDbType.Int);
        paramList[0].Value = category.CategoryId;

        if (db.executeUpdate("DeleteCategory", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
