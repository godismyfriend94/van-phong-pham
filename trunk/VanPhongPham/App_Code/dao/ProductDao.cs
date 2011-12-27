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
/// Summary description for Product
/// </summary>
/// 
public class ProductDao
{
    CommonDb db = new CommonDb();
    Product product = new Product();

    public ProductDao()
    {

    }

    /// <summary>
    /// GetAllProduct - lấy về tất cả Product
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllProduct()
    {
        return db.executeSelect("GetAllProduct");
    }

    /// <summary>
    /// GetProductById - lấy về ProductBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetProductById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetProductById", paramList);
    }

    /// <summary>
    /// GetTop18NewProductByViewOption
    /// </summary>
    /// <param name="viewOption"></param>
    /// <returns></returns>
    public DataTable GetTop18NewProductByViewOption(String viewOption)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@ViewOption", SqlDbType.NVarChar, 256);
        paramList[0].Value = viewOption;

        return db.executeSelect("GetTop18NewProductByViewOption", paramList);
    }

    /// <summary>
    /// GetProductForSlide
    /// </summary>
    /// <param name="viewOption"></param>
    /// <returns></returns>
    public DataTable GetProductForSlide(String viewOption)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@ViewOption", SqlDbType.NVarChar, 256);
        paramList[0].Value = viewOption;

        return db.executeSelect("GetProductForSlide", paramList);
    }

    /// <summary>
    /// GetProductOfCategory
    /// </summary>
    /// <param name="subCategoryId"></param>
    /// <returns></returns>
    public DataTable GetProductOfCategory(int subCategoryId)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@SubCategoryId", SqlDbType.Int);
        paramList[0].Value = subCategoryId;

        return db.executeSelect("GetProductOfCategory", paramList);
    }

    /// <summary>
    /// GetTopView12Product
    /// </summary>
    /// <returns></returns>
    public DataTable GetTopView12Product()
    {
        return db.executeSelect("GetTopView12Product");
    }
    /// <summary>
    /// InsertProduct - them thông tin product
    /// </summary>
    /// <param name="product"></param>
    /// <returns></returns>
    public bool InsertProduct(Product product)
    {
        SqlParameter[] paramList = new SqlParameter[16];

        paramList[0] = new SqlParameter("@ProductName", SqlDbType.NVarChar, 256);
        paramList[0].Value = product.ProductName;

        paramList[1] = new SqlParameter("@SubCategoryId", SqlDbType.Int);
        paramList[1].Value = product.SubCategoryId;

        paramList[2] = new SqlParameter("@ViewQuantity", SqlDbType.Int);
        paramList[2].Value = product.ViewQuantity;

        paramList[3] = new SqlParameter("@Thumbnails", SqlDbType.NVarChar, 256);
        paramList[3].Value = product.Thumbnails;

        paramList[4] = new SqlParameter("@Price", SqlDbType.Float);
        paramList[4].Value = product.Price;

        paramList[5] = new SqlParameter("@Promotion", SqlDbType.Float);
        paramList[5].Value = product.Promotion;

        paramList[6] = new SqlParameter("@Quantity", SqlDbType.Int);
        paramList[6].Value = product.Quantity;

        paramList[7] = new SqlParameter("@Quality", SqlDbType.NVarChar, 256);
        paramList[7].Value = product.Quality;

        paramList[8] = new SqlParameter("@MadeBy", SqlDbType.NVarChar, 256);
        paramList[8].Value = product.MadeBy;

        paramList[9] = new SqlParameter("@VatTax", SqlDbType.Float);
        paramList[9].Value = product.VatTax;

        paramList[10] = new SqlParameter("@Warranty", SqlDbType.Float);
        paramList[10].Value = product.Warranty;

        paramList[11] = new SqlParameter("@TransportCost", SqlDbType.Float);
        paramList[11].Value = product.TransportCost;

        paramList[12] = new SqlParameter("@ViewOption", SqlDbType.NVarChar, 256);
        paramList[12].Value = product.ViewOption;

        paramList[13] = new SqlParameter("@SubDescription", SqlDbType.NVarChar, 256);
        paramList[13].Value = product.SubDescription;

        paramList[14] = new SqlParameter("@Description", SqlDbType.NVarChar, 2048);
        paramList[14].Value = product.Description;

        paramList[15] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[15].Value = product.StatusId;

        if (db.executeUpdate("InsertProduct", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// Updateproduct - sửa thông tin product
    /// </summary>
    /// <param name="product"></param>
    /// <returns></returns>
    public bool UpdateProduct(Product product)
    {
        SqlParameter[] paramList = new SqlParameter[17];

        paramList[0] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[0].Value = product.ProductId;

        paramList[1] = new SqlParameter("@ProductName", SqlDbType.NVarChar, 256);
        paramList[1].Value = product.ProductName;

        paramList[2] = new SqlParameter("@SubCategoryId", SqlDbType.Int);
        paramList[2].Value = product.SubCategoryId;

        paramList[3] = new SqlParameter("@ViewQuantity", SqlDbType.Int);
        paramList[3].Value = product.ViewQuantity;

        paramList[4] = new SqlParameter("@Thumbnails", SqlDbType.NVarChar, 256);
        paramList[4].Value = product.Thumbnails;

        paramList[5] = new SqlParameter("@Price", SqlDbType.Float);
        paramList[5].Value = product.Price;

        paramList[6] = new SqlParameter("@Promotion", SqlDbType.Float);
        paramList[6].Value = product.Promotion;

        paramList[7] = new SqlParameter("@Quantity", SqlDbType.Int);
        paramList[7].Value = product.Quantity;

        paramList[8] = new SqlParameter("@Quality", SqlDbType.NVarChar, 256);
        paramList[8].Value = product.Quality;

        paramList[9] = new SqlParameter("@MadeBy", SqlDbType.NVarChar, 256);
        paramList[9].Value = product.MadeBy;

        paramList[10] = new SqlParameter("@VatTax", SqlDbType.Float);
        paramList[10].Value = product.VatTax;

        paramList[11] = new SqlParameter("@Warranty", SqlDbType.Float);
        paramList[11].Value = product.Warranty;

        paramList[12] = new SqlParameter("@TransportCost", SqlDbType.Float);
        paramList[12].Value = product.TransportCost;

        paramList[13] = new SqlParameter("@ViewOption", SqlDbType.NVarChar, 256);
        paramList[13].Value = product.ViewOption;

        paramList[14] = new SqlParameter("@SubDescription", SqlDbType.NVarChar, 256);
        paramList[14].Value = product.SubDescription;

        paramList[15] = new SqlParameter("@Description", SqlDbType.NVarChar, 2048);
        paramList[15].Value = product.Description;

        paramList[16] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[16].Value = product.StatusId;

        if (db.executeUpdate("UpdateProduct", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// Deleteproduct - xoa thông tin product
    /// </summary>
    /// <param name="product"></param>
    /// <returns></returns>
    public bool DeleteProduct(Product product)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[0].Value = product.ProductId;

        if (db.executeUpdate("DeleteProduct", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}