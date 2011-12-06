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
/// Summary description for Product
/// </summary>
public class Product
{
    int productId;
    string productName;
    int subCategoryId;
    string viewQuantity;
    float price;
    int quantity;
    string quality;
    string madeBy;
    float vatTax;
    int warranty;
    float transportCost;
    string viewOption;
    string subDescription;
    string description;
    DateTime createDate;
    string statusId;

    public int ProductId
    {
        get { return productId; }
        set { productId = value; }
    }

    public string ProductName
    {
        get { return productName; }
        set { productName = value; }
    }

    public int SubCategoryId
    {
        get { return subCategoryId; }
        set { subCategoryId = value; }
    }

    public string ViewQuantity
    {
        get { return viewQuantity; }
        set { viewQuantity = value; }
    }

    public float Price
    {
        get { return price; }
        set { price = value; }
    }

    public int Quantity
    {
        get { return quantity; }
        set { quantity = value; }
    }

    public string Quality
    {
        get { return quality; }
        set { quality = value; }
    }

    public string MadeBy
    {
        get { return madeBy; }
        set { madeBy = value; }
    }

    public float VatTax
    {
        get { return vatTax; }
        set { vatTax = value; }
    }

    public int Warranty
    {
        get { return warranty; }
        set { warranty = value; }
    }

    public float TransportCost
    {
        get { return transportCost; }
        set { transportCost = value; }
    }

    public string ViewOption
    {
        get { return viewOption; }
        set { viewOption = value; }
    }

    public string SubDescription
    {
        get { return subDescription; }
        set { subDescription = value; }
    }

    public string Description
    {
        get { return description; }
        set { description = value; }
    }

    public DateTime CreateDate
    {
        get { return createDate; }
        set { createDate = value; }
    }

    public string StatusId
    {
        get { return statusId; }
        set { statusId = value; }
    }

	public Product()
	{
	}
}
