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
/// Summary description for ProductLogic
/// </summary>
/// 
public class ProductLogic
{
    ProductDao productDao = new ProductDao();
    public ProductLogic()
    {

    }

    /// <summary>
    /// GetAllProduct - lấy về tất cả Product
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllProduct()
    {
        return productDao.GetAllProduct();
    }

    /// <summary>
    /// GetProductById - lấy về ProductBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetProductById(int id)
    {
        return productDao.GetProductById(id);
    }

    /// <summary>
    /// GetTop18NewProductByViewOption
    /// </summary>
    /// <param name="viewOption"></param>
    /// <returns></returns>
    public DataTable GetTop18NewProductByViewOption(String viewOption)
    {
        return productDao.GetTop18NewProductByViewOption(viewOption);
    }

    /// <summary>
    /// GetProductForSlide
    /// </summary>
    /// <param name="viewOption"></param>
    /// <returns></returns>
    public DataTable GetProductForSlide(String viewOption)
    {
        return productDao.GetProductForSlide(viewOption);
    }

    /// <summary>
    /// GetProductOfCategory
    /// </summary>
    /// <param name="subCategoryId"></param>
    /// <returns></returns>
    public DataTable GetProductOfCategory(int subCategoryId)
    {
        return productDao.GetProductOfCategory(subCategoryId);
    }
    /// <summary>
    /// GetTopView12Product
    /// </summary>
    /// <returns></returns>
    public DataTable GetTopView12Product()
    {
        return productDao.GetTopView12Product();
    }
    /// <summary>
    /// InsertProduct - them thông tin product
    /// </summary>
    /// <param name="product"></param>
    /// <returns></returns>
    public bool InsertProduct(Product product)
    {
        return productDao.InsertProduct(product);
    }

    /// <summary>
    /// Updateproduct - sửa thông tin product
    /// </summary>
    /// <param name="product"></param>
    /// <returns></returns>
    public bool UpdateProduct(Product product)
    {
        return productDao.UpdateProduct(product);
    }

    /// <summary>
    /// UpdatePriceAndPromotion
    /// </summary>
    /// <param name="product"></param>
    /// <returns></returns>
    public bool UpdatePriceAndPromotion(Product product)
    {
        return productDao.UpdatePriceAndPromotion(product);
    }

    /// <summary>
    /// Deleteproduct - xoa thông tin product
    /// </summary>
    /// <param name="product"></param>
    /// <returns></returns>
    public bool DeleteProduct(Product product)
    {
        return productDao.DeleteProduct(product);
    }
}