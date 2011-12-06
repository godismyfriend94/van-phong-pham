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
/// Summary description for MstBillStatus
/// </summary>
public class MstBillStatus
{
    string statusId;
    string statusName;

    public string StatusId
    {
        get { return statusId; }
        set { statusId = value; }
    }
    
    public string StatusName
    {
        get { return statusName; }
        set { statusName = value; }
    }

	public MstBillStatus()
	{
	}
}
