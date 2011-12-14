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
/// Summary description for QuoteProduct
/// </summary>
public class QuoteProduct
{
    int quoteId;
    string quoteProductName;
    string quoteLink;
    string description;
    DateTime createDate;
    string statusId;

    public int QuoteId
    {
        get { return quoteId; }
        set { quoteId = value; }
    }

    public string QuoteProductName
    {
        get { return quoteProductName; }
        set { quoteProductName = value; }
    }

    public string QuoteLink
    {
        get { return quoteLink; }
        set { quoteLink = value; }
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

	public QuoteProduct()
	{
	}
}
