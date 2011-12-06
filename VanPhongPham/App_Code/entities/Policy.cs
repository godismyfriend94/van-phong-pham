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
/// Summary description for Policy
/// </summary>
public class Policy
{
    int policyId;
    string policyType;
    string policyContent;
    string statusId;
    DateTime createDate;

    public int PolicyId
    {
        get { return policyId; }
        set { policyId = value; }
    }

    public string PolicyType
    {
        get { return policyType; }
        set { policyType = value; }
    }

    public string PolicyContent
    {
        get { return policyContent; }
        set { policyContent = value; }
    }

    public string StatusId
    {
        get { return statusId; }
        set { statusId = value; }
    }

    public DateTime CreateDate
    {
        get { return createDate; }
        set { createDate = value; }
    }

	public Policy()
	{
	}
}
