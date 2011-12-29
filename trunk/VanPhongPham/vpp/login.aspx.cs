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
        CommonUtil commonUtil = new CommonUtil();
        string username = commonUtil.EscapeInjection(txtUsername.Text);
        string password = commonUtil.EscapeInjection(txtPassword.Text);
        string passMD5 = commonUtil.MD5(password);

        TblUserLogic tblUserLogic = new TblUserLogic();

        //if (tblUserLogic.IsValidLogin(username, password))
        //{
        //    lblLoginFail.Visible = false;

        //    HttpCookie cookieRememberMe = new HttpCookie("RememberMe");

        //    Session["username"] = username;

        //    //neu chon check box remember
        //    if (chbRememberMeAcc.Checked == true)
        //    {
        //        //xoa cookie cu
        //        if (Request.Cookies["RememberMe"] != null)
        //        {
        //            cookieRememberMe = new HttpCookie("RememberMe");
        //            cookieRememberMe.Values.Add("UserName", "");
        //            cookieRememberMe.Values.Add("Password", "");
        //            cookieRememberMe.Values.Add("CheckBox", "");
        //            cookieRememberMe.Expires = DateTime.Now.AddDays(30);
        //            Response.Cookies.Add(cookieRememberMe);
        //        }

        //        //luu cookie
        //        cookieRememberMe = new HttpCookie("RememberMe");
        //        cookieRememberMe.Values.Add("UserName", txtUsername.Text.Trim());
        //        cookieRememberMe.Values.Add("Password", txtPassword.Text.Trim());
        //        cookieRememberMe.Values.Add("CheckBox", "True");
        //        cookieRememberMe.Expires = DateTime.Now.AddDays(30);
        //        Response.Cookies.Add(cookieRememberMe);
        //    }
        //    else
        //    {
        //        //delete cookie
        //        if (Request.Cookies["RememberMe"] != null)
        //        {
        //            cookieRememberMe = new HttpCookie("RememberMe");
        //            cookieRememberMe.Values.Add("UserName", txtUsername.Text.Trim());
        //            cookieRememberMe.Values.Add("Password", "");
        //            cookieRememberMe.Values.Add("CheckBox", "");
        //            cookieRememberMe.Expires = DateTime.Now.AddDays(30);
        //            Response.Cookies.Add(cookieRememberMe);
        //        }
        //    }
        //    if (username == "adminadmin")
        //    {
        //        Response.Redirect("../admin/login.aspx");
        //    }
        //    else
        //    {
        //        Response.Redirect(Session["currentpage"].ToString());
        //    }
        //}
        //else
        //{
        //    lblLoginFail.Text = "Invalid username or password !";
        //    lblLoginFail.Visible = true;
        //}
    }
}
