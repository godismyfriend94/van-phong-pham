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
/// Summary description for InterfaceType
/// </summary>
/// 

public class InterfaceTypeDao
{
    CommonDb db = new CommonDb();
    public InterfaceTypeDao()
    {
    }

    /// <summary>
    /// GetAllInterfaceType - lấy về tất cả interfaceType
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllInterfaceType()
    {
        return db.executeSelect("GetAllInterfaceType");
    }

    /// <summary>
    /// GetInterfaceTypeById - lấy về interfaceTypeBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetInterfaceTypeById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@TypeId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetInterfaceTypeById", paramList);
    }
    /// <summary>
    /// InsertInterfaceType - them thông tin interfaceType
    /// </summary>
    /// <param name="interfaceType"></param>
    /// <returns></returns>
    public bool InsertInterfaceType(InterfaceType interfaceType)
    {
        SqlParameter[] paramList = new SqlParameter[2];

        paramList[0] = new SqlParameter("@TypeId", SqlDbType.NVarChar, 256);
        paramList[0].Value = interfaceType.TypeId;

        paramList[1] = new SqlParameter("@TypeName", SqlDbType.NVarChar, 256);
        paramList[1].Value = interfaceType.TypeName;

        if (db.executeUpdate("InsertInterfaceType", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdateInterfaceType - sửa thông tin interfaceType
    /// </summary>
    /// <param name="interfaceType"></param>
    /// <returns></returns>
    public bool UpdateInterfaceType(InterfaceType interfaceType)
    {
        SqlParameter[] paramList = new SqlParameter[2];

        paramList[0] = new SqlParameter("@TypeId", SqlDbType.NVarChar, 256);
        paramList[0].Value = interfaceType.TypeId;

        paramList[1] = new SqlParameter("@TypeName", SqlDbType.NVarChar, 256);
        paramList[1].Value = interfaceType.TypeName;

        if (db.executeUpdate("UpdateInterfaceType", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeleteinterfaceType - xoa thông tin interfaceType
    /// </summary>
    /// <param name="interfaceType"></param>
    /// <returns></returns>
    public bool DeleteInterfaceType(InterfaceType interfaceType)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@TypeId", SqlDbType.NVarChar, 256);
        paramList[0].Value = interfaceType.TypeId;

        if (db.executeUpdate("DeleteInterfaceType", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
