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
/// Summary description for CategoryLogic
/// </summary>
/// 

public class CategoryLogic
{
    CategoryDao categoryDao = new CategoryDao();
    public CategoryLogic()
    {

    }

    /// <summary>
    /// GetAllCategory - lấy về tất cả category
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllCategory()
    {
        return categoryDao.GetAllCategory();
    }

    /// <summary>
    /// GetCategoryById - lấy về category theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetCategoryById(int id)
    {
        return categoryDao.GetCategoryById(id);
    }
    /// <summary>
    /// InsertCategory - them thông tin category
    /// </summary>
    /// <param name="category"></param>
    /// <returns></returns>
    public bool InsertCategory(Category category)
    {
        return categoryDao.InsertCategory(category);
    }

    /// <summary>
    /// UpdateCategory - sửa thông tin category
    /// </summary>
    /// <param name="category"></param>
    /// <returns></returns>
    public bool UpdateCategory(Category category)
    {
        return categoryDao.UpdateCategory(category);
    }

    /// <summary>
    /// DeleteCategory - xoa thông tin category
    /// </summary>
    /// <param name="category"></param>
    /// <returns></returns>
    public bool DeleteCategory(Category category)
    {
        return categoryDao.DeleteCategory(category);
    }
}
