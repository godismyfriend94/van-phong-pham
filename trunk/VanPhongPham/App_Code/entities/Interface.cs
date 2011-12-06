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
/// Summary description for Interface
/// </summary>
public class Interface
{
    int interfaceId;
    string typeId;
    string interfaceLink;
    string imageURL;
    string interfaceContent;
    string statusId;

    public int InterfaceId
    {
        get { return interfaceId; }
        set { interfaceId = value; }
    }

    public string TypeId
    {
        get { return typeId; }
        set { typeId = value; }
    }

    public string InterfaceLink
    {
        get { return interfaceLink; }
        set { interfaceLink = value; }
    }

    public string ImageURL
    {
        get { return imageURL; }
        set { imageURL = value; }
    }

    public string InterfaceContent
    {
        get { return interfaceContent; }
        set { interfaceContent = value; }
    }

    public string StatusId
    {
        get { return statusId; }
        set { statusId = value; }
    }

	public Interface()
	{
	}
}
