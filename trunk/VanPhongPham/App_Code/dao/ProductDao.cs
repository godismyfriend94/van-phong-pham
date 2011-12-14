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
    /// InsertProduct - them thông tin product
    /// </summary>
    /// <param name="product"></param>
    /// <returns></returns>
    public bool InsertProduct(Product product)
    {
        SqlParameter[] paramList = new SqlParameter[14];

        paramList[0] = new SqlParameter("@ProductName", SqlDbType.NVarChar, 256);
        paramList[0].Value = product.ProductName;

        paramList[1] = new SqlParameter("@SubCategoryId", SqlDbType.Int);
        paramList[1].Value = product.SubCategoryId;

        paramList[2] = new SqlParameter("@ViewQuantity", SqlDbType.Int);
        paramList[2].Value = product.ViewQuantity;

        paramList[3] = new SqlParameter("@Price", SqlDbType.Float);
        paramList[3].Value = product.Price;

        paramList[4] = new SqlParameter("@Quantity", SqlDbType.Int);
        paramList[4].Value = product.Quantity;

        paramList[5] = new SqlParameter("@Quality", SqlDbType.NVarChar, 256);
        paramList[5].Value = product.Quality;

        paramList[6] = new SqlParameter("@MadeBy", SqlDbType.NVarChar, 256);
        paramList[6].Value = product.MadeBy;

        paramList[7] = new SqlParameter("@VatTax", SqlDbType.Float);
        paramList[7].Value = product.VatTax;

        paramList[8] = new SqlParameter("@Warranty", SqlDbType.Float);
        paramList[8].Value = product.Warranty;

        paramList[9] = new SqlParameter("@TransportCost", SqlDbType.Float);
        paramList[9].Value = product.TransportCost;

        paramList[10] = new SqlParameter("@ViewOption", SqlDbType.NVarChar, 256);
        paramList[10].Value = product.ViewOption;

        paramList[11] = new SqlParameter("@SubDescription", SqlDbType.NVarChar, 256);
        paramList[11].Value = product.SubDescription;

        paramList[12] = new SqlParameter("@Description", SqlDbType.NVarChar, 2048);
        paramList[12].Value = product.Description;

        paramList[13] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[13].Value = product.StatusId;

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
        SqlParameter[] paramList = new SqlParameter[15];

        paramList[0] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[0].Value = product.ProductId;

        paramList[1] = new SqlParameter("@ProductName", SqlDbType.NVarChar, 256);
        paramList[1].Value = product.ProductName;

        paramList[2] = new SqlParameter("@SubCategoryId", SqlDbType.Int);
        paramList[2].Value = product.SubCategoryId;

        paramList[3] = new SqlParameter("@ViewQuantity", SqlDbType.Int);
        paramList[3].Value = product.ViewQuantity;

        paramList[4] = new SqlParameter("@Price", SqlDbType.Float);
        paramList[4].Value = product.Price;

        paramList[5] = new SqlParameter("@Quantity", SqlDbType.Int);
        paramList[5].Value = product.Quantity;

        paramList[6] = new SqlParameter("@Quality", SqlDbType.NVarChar, 256);
        paramList[6].Value = product.Quality;

        paramList[7] = new SqlParameter("@MadeBy", SqlDbType.NVarChar, 256);
        paramList[7].Value = product.MadeBy;

        paramList[8] = new SqlParameter("@VatTax", SqlDbType.Float);
        paramList[8].Value = product.VatTax;

        paramList[9] = new SqlParameter("@Warranty", SqlDbType.Float);
        paramList[9].Value = product.Warranty;

        paramList[10] = new SqlParameter("@TransportCost", SqlDbType.Float);
        paramList[10].Value = product.TransportCost;

        paramList[11] = new SqlParameter("@ViewOption", SqlDbType.NVarChar, 256);
        paramList[11].Value = product.ViewOption;

        paramList[12] = new SqlParameter("@SubDescription", SqlDbType.NVarChar, 256);
        paramList[12].Value = product.SubDescription;

        paramList[13] = new SqlParameter("@Description", SqlDbType.NVarChar, 2048);
        paramList[13].Value = product.Description;

        paramList[14] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[14].Value = product.StatusId;

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