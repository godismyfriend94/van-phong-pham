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
using System.Text;
using System.Security.Cryptography;
using System.Web.Mail;
using System.Net;
/// <summary>
/// Chua cac ham xu ly co ban nhu validate, loai bo sql injection...
/// </summary>
public class CommonUtil
{
    LogSystemLogic logSystemLogic = new LogSystemLogic();
    /// <summary>
    /// CommonUtil - default constructor
    /// </summary>
	public CommonUtil()
	{
        //do nothing
	}

    /// <summary>
    /// EscapeInjection - loai bo loi SQL Injection
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public string EscapeInjection(string str) 
    {
        try
        {
            str = str.Replace("\\", "\\\\");
        	str = str.Replace("'", "\\'");
            str = str.Replace("%", "\\%");
            return str;
        }
        catch (Exception e)
        {
            return str;
        }
    }

    /// <summary>
    /// Escape special chars html
    /// </summary>
    /// <param name="content"></param>
    /// <returns></returns>
    public string EscapeHTML(string content)
    {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < content.ToCharArray().Length; i++)
        {
            char c = content[i];

            switch (c)
            {
                case '<':
                    sb.Append("&lt;");
                    break;
                case '>':
                    sb.Append("&gt;");
                    break;
                case '&':
                    sb.Append("&amp;");
                    break;
                case '"':
                    sb.Append("&quot;");
                    break;
                case '\'': sb.Append("&apos;"); break;
                default: break;
                    sb.Append(c);
            }
        }
        content = sb.ToString();
        return content;
    }

    /// <summary>
    /// MD5
    /// </summary>
    /// <param name="sPassword"></param>
    /// <returns></returns>
    public string MD5(string sPassword)
    {
        System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
        byte[] bs = System.Text.Encoding.UTF8.GetBytes(sPassword);
        bs = x.ComputeHash(bs);
        System.Text.StringBuilder s = new System.Text.StringBuilder();
        foreach (byte b in bs)
        {
            s.Append(b.ToString("x2").ToLower());
        }
        return s.ToString();
    }
    /// <summary>
    /// CreateKey
    /// </summary>
    /// <returns></returns>
    public string  generateToken()
    {        
        return  CreateKey(System.Convert.ToInt32(24));              
    }
    /// <summary>
    /// CreateKey
    /// </summary>
    /// <param name="numBytes"></param>
    /// <returns></returns>
    private string  CreateKey(int  numBytes)
    {
        RNGCryptoServiceProvider  rng = new  RNGCryptoServiceProvider();
        byte[] buff = new  byte[numBytes];

        rng.GetBytes(buff);
        return  BytesToHexString(buff);
    }
    /// <summary>
    /// BytesToHexString
    /// </summary>
    /// <param name="bytes"></param>
    /// <returns></returns>
    private static string BytesToHexString(byte[] bytes)
    {
        StringBuilder hexString = new StringBuilder(64);

        for (int counter = 0; counter < bytes.Length; counter++)
        {
            hexString.Append(String.Format("{0:X2}", bytes[counter]));
        }
        return hexString.ToString();
    }

    /// <summary>
    /// SendMail
    /// </summary>
    /// <param name="from"></param>
    /// <param name="to"></param>
    /// <param name="cc"></param>
    /// <param name="bcc"></param>
    /// <param name="subject"></param>
    /// <param name="body"></param>
    /// <returns></returns>
    public bool SendMail(string from, string to, string cc, string bcc, string subject, string body, string strFileName)
    {
        //Mail initialization 
        MailMessage mail = new MailMessage();
        mail.From = from;
        mail.To = to;
        mail.Cc = cc;
        mail.Bcc = bcc;
        mail.Subject = subject;
        mail.BodyFormat = MailFormat.Html;
        mail.Body = body;
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        try
        {
            //Lay ve path cua root server
            string RootPath = HttpContext.Current.Server.MapPath("~");
            strFileName = RootPath+ "/files/baogia/tencongty_baogia.xls";

            MailAttachment attach = new MailAttachment(strFileName);
            mail.Attachments.Add(attach);
        }catch(Exception ex)
        {
            LogSystem logSystem = new LogSystem("Load file attachment", "Common Util", ex.ToString());
            logSystemLogic.InsertLog(logSystem);
        }

        // Smtp configuration
        SmtpMail.SmtpServer = "smtp.gmail.com";
        // - smtp.gmail.com use smtp authentication
        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1");
        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "anztechpro2012@gmail.com");
        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "anz13579");
        // - smtp.gmail.com use port 465 or 587
        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", "465");
        // - smtp.gmail.com use STARTTLS (some clients call this SSL)
        mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", "true");
        // Mail sending
        try
        {
            SmtpMail.Send(mail);
            return true;
        }
        catch (Exception ex)
        {
            LogSystem logSystem = new LogSystem("Send email", "Common Util", ex.ToString());
            logSystemLogic.InsertLog(logSystem);
            return false;
        }
    }
}
