using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Reflection;
using System.Runtime.InteropServices;
/// <summary>
/// Summary description for Interface
/// </summary>
/// 

public class InterfaceDao
{
    CommonDb db = new CommonDb();
    public InterfaceDao()
    {
    }

    /// <summary>
    /// GetAllTblInterface - lấy về tất cả tblInterface
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllTblInterface()
    {
        return db.executeSelect("GetAllTblInterface");
    }

    /// <summary>
    /// GettblInterfaceById - lấy về tblInterfaceBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetTblInterfaceById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@InterfaceId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetTblInterfaceById", paramList);
    }
    /// <summary>
    /// InserttblInterface - them thông tin tblInterface
    /// </summary>
    /// <param name="tblInterface"></param>
    /// <returns></returns>
    public bool InsertTblInterface(TblInterface tblInterface)
    {
        SqlParameter[] paramList = new SqlParameter[5];

        paramList[0] = new SqlParameter("@TypeId", SqlDbType.NVarChar, 256);
        paramList[0].Value = tblInterface.TypeId;

        paramList[1] = new SqlParameter("@InterfaceLink", SqlDbType.NVarChar, 256);
        paramList[1].Value = tblInterface.InterfaceLink;

        paramList[2] = new SqlParameter("@ImageURL", SqlDbType.NVarChar, 256);
        paramList[2].Value = tblInterface.ImageURL;

        paramList[3] = new SqlParameter("@InterfaceContent", SqlDbType.NVarChar, 512);
        paramList[3].Value = tblInterface.InterfaceContent;

        paramList[4] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[4].Value = tblInterface.StatusId;

        if (db.executeUpdate("InsertTblInterface", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdatetblInterface - sửa thông tin tblInterface
    /// </summary>
    /// <param name="tblInterface"></param>
    /// <returns></returns>
    public bool UpdateTblInterface(TblInterface tblInterface)
    {
        SqlParameter[] paramList = new SqlParameter[6];

        paramList[0] = new SqlParameter("@InterfaceId", SqlDbType.Int);
        paramList[0].Value = tblInterface.InterfaceId;

        paramList[1] = new SqlParameter("@TypeId", SqlDbType.NVarChar, 256);
        paramList[1].Value = tblInterface.TypeId;

        paramList[2] = new SqlParameter("@InterfaceLink", SqlDbType.NVarChar, 256);
        paramList[2].Value = tblInterface.InterfaceLink;

        paramList[3] = new SqlParameter("@ImageURL", SqlDbType.NVarChar, 256);
        paramList[3].Value = tblInterface.ImageURL;

        paramList[4] = new SqlParameter("@InterfaceContent", SqlDbType.NVarChar, 512);
        paramList[4].Value = tblInterface.InterfaceContent;

        paramList[5] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[5].Value = tblInterface.StatusId;

        if (db.executeUpdate("UpdateTblInterface", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeleteTblInterface - xoa thông tin tblInterface
    /// </summary>
    /// <param name="tblInterface"></param>
    /// <returns></returns>
    public bool DeleteTblInterface(TblInterface tblInterface)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@InterfaceId", SqlDbType.Int);
        paramList[0].Value = tblInterface.InterfaceId;

        if (db.executeUpdate("DeleteTblInterface", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}

