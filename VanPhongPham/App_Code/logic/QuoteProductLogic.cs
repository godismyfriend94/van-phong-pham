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
/// Summary description for QuoteProductLogic
/// </summary>
/// 

public class QuoteProductLogic
{
    QuoteProductDao quoteProductDao = new QuoteProductDao();
    public QuoteProductLogic()
    {

    }

    /// <summary>
    /// GetAllQuoteProduct - lấy về tất cả quoteProduct
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllQuoteProduct()
    {
        return quoteProductDao.GetAllQuoteProduct();
    }

    /// <summary>
    /// GetquoteProductById - lấy về quoteProductBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetQuoteProductById(int id)
    {
        return quoteProductDao.GetQuoteProductById(id);
    }
    /// <summary>
    /// InsertquoteProduct - them thông tin quoteProduct
    /// </summary>
    /// <param name="quoteProduct"></param>
    /// <returns></returns>
    public bool InsertQuoteProduct(QuoteProduct quoteProduct)
    {
        return quoteProductDao.InsertQuoteProduct(quoteProduct);
    }

    /// <summary>
    /// UpdateQuoteProduct - sửa thông tin quoteProduct
    /// </summary>
    /// <param name="quoteProduct"></param>
    /// <returns></returns>
    public bool UpdateQuoteProduct(QuoteProduct quoteProduct)
    {
        return quoteProductDao.UpdateQuoteProduct(quoteProduct);
    }

    /// <summary>
    /// DeleteQuoteProduct - xoa thông tin quoteProduct
    /// </summary>
    /// <param name="quoteProduct"></param>
    /// <returns></returns>
    public bool DeleteQuoteProduct(QuoteProduct quoteProduct)
    {
        return quoteProductDao.DeleteQuoteProduct(quoteProduct);
    }
}

