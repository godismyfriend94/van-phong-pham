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
/// Summary description for ProductImage
/// </summary>
/// 

public class ProductImageLogic
{
    ProductImageDao productImageDao = new ProductImageDao();
    public ProductImageLogic()
    {

    }

    /// <summary>
    /// GetAllproductImage - lấy về tất cả productImage
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllproductImage()
    {
        return productImageDao.GetAllproductImage();
    }

    /// <summary>
    /// GetProductImageById - lấy về productImageBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetProductImageById(int id)
    {
        return productImageDao.GetProductImageById(id);
    }

    /// <summary>
    /// GetProductImageByProductId
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetProductImageByProductId(int id)
    {
        return productImageDao.GetProductImageByProductId(id);
    }
    /// <summary>
    /// InsertproductImage - them thông tin productImage
    /// </summary>
    /// <param name="productImage"></param>
    /// <returns></returns>
    public bool InsertProductImages(ProductImage productImage)
    {
        return productImageDao.InsertProductImages(productImage);
    }

    /// <summary>
    /// UpdateproductImage - sửa thông tin productImage
    /// </summary>
    /// <param name="productImage"></param>
    /// <returns></returns>
    public bool UpdateProductImages(ProductImage productImage)
    {
        return productImageDao.UpdateProductImages(productImage);
    }

    /// <summary>
    /// DeleteProductImages - xoa thông tin productImage
    /// </summary>
    /// <param name="productImage"></param>
    /// <returns></returns>
    public bool DeleteProductImages(ProductImage productImage)
    {
        return productImageDao.DeleteProductImages(productImage);
    }
}