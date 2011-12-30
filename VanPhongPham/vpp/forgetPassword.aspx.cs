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
using System.Web.Mail;
using System.Net;

public partial class vpp_forgetPassword : System.Web.UI.Page
{
    TblUserLogic tblUserLogic = new TblUserLogic();
    CommonUtil commonUtil = new CommonUtil();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// btnGetPassword_Click
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnGetPassword_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text.Trim();
        TblUser tblUser = tblUserLogic.GetUserByEmail(email);
        if (tblUser != null)
        {
            string userName = tblUser.UserName;
            string password = tblUser.Password;
            string to = txtEmail.Text.Trim();
            string from = "anztechpro2012@gmail.com";
            string subject = "Văn phòng phẩm Hà Nội xin chào bạn!";
            //string body = @"Your password is: " + cusBus.GetCustomerPasswordByEmail(txtEmail.Text.Trim());
            DataTable table = new DataTable();
            //table = cusBus.GetCustomerPasswordByEmail(txtEmail.Text.Trim());
            string body = @"
            <html>
                <body>
                    <Table>
                        <tr>
                            <td>Hi, we're <a href='localhost/ofd'>FLOWER SHOP</a></td>
                        </tr>
                        <tr>
                            <td>Your account has recovered:.</td>
                        </tr>
                        <tr>
                            <td>User name: " + userName + @"</td>
                        </tr>
                        <tr>
                            <td>Password: " + password + @"</td>
                        </tr>
                    </Table>
                </body>
            </html>
            <html>
                <body>

                </body>
            </html>"
                +
            @"<html>
                <body>
                    <Table>
                        <tr>
                            <td> 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                NOTE: This is an automated mail. Please, do not reply.
                            </td>
                        </tr>" +
                    "<tr><td> </td></tr><tr><td>Regards,</td></tr><tr><td>Thanks for use our service</td></tr></table><img src='http://images3.wikia.nocookie.net/__cb20091205161621/poptarts/images/0/06/Thanks.gif' alt='logopng' width='116' height='100' /></body></html>";

            if (commonUtil.SendMail(from, to, "", "", subject, body))
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "FlowerShop.com", "<script>alert('Mật khẩu đã được gửi vào email của bạn, hãy kiểm tra email!')</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "FlowerShop.com", "<script>alert(Không thể gửi mật khẩu vào hòm thư của bạn')</script>", false);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), "shopflowers.com", "<script>alert('Email không tồn tại trong hệ thống!')</script>", false);
        }
    }
}
