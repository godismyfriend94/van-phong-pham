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

public partial class vpp_active_account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //lblMsg.Visible = false;
        //string strToken = Request.QueryString["token"] + "";

        //// check valid token
        //HiepKhach HK = new HiepKhach();
        //if (strToken != "" && HK.UnlockAccount(strToken))
        //{
        //    lblMsg.Text = "Tài khoản đã được kích hoạt thành công. Hãy đăng nhập lại hệ thống.";
        //}
        //else
        //{
        //    lblMsg.Text = "Tài khoản kích hoạt thất bại. Xin hãy liên lạc với admin để được giúp đỡ.";
        //}
    }
}
