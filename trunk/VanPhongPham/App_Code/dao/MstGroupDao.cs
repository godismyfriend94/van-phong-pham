using System;
using System.Data;
using System.Data.SqlClient;
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
/// Summary description for MstGroup
/// </summary>
/// 
public class MstGroupDao
{
    CommonDb db = new CommonDb();
    MstGroup mstGroup = new MstGroup();
    public MstGroupDao()
    {
    }

    /// <summary>
    /// GetAllMstGroup - lấy về tất cả group
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllGroup()
    {
        
  
        return db.executeSelect("GetAllGroup");
    }

    /// <summary>
    /// GetMstGroupByID - lấy về group theo id
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetMstGroupById(string groupId)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@GroupId", SqlDbType.Int);
        paramList[0].Value = groupId;

        return db.executeSelect("GetGroupById", paramList);
    }
}

