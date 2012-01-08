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
/// Summary description for Supplier
/// </summary>
public class Supplier
{
	int supplierId;
    string supplierName;
    string supplierLink;
    string supplierImage;
    string statusId;

    public int SupplierId
    {
        get { return supplierId; }
        set { supplierId = value; }
    }

    public string SupplierName
    {
        get { return supplierName; }
        set { supplierName = value; }
    }

    public string SupplierLink
    {
        get { return supplierLink; }
        set { supplierLink = value; }
    }

    public string SupplierImage
    {
        get { return supplierImage; }
        set { supplierImage = value; }
    }

    public string StatusId
    {
        get { return statusId; }
        set { statusId = value; }
    }



    public Supplier()
	{
	}
}
