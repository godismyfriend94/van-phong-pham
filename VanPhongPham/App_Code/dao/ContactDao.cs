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
using System.Data.SqlClient;
/// <summary>
/// Summary description for ContactDao
/// </summary>
public class ContactDao
{
    CommonDb db = new CommonDb();

	public ContactDao()
	{
	}

    /// <summary>
    /// GetAllcontact - lấy về tất cả contact
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllTblContact()
    {
        return db.executeSelect("GetAllTblContact");
    }

    /// <summary>
    /// GetcontactById - lấy về contact  theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetTblContactById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@ContactId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetTblContactById", paramList);
    }
    /// <summary>
    /// Insertcontact - them thông tin contact
    /// </summary>
    /// <param name="contact"></param>
    /// <returns></returns>
    public bool InsertTblContact(TblContact contact)
    {
        SqlParameter[] paramList = new SqlParameter[6];

        paramList[0] = new SqlParameter("@Creator", SqlDbType.NVarChar, 256);
        paramList[0].Value = contact.Creator;

        paramList[1] = new SqlParameter("@Email", SqlDbType.NVarChar, 256);
        paramList[1].Value = contact.Email;

        paramList[2] = new SqlParameter("@Phone", SqlDbType.NVarChar, 256);
        paramList[2].Value = contact.Phone;

        paramList[3] = new SqlParameter("@Company", SqlDbType.NVarChar, 256);
        paramList[3].Value = contact.Company;

        paramList[4] = new SqlParameter("@ContactContent", SqlDbType.NVarChar);
        paramList[4].Value = contact.ContactContent;

        paramList[5] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[5].Value = contact.StatusId;

        if (db.executeUpdate("InsertTblContact", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// Deletecontact - xoa thông tin contact
    /// </summary>
    /// <param name="contact"></param>
    /// <returns></returns>
    public bool DeleteTblContact(TblContact contact)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@ContactId", SqlDbType.Int);
        paramList[0].Value = contact.ContactId;

        if (db.executeUpdate("DeleteTblContact", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
