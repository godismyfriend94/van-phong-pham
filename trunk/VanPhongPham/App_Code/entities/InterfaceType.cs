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
/// Summary description for InterfaceType
/// </summary>
public class InterfaceType
{
    string typeId;
    string typeName;

    public string TypeId
    {
        get { return typeId; }
        set { typeId = value; }
    }

    public string TypeName
    {
        get { return typeName; }
        set { typeName = value; }
    }

	public InterfaceType()
	{

	}
}
