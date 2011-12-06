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
/// Summary description for SubCategory
/// </summary>
public class SubCategory
{
    int subCategoryId;
    int categoryId;
    string subCategoryName;
    int parent;
    string description;
    string statusId;

    public int SubCategoryId
    {
        get { return subCategoryId; }
        set { subCategoryId = value; }
    }

    public int CategoryId
    {
        get { return categoryId; }
        set { categoryId = value; }
    }

    public string SubCategoryName
    {
        get { return subCategoryName; }
        set { subCategoryName = value; }
    }

    public int Parent
    {
        get { return parent; }
        set { parent = value; }
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

	public SubCategory()
	{
	}
}
