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
/// Summary description for TblUser
/// </summary>
public class TblUser
{
    int userId;
    string groupId;
    string userName;
    string password;
    string fullName;
    DateTime dateOfBirth;
    Boolean gender;
    string email;
    string phone;
    string address;
    DateTime joinDate;
    string statusId;

    public int UserId
    {
        get { return userId; }
        set { userId = value; }
    }
    
    public string GroupId
    {
        get { return groupId; }
        set { groupId = value; }
    }

    public string UserName
    {
        get { return userName; }
        set { userName = value; }
    }
   
    public string Password
    {
        get { return password; }
        set { password = value; }
    }

    public string FullName
    {
        get { return fullName; }
        set { fullName = value; }
    }

    public DateTime DateOfBirth
    {
        get { return dateOfBirth; }
        set { dateOfBirth = value; }
    }

    public Boolean Gender
    {
        get { return gender; }
        set { gender = value; }
    }

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

    public string Address
    {
        get { return address; }
        set { address = value; }
    }

    public string Phone
    {
        get { return phone; }
        set { phone = value; }
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

	public TblUser()
	{
	}
}
