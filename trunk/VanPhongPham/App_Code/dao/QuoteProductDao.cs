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
/// Summary description for QuoteProduct
/// </summary>
/// 

public class QuoteProductDao
{
    CommonDb db = new CommonDb();
    public QuoteProductDao()
    {

    }

    /// <summary>
    /// GetAllQuoteProduct - lấy về tất cả quoteProduct
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllQuoteProduct()
    {
        return db.executeSelect("GetAllQuoteProduct");
    }

    /// <summary>
    /// GetquoteProductById - lấy về quoteProductBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetQuoteProductById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@QuoteId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetQuoteProductById", paramList);
    }
    /// <summary>
    /// InsertquoteProduct - them thông tin quoteProduct
    /// </summary>
    /// <param name="quoteProduct"></param>
    /// <returns></returns>
    public bool InsertQuoteProduct(QuoteProduct quoteProduct)
    {
        SqlParameter[] paramList = new SqlParameter[4];

        paramList[0] = new SqlParameter("@QuoteProductName", SqlDbType.NVarChar, 256);
        paramList[0].Value = quoteProduct.QuoteProductName;

        paramList[1] = new SqlParameter("@QuoteLink", SqlDbType.NVarChar, 256);
        paramList[1].Value = quoteProduct.QuoteLink;

        paramList[2] = new SqlParameter("@Description", SqlDbType.NVarChar, 512);
        paramList[2].Value = quoteProduct.Description;

        paramList[3] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[3].Value = quoteProduct.StatusId;

        if (db.executeUpdate("InsertQuoteProduct", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdateQuoteProduct - sửa thông tin quoteProduct
    /// </summary>
    /// <param name="quoteProduct"></param>
    /// <returns></returns>
    public bool UpdateQuoteProduct(QuoteProduct quoteProduct)
    {
        SqlParameter[] paramList = new SqlParameter[5];

        paramList[0] = new SqlParameter("@QuoteId", SqlDbType.Int);
        paramList[0].Value = quoteProduct.QuoteId;

        paramList[1] = new SqlParameter("@QuoteProductName", SqlDbType.NVarChar, 256);
        paramList[1].Value = quoteProduct.QuoteProductName;

        paramList[2] = new SqlParameter("@QuoteLink", SqlDbType.NVarChar, 256);
        paramList[2].Value = quoteProduct.QuoteLink;

        paramList[3] = new SqlParameter("@Description", SqlDbType.NVarChar, 512);
        paramList[3].Value = quoteProduct.Description;

        paramList[4] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[4].Value = quoteProduct.StatusId;

        if (db.executeUpdate("UpdateQuoteProduct", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeleteQuoteProduct - xoa thông tin quoteProduct
    /// </summary>
    /// <param name="quoteProduct"></param>
    /// <returns></returns>
    public bool DeleteQuoteProduct(QuoteProduct quoteProduct)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@QuoteId", SqlDbType.Int);
        paramList[0].Value = quoteProduct.QuoteId;

        if (db.executeUpdate("DeleteQuoteProduct", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}

