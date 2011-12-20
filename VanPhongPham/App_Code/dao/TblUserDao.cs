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
/// Summary description for TblUser
/// </summary>
/// 

public class TblUserDao
{
    CommonDb db = new CommonDb();
    TblUser tblUser = new TblUser();

    public TblUserDao()
    {

    }

    /// <summary>
    /// GetAllTblUser - lấy về tất cả User
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllTblUser()
    {
        return db.executeSelect("GetAllUser");
    }

    /// <summary>
    /// GetUserById - lấy về user theo id
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetUserById(int userId)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@UserId", SqlDbType.Int);
        paramList[0].Value = userId;

        return db.executeSelect("GetUserById", paramList);
    }

    /// <summary>
    /// GetUserByUserName - lấy về user theo userName
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetUserByUserName(string userName)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@UserName", SqlDbType.NVarChar, 256);
        paramList[0].Value = userName;

        return db.executeSelect("GetUserByUserName", paramList);
    }

    /// <summary>
    /// GetUserByUserName - lấy về user theo userName
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable SearchUserByUserName(string userName)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@UserName", SqlDbType.NVarChar, 256);
        paramList[0].Value = userName;

        return db.executeSelect("SearchUser", paramList);
    }
    /// <summary>
    /// GetUserByEmail - lấy về user theo email
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetUserByEmail(string email)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@Email", SqlDbType.NVarChar, 256);
        paramList[0].Value = email;

        return db.executeSelect("GetUserByEmail", paramList);
    }

    /// <summary>
    /// GetUserByGroup - lấy về user theo groupId
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetUserByGroup(string groupId)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@GroupId", SqlDbType.Int);
        paramList[0].Value = groupId;

        return db.executeSelect("GetUserByGroup", paramList);
    }

    /// <summary>
    /// InsertUser - thêm user
    /// </summary>
    /// <param name="tblUser"></param>
    /// <returns></returns>
    public int InsertUser(TblUser tblUser)
    {
        SqlParameter[] paramList = new SqlParameter[10];

        paramList[0] = new SqlParameter("@GroupId", SqlDbType.NVarChar, 256);
        paramList[0].Value = tblUser.GroupId;

        paramList[1] = new SqlParameter("@UserName", SqlDbType.VarChar, 256);
        paramList[1].Value = tblUser.UserName;

        paramList[2] = new SqlParameter("@Password", SqlDbType.NVarChar, 256);
        paramList[2].Value = tblUser.FullName;

        paramList[3] = new SqlParameter("@FullName", SqlDbType.NVarChar, 256);
        paramList[3].Value = tblUser.Password;

        paramList[4] = new SqlParameter("@DateOfBirth", SqlDbType.DateTime);
        paramList[4].Value = tblUser.DateOfBirth;

        paramList[5] = new SqlParameter("@Gender", SqlDbType.Bit);
        paramList[5].Value = tblUser.Gender;

        paramList[6] = new SqlParameter("@Email", SqlDbType.NVarChar, 256);
        paramList[6].Value = tblUser.Email;

        paramList[7] = new SqlParameter("@Address", SqlDbType.NVarChar, 256);
        paramList[7].Value = tblUser.Address;

        paramList[8] = new SqlParameter("@Phone", SqlDbType.VarChar, 50);
        paramList[8].Value = tblUser.Phone;

        paramList[9] = new SqlParameter("@StatusId", SqlDbType.Int);
        paramList[9].Value = tblUser.StatusId;

        return db.executeUpdate("InsertUser", paramList);
    }

    /// <summary>
    /// UpdateUserById - sửa thông tin user
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool UpdateUserById(TblUser tblUser)
    {
        SqlParameter[] paramList = new SqlParameter[11];

        paramList[0] = new SqlParameter("@UserId", SqlDbType.Int);
        paramList[0].Value = tblUser.UserId;

        paramList[1] = new SqlParameter("@GroupId", SqlDbType.NVarChar, 256);
        paramList[1].Value = tblUser.GroupId;

        paramList[2] = new SqlParameter("@UserName", SqlDbType.VarChar, 256);
        paramList[2].Value = tblUser.UserName;

        paramList[3] = new SqlParameter("@Password", SqlDbType.NVarChar, 256);
        paramList[3].Value = tblUser.Password;

        paramList[4] = new SqlParameter("@FullName", SqlDbType.NVarChar, 256);
        paramList[4].Value = tblUser.FullName;

        paramList[5] = new SqlParameter("@DateOfBirth", SqlDbType.DateTime);
        paramList[5].Value = tblUser.DateOfBirth;

        paramList[6] = new SqlParameter("@Gender", SqlDbType.Bit);
        paramList[6].Value = tblUser.Gender;

        paramList[7] = new SqlParameter("@Email", SqlDbType.NVarChar, 256);
        paramList[7].Value = tblUser.Email;

        paramList[8] = new SqlParameter("@Address", SqlDbType.NVarChar, 256);
        paramList[8].Value = tblUser.Address;

        paramList[9] = new SqlParameter("@Phone", SqlDbType.VarChar, 50);
        paramList[9].Value = tblUser.Phone;

        paramList[10] = new SqlParameter("@StatusId", SqlDbType.Int);
        paramList[10].Value = tblUser.StatusId;

        if (db.executeUpdate("UpdateUserById", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdateUserById - sửa thông tin user
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool UserEditProfile(TblUser tblUser)
    {
        SqlParameter[] paramList = new SqlParameter[7];

        paramList[0] = new SqlParameter("@UserName", SqlDbType.VarChar, 256);
        paramList[0].Value = tblUser.UserName;

        paramList[1] = new SqlParameter("@FullName", SqlDbType.NVarChar, 256);
        paramList[1].Value = tblUser.FullName;

        paramList[2] = new SqlParameter("@DateOfBirth", SqlDbType.DateTime);
        paramList[2].Value = tblUser.DateOfBirth;

        paramList[3] = new SqlParameter("@Gender", SqlDbType.Bit);
        paramList[3].Value = tblUser.Gender;

        paramList[4] = new SqlParameter("@Email", SqlDbType.NVarChar, 256);
        paramList[4].Value = tblUser.Email;

        paramList[5] = new SqlParameter("@Address", SqlDbType.NVarChar, 256);
        paramList[5].Value = tblUser.Address;

        paramList[6] = new SqlParameter("@Phone", SqlDbType.VarChar, 50);
        paramList[6].Value = tblUser.Phone;

        if (db.executeUpdate("EditProfile", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    /// <summary>
    /// ChangePassword - sửa mật khẩu
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool ChangePassword(TblUser tblUser)
    {
        SqlParameter[] paramList = new SqlParameter[2];

        paramList[0] = new SqlParameter("@UserName", SqlDbType.VarChar, 256);
        paramList[0].Value = tblUser.UserName;

        paramList[1] = new SqlParameter("@Password", SqlDbType.NVarChar, 256);
        paramList[1].Value = tblUser.Password;

        if (db.executeUpdate("ChangePassword", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeleteUserById - xóa user
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool DeleteUserById(TblUser tblUser)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@UserId", SqlDbType.Int);
        paramList[0].Value = tblUser.UserId;

        if (db.executeUpdate("DeleteUserById", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    /// <summary>
    /// UnlockAccount(string strToken)
    /// </summary>
    /// <param name="strToken"></param>
    /// <returns></returns>
    public bool UnlockAccount(string strToken)
    {
        //Librarys.iSQLDB DB = new Librarys.iSQLDB();
        //DB.Open();
        //DataTable DBread = DB.getDataTable("SELECT TOP 1 Flg_Token FROM TblUser WHERE (DATEDIFF(minute, JoinDate, getdate()) < 1440) and Fld_Token=@Token", new object[] { "@Token", strToken });
        //DB.Close();
        //if (DBread.Rows.Count > 0)
        //{
        //    return this.updateLock(DBread.Rows[0]["FLD_Token"] + ""); // update account to unlock and clear token
        //}
        return false; // fail        
    }
}
