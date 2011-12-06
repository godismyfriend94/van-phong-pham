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
/// Summary description for ProductImage
/// </summary>
public class ProductImage
{
    int imageId;
    int productId;
    string imageName;
    string imageUrl;
    int imageIndex;
    DateTime createDate;

    public int ImageId
    {
        get { return imageId; }
        set { imageId = value; }
    }

    public int ProductId
    {
        get { return productId; }
        set { productId = value; }
    }

    public string ImageName
    {
        get { return imageName; }
        set { imageName = value; }
    }

    public string ImageUrl
    {
        get { return imageUrl; }
        set { imageUrl = value; }
    }

    public int ImageIndex
    {
        get { return imageIndex; }
        set { imageIndex = value; }
    }

    public DateTime CreateDate
    {
        get { return createDate; }
        set { createDate = value; }
    }

	public ProductImage()
	{
	}
}
