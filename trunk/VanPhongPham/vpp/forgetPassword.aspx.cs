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
            <?xml version='1.0' encoding='utf-8' ?>
            <html><head><meta http-equiv='Content-Type' content='text/html; charset=UTF-8'/></head>
                <body>
                    <Table>
                        <tr>
                            <td>
                                <p>
                                Công Ty TNHH Kỹ Thuật Và Phát Triển Công Nghệ Hà Nội
                                    18 Tô Vĩnh Diện - Thanh Xuân - Hà Nội
                                Điện thoại: 04-35683040 -35683640- 66732220 </p></td>
                        </tr>
                        <tr>
                            <td>Xin chào bạn!</td>
                        </tr>
                        <tr>
                            <td>Thông tin về tài khoản của bạn như sau: </td>
                        </tr>
                        <tr>
                            <td>Tên tài khoản: " + userName + @"</td>
                        </tr>
                        <tr>
                            <td>Mật khẩu: " + password + @"</td>
                        </tr>
                    </Table>
                </body>
            </html>
            <html>
                <body>

                </body>
            </html>"
                +
            @"
                <?xml version='1.0' encoding='utf-8' ?>
                <html><meta http-equiv='Content-Type' content='text/html; charset=UTF-8'/></head>
                <body>
                    <Table>
                        <tr>
                            <td> 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Lưu ý: đây là thư gửi tự động, làm ơn không trả lời! xin cảm ơn!
                            </td>
                        </tr>" +
                    "<tr><td> </td></tr><tr><td>Kính thư,</td></tr><tr><td>Cảm ơn bạn đã sử dụng các dịch vụ của chúng tôi.</td></tr></table><img src='http://images3.wikia.nocookie.net/__cb20091205161621/poptarts/images/0/06/Thanks.gif' alt='logopng' width='116' height='100' /></body></html>";

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
