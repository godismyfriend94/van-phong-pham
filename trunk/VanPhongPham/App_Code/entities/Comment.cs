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
/// Summary description for Comment
/// </summary>
public class Comment
{
    int commentId;
    int productId;
    string name;
    string email;
    string content;
    float rate;
    DateTime createDate;
    string statusId;

    public int CommentId
    {
        get { return commentId; }
        set { commentId = value; }
    }

    public int ProductId
    {
        get { return productId; }
        set { productId = value; }
    }

    public string Name
    {
        get { return name; }
        set { name = value; }
    }

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

    public string Content
    {
        get { return content; }
        set { content = value; }
    }

    public float Rate
    {
        get { return rate; }
        set { rate = value; }
    }

    public DateTime CreateDate
    {
        get { return createDate; }
        set { createDate = value; }
    }
    
    public string StatusId
    {
        get { return statusId; }
        set { statusId = value; }
    }	

    public Comment()
	{

	}
}
