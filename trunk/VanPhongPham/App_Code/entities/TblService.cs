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
/// Summary description for TblService
/// </summary>
public class TblService
{
    int serviceId;
    string serviceName;
    string serviceLink;
    string description;
    DateTime createDate;
    string statusId;

    public int ServiceId
    {
        get { return serviceId; }
        set { serviceId = value; }
    }

    public string ServiceName
    {
        get { return serviceName; }
        set { serviceName = value; }
    }

    public string ServiceLink
    {
        get { return serviceLink; }
        set { serviceLink = value; }
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

    public TblService()
	{
	}
}
