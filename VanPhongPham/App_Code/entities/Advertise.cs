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
/// Summary description for Advertise
/// </summary>
public class Advertise
{
    int advertiseId;
    string advertiseType;
    string advertiseName;
    string advertiseLink;
    string imageURL;
    int advertisePostion;
    DateTime createDate;
    string statusId;

    public int AdvertiseId
    {
        get { return advertiseId; }
        set { advertiseId = value; }
    }

    public string AdvertiseName
    {
        get { return advertiseName; }
        set { advertiseName = value; }
    }

    public string AdvertiseLink
    {
        get { return advertiseLink; }
        set { advertiseLink = value; }
    }

    public string ImageURL
    {
        get { return imageURL; }
        set { imageURL = value; }
    }

    public int AdvertisePostion
    {
        get { return advertisePostion; }
        set { advertisePostion = value; }
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

    public Advertise()
	{
	}
}
