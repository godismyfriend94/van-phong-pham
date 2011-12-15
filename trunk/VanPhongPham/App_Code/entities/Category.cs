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
using System.Data.SqlClient;
/// <summary>
/// Summary description for Category
/// </summary>
public class Category
{
    int categoryId;
    string categoryName;
    string categoryImage;
    string description;
    string statusId;

    public int CategoryId
    {
        get { return categoryId; }
        set { categoryId = value; }
    }
    public string CategoryName
    {
        get { return categoryName; }
        set { categoryName = value; }
    }

    public string CategoryImage
    {
        get { return categoryImage; }
        set { categoryImage = value; }
    }

    public string Description
    {
        get { return description; }
        set { description = value; }
    }

    public string StatusId
    {
        get { return statusId; }
        set { statusId = value; }
    }

    public Category()
	{
	}
}
