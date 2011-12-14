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
/// Summary description for Comment
/// </summary>
/// 

public class CommentDao
{
    CommonDb db = new CommonDb();
    public CommentDao()
    {

    }

    /// <summary>
    /// GetAllComment - lấy về tất cả comment
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllComment()
    {
        return db.executeSelect("GetAllComment");
    }

    /// <summary>
    /// GetcommentById - lấy về comment  theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetCommentById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@CommentId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetCommentById", paramList);
    }
    /// <summary>
    /// Insertcomment - them thông tin comment
    /// </summary>
    /// <param name="comment"></param>
    /// <returns></returns>
    public bool InsertComment(Comment comment)
    {
        SqlParameter[] paramList = new SqlParameter[6];

        paramList[0] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[0].Value = comment.ProductId;

        paramList[1] = new SqlParameter("@CommentName", SqlDbType.NVarChar, 512);
        paramList[1].Value = comment.CommentName;

        paramList[2] = new SqlParameter("@Email", SqlDbType.NVarChar, 256);
        paramList[2].Value = comment.Email;

        paramList[3] = new SqlParameter("@CommentContent", SqlDbType.NVarChar, 256);
        paramList[3].Value = comment.CommentContent;

        paramList[4] = new SqlParameter("@Rate", SqlDbType.Float);
        paramList[4].Value = comment.Rate;

        paramList[5] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[5].Value = comment.StatusId;

        if (db.executeUpdate("InsertComment", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// Updatecomment - sửa thông tin comment
    /// </summary>
    /// <param name="comment"></param>
    /// <returns></returns>
    public bool UpdateComment(Comment comment)
    {
        SqlParameter[] paramList = new SqlParameter[7];

        paramList[0] = new SqlParameter("@CommentId", SqlDbType.Int);
        paramList[0].Value = comment.CommentId;

        paramList[1] = new SqlParameter("@ProductId", SqlDbType.Int);
        paramList[1].Value = comment.ProductId;

        paramList[2] = new SqlParameter("@CommentName", SqlDbType.NVarChar, 512);
        paramList[2].Value = comment.CommentName;

        paramList[3] = new SqlParameter("@Email", SqlDbType.NVarChar, 256);
        paramList[3].Value = comment.Email;

        paramList[4] = new SqlParameter("@CommentContent", SqlDbType.NVarChar, 256);
        paramList[4].Value = comment.CommentContent;

        paramList[5] = new SqlParameter("@Rate", SqlDbType.Float);
        paramList[5].Value = comment.Rate;

        paramList[6] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[6].Value = comment.StatusId;

        if (db.executeUpdate("UpdateComment", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// Deletecomment - xoa thông tin comment
    /// </summary>
    /// <param name="comment"></param>
    /// <returns></returns>
    public bool DeleteComment(Comment comment)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@CommentId", SqlDbType.Int);
        paramList[0].Value = comment.CommentId;

        if (db.executeUpdate("DeleteComment", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}

