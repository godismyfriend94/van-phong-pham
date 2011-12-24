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
/// Summary description for ProductImageDao
/// </summary>
/// 

public class ProductImageDao
{
    CommonDb db = new CommonDb();
    public ProductImageDao()
    {

    }

    /// <summary>
    /// GetAllproductImage - lấy về tất cả productImage
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllproductImage()
    {
        return db.executeSelect("GetAllProductImage");
    }

    /// <summary>
    /// GetProductImageById - lấy về productImageBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetProductImageById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@ImageId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetProductImageById", paramList);
    }

    /// <summary>
    /// GetProductImageByProductId
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetProductImageByProductId(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetProductImageByProductId", paramList);
    }
    /// <summary>
    /// InsertproductImage - them thông tin productImage
    /// </summary>
    /// <param name="productImage"></param>
    /// <returns></returns>
    public bool InsertProductImages(ProductImage productImage)
    {
        SqlParameter[] paramList = new SqlParameter[4];

        paramList[0] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[0].Value = productImage.ProductId;

        paramList[1] = new SqlParameter("@ImageName", SqlDbType.NVarChar, 256);
        paramList[1].Value = productImage.ImageName;

        paramList[2] = new SqlParameter("@ImageUrl", SqlDbType.NVarChar, 256);
        paramList[2].Value = productImage.ImageUrl;

        paramList[3] = new SqlParameter("@ImageIndex", SqlDbType.Int);
        paramList[3].Value = productImage.ImageIndex;

        if (db.executeUpdate("InsertProductImages", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdateproductImage - sửa thông tin productImage
    /// </summary>
    /// <param name="productImage"></param>
    /// <returns></returns>
    public bool UpdateProductImages(ProductImage productImage)
    {
        SqlParameter[] paramList = new SqlParameter[5];

        paramList[0] = new SqlParameter("@ImageId", SqlDbType.Int);
        paramList[0].Value = productImage.ImageId;

        paramList[1] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[1].Value = productImage.ProductId;

        paramList[2] = new SqlParameter("@ImageName", SqlDbType.NVarChar, 256);
        paramList[2].Value = productImage.ImageName;

        paramList[3] = new SqlParameter("@ImageUrl", SqlDbType.NVarChar, 256);
        paramList[3].Value = productImage.ImageUrl;

        paramList[4] = new SqlParameter("@ImageIndex", SqlDbType.Int);
        paramList[4].Value = productImage.ImageIndex;

        if (db.executeUpdate("UpdateProductImages", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeleteProductImages - xoa thông tin productImage
    /// </summary>
    /// <param name="productImage"></param>
    /// <returns></returns>
    public bool DeleteProductImages(ProductImage productImage)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@ImageId", SqlDbType.Int);
        paramList[0].Value = productImage.ImageId;

        if (db.executeUpdate("DeleteProductImages", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}