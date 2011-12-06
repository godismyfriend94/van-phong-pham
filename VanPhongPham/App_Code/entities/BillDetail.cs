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
/// Summary description for BillDetail
/// </summary>
public class BillDetail
{
    int billId;
    int productId;
    int quantity;

    public int BillId
    {
        get { return billId; }
        set { billId = value; }
    }

    public int ProductId
    {
        get { return productId; }
        set { productId = value; }
    }

    public int Quantity
    {
        get { return quantity; }
        set { quantity = value; }
    }

    public BillDetail()
	{

	}
}
