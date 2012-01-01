using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class vpp_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// Login
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnLoginMyAccount_Click(object sender, EventArgs e)
    {
        TblUser tblUser = null;
        CommonUtil commonUtil = new CommonUtil();
        string username = commonUtil.EscapeInjection(txtUsername.Text);
        string password = commonUtil.EscapeInjection(txtPassword.Text);
        string passMD5 = commonUtil.MD5(password);

        TblUserLogic tblUserLogic = new TblUserLogic();

        tblUser = tblUserLogic.GetUserByUserNameAndPassword(username, passMD5);

        if (tblUser == null)
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), "AZN.com", "<script>alert('Tài khoản và mật khẩu không hợp lệ!')</script>", false);
        }
        else
        {
            Session["user_logined"] = tblUser;
            Response.Redirect("../index.aspx");
        }
    }
}
