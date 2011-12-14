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
/// Summary description for Support
/// </summary>
public class Support
{
    int supportId;
    string supportName;
    string supportLink;
    string supportImage;
    string statusId;

    public int SupportId
    {
        get { return supportId; }
        set { supportId = value; }
    }
    
    public string SupportName
    {
        get { return supportName; }
        set { supportName = value; }
    }

    public string SupportLink
    {
        get { return supportLink; }
        set { supportLink = value; }
    }

    public string SupportImage
    {
        get { return supportImage; }
        set { supportImage = value; }
    }

    public string StatusId
    {
        get { return statusId; }
        set { statusId = value; }
    }



	public Support()
	{
	}
}
