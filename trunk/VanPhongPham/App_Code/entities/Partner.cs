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
/// Summary description for Partner
/// </summary>
public class Partner
{
    int partnerId;
    string partnerName;
    string address;
    string city;
    string phone;
    string link;
    string email;
    DateTime joinDate;
    string statusId;

    public int PartnerId
    {
        get { return partnerId; }
        set { partnerId = value; }
    }

    public string PartnerName
    {
        get { return partnerName; }
        set { partnerName = value; }
    }

    public string Address
    {
        get { return address; }
        set { address = value; }
    }

    public string City
    {
        get { return city; }
        set { city = value; }
    }

    public string Phone
    {
        get { return phone; }
        set { phone = value; }
    }

    public string Link
    {
        get { return link; }
        set { link = value; }
    }

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

    public DateTime JoinDate
    {
        get { return joinDate; }
        set { joinDate = value; }
    }

    public string StatusId
    {
        get { return statusId; }
        set { statusId = value; }
    }

	public Partner()
	{
	}
}
