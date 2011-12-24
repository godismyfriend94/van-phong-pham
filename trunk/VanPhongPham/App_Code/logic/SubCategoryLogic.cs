using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for SubCategoryLogic
/// </summary>
/// 

public class SubCategoryLogic
{
    SubCategoryDao subCategoryDao = new SubCategoryDao();
    public SubCategoryLogic()
    {

    }

    /// <summary>
    /// GetAllSubsubCategory - lấy về tất cả SubsubCategory
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllSubCategory()
    {
        return subCategoryDao.GetAllSubCategory();
    }

    /// <summary>
    /// GetSubsubCategoryById - lấy về SubsubCategory theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetSubsubCategoryById(int id)
    {
        return subCategoryDao.GetSubsubCategoryById(id);
    }

    /// <summary>
    /// GetSubCategoryByCategoryId
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetSubCategoryByCategoryId(int id)
    {
        return subCategoryDao.GetSubCategoryByCategoryId(id);
    }
    /// <summary>
    /// InsertSubsubCategory - them thông tin subCategory
    /// </summary>
    /// <param name="subCategory"></param>
    /// <returns></returns>
    public bool InsertSubsubCategory(SubCategory subCategory)
    {
        return subCategoryDao.InsertSubsubCategory(subCategory);
    }

    /// <summary>
    /// UpdateSubCategory - sửa thông tin subCategory
    /// </summary>
    /// <param name="subCategory"></param>
    /// <returns></returns>
    public bool UpdateSubCategory(SubCategory subCategory)
    {
        return subCategoryDao.UpdateSubCategory(subCategory);
    }

    /// <summary>
    /// DeleteSubCategory - xoa thông tin subCategory
    /// </summary>
    /// <param name="subCategory"></param>
    /// <returns></returns>
    public bool DeleteSubCategory(SubCategory subCategory)
    {
        return subCategoryDao.DeleteSubCategory(subCategory);
    }
}
