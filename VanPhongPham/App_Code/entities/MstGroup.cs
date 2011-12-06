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
/// Summary description for MstGroup
/// </summary>
public class MstGroup
{
    string groupId;
    string groupName;

    public string GroupId
    {
        get { return groupId; }
        set { groupId = value; }
    }
    
    public string GroupName
    {
        get { return groupName; }
        set { groupName = value; }
    }

	public MstGroup()
	{

	}
    
}
