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
/// Summary description for TblContact
/// </summary>
public class TblContact
{
    int contactId;
    string creator;
    string email;
    string phone;
    string company;
    string contactContent;
    DateTime createDate;
    string statusId;

    public int ContactId
    {
        get { return contactId; }
        set { contactId = value; }
    }
    

    public string Creator
    {
        get { return creator; }
        set { creator = value; }
    }
    

    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    

    public string Phone
    {
        get { return phone; }
        set { phone = value; }
    }
    

    public string Company
    {
        get { return company; }
        set { company = value; }
    }
    

    public string ContactContent
    {
        get { return contactContent; }
        set { contactContent = value; }
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

	public TblContact()
	{

	}
}
