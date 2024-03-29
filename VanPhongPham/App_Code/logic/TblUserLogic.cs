﻿using System;
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
/// Summary description for TblUserLogic
/// </summary>
/// 

public class TblUserLogic
{
    TblUserDao tblUserDao = new TblUserDao();

    public TblUserLogic()
    {

    }
    /// <summary>
    /// UnlockAccount(string strToken)
    /// </summary>
    /// <param name="strToken"></param>
    /// <returns></returns>
    public bool UnlockAccount(string strToken)
    {
        return tblUserDao.UnlockAccount(strToken);
    }

    /// <summary>
    /// GetAllTblUser - lấy về tất cả User
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllTblUser()
    {
        return tblUserDao.GetAllTblUser();
    }

    /// <summary>
    /// GetUserById - lấy về user theo id
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetUserById(int userId)
    {
        return tblUserDao.GetUserById(userId);
    }

    /// <summary>
    /// GetUserByUserName - lấy về user theo userName
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetUserByUserName(string userName)
    {
        return tblUserDao.GetUserByUserName(userName);
    }

    /// <summary>
    /// GetUserByUserName - lấy về user theo userName
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable SearchUserByUserName(string userName)
    {
        return tblUserDao.SearchUserByUserName(userName);
    }

    /// <summary>
    /// GetUserByUserNameAndPassword
    /// </summary>
    /// <param name="userName"></param>
    /// <param name="password"></param>
    /// <returns></returns>
    public TblUser GetUserByUserNameAndPassword(string userName, string password)
    {
        DataTable dt = tblUserDao.GetUserByUserNameAndPassword(userName, password);
        TblUser tblUser = null;

        if (dt.Rows.Count > 0)
        {
            tblUser = new TblUser();
            tblUser.GroupId = dt.Rows[0]["GroupId"].ToString();
            tblUser.UserName = dt.Rows[0]["UserName"].ToString();
            tblUser.Password = dt.Rows[0]["Password"].ToString();
            tblUser.FullName = dt.Rows[0]["FullName"].ToString();
            tblUser.DateOfBirth = DateTime.Parse(dt.Rows[0]["DateOfBirth"].ToString());
            tblUser.Gender = Boolean.Parse(dt.Rows[0]["Gender"].ToString());
            tblUser.Email = dt.Rows[0]["Email"].ToString();
            tblUser.Address = dt.Rows[0]["Address"].ToString();
            tblUser.JoinDate = DateTime.Parse(dt.Rows[0]["JoinDate"].ToString());
            tblUser.RegisterCode = dt.Rows[0]["RegisterCode"].ToString();
            tblUser.StatusId = dt.Rows[0]["StatusId"].ToString();
        }
        return tblUser;
    }
    /// <summary>
    /// GetUserByEmail - lấy về user theo email
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public TblUser GetUserByEmail(string email)
    {
        DataTable dt = tblUserDao.GetUserByEmail(email);

        TblUser tblUser = null;

        if (dt.Rows.Count > 0)
        {
            tblUser = new TblUser();
            tblUser.GroupId = dt.Rows[0]["GroupId"].ToString();
            tblUser.UserName = dt.Rows[0]["UserName"].ToString();
            tblUser.Password = dt.Rows[0]["Password"].ToString();
            tblUser.FullName = dt.Rows[0]["FullName"].ToString();
            tblUser.DateOfBirth = DateTime.Parse(dt.Rows[0]["DateOfBirth"].ToString());
            tblUser.Gender = Boolean.Parse(dt.Rows[0]["Gender"].ToString());
            tblUser.Email = dt.Rows[0]["Email"].ToString();
            tblUser.Address = dt.Rows[0]["Address"].ToString();
            tblUser.JoinDate = DateTime.Parse(dt.Rows[0]["JoinDate"].ToString());
            tblUser.RegisterCode = dt.Rows[0]["RegisterCode"].ToString();
            tblUser.StatusId = dt.Rows[0]["StatusId"].ToString();
        }
        return tblUser;
    }

    /// <summary>
    /// GetUserByGroup - lấy về user theo groupId
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public DataTable GetUserByGroup(string groupId)
    {
        return tblUserDao.GetUserByGroup(groupId);
    }

    /// <summary>
    /// InsertUser - thêm user
    /// </summary>
    /// <param name="tblUser"></param>
    /// <returns></returns>
    public int InsertUser(TblUser tblUser)
    {
        return tblUserDao.InsertUser(tblUser);
    }

    /// <summary>
    /// UpdateUserById - sửa thông tin user
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool UpdateUserById(TblUser tblUser)
    {
        return tblUserDao.UpdateUserById(tblUser);
    }

    /// <summary>
    /// UpdateUserById - sửa thông tin user
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool UserEditProfile(TblUser tblUser)
    {
        return tblUserDao.UserEditProfile(tblUser);
    }
    /// <summary>
    /// ChangePassword - sửa mật khẩu
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool ChangePassword(TblUser tblUser)
    {
        return tblUserDao.ChangePassword(tblUser);
    }

    /// <summary>
    /// DeleteUserById - xóa user
    /// </summary>
    /// <param name="emp"></param>
    /// <returns></returns>
    public bool DeleteUserById(TblUser tblUser)
    {
        return tblUserDao.DeleteUserById(tblUser);
    }
}
