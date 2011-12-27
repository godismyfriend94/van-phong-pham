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
/// Summary description for ContactLogic
/// </summary>
public class ContactLogic
{
    ContactDao contactDao = new ContactDao();
	public ContactLogic()
	{

	}

    /// <summary>
    /// GetAllcontact - lấy về tất cả contact
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllTblContact()
    {
        return contactDao.GetAllTblContact();
    }

    /// <summary>
    /// GetcontactById - lấy về contact  theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetTblContactById(int id)
    {
        return contactDao.GetTblContactById(id);
    }
    /// <summary>
    /// Insertcontact - them thông tin contact
    /// </summary>
    /// <param name="contact"></param>
    /// <returns></returns>
    public bool InsertTblContact(TblContact contact)
    {
        return contactDao.InsertTblContact(contact);
    }

    /// <summary>
    /// Deletecontact - xoa thông tin contact
    /// </summary>
    /// <param name="contact"></param>
    /// <returns></returns>
    public bool DeleteTblContact(TblContact contact)
    {
        return contactDao.DeleteTblContact(contact);
    }
}
