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
/// Summary description for Bill
/// </summary>
public class Bill
{
    int billId;
    int userId;
    string receiverName;
    DateTime deliveryTime;
    string deliveryAddress;
    string receiverEmail;
    string receiverTel;
    string receiverFax;
    string note;
    DateTime createDate;
    string statusId;


    public int BillId
    {
        get { return billId; }
        set { billId = value; }
    }

    public int UserId
    {
        get { return userId; }
        set { userId = value; }
    }

    public string ReceiverName
    {
        get { return receiverName; }
        set { receiverName = value; }
    }

    public DateTime DeliveryTime
    {
        get { return deliveryTime; }
        set { deliveryTime = value; }
    }

    public string DeliveryAddress
    {
        get { return deliveryAddress; }
        set { deliveryAddress = value; }
    }

    public string ReceiverEmail
    {
        get { return receiverEmail; }
        set { receiverEmail = value; }
    }

    public string ReceiverTel
    {
        get { return receiverTel; }
        set { receiverTel = value; }
    }

    public string ReceiverFax
    {
        get { return receiverFax; }
        set { receiverFax = value; }
    }

    public string Note
    {
        get { return note; }
        set { note = value; }
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

    public Bill()
	{

	}
}
