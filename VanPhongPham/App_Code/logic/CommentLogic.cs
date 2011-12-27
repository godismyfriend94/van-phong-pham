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
/// Summary description for CommentLogic
/// </summary>
/// 

public class CommentLogic
{
    CommentDao commentDao = new CommentDao();
    public CommentLogic()
    {

    }

    /// <summary>
    /// GetAllComment - lấy về tất cả comment
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllComment()
    {
        return commentDao.GetAllComment();
    }

    /// <summary>
    /// GetcommentById - lấy về comment  theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetCommentById(int id)
    {
        return commentDao.GetCommentById(id);
    }
    /// <summary>
    /// Insertcomment - them thông tin comment
    /// </summary>
    /// <param name="comment"></param>
    /// <returns></returns>
    public bool InsertComment(Comment comment)
    {
        return commentDao.InsertComment(comment);
    }

    /// <summary>
    /// Updatecomment - sửa thông tin comment
    /// </summary>
    /// <param name="comment"></param>
    /// <returns></returns>
    public bool UpdateComment(Comment comment)
    {
        return commentDao.UpdateComment(comment);
    }

    /// <summary>
    /// Deletecomment - xoa thông tin comment
    /// </summary>
    /// <param name="comment"></param>
    /// <returns></returns>
    public bool DeleteComment(Comment comment)
    {
        return commentDao.DeleteComment(comment);
    }
}

