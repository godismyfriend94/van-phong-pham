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
/// <summary>
/// Chua cac ham xu ly co ban nhu validate, loai bo sql injection...
/// </summary>
public class CommonUtil
{
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
    public static string EscapeInjection(string str) 
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
    public static string EscapeHTML(string content)
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
    public static string MD5(string sPassword)
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

    public  static  string  generateToken()
    {        
        return  CreateKey(System.Convert.ToInt32(24));              
    }

    private  static  String  CreateKey(int  numBytes)
    {
        RNGCryptoServiceProvider  rng = new  RNGCryptoServiceProvider();
        byte[] buff = new  byte[numBytes];

        rng.GetBytes(buff);
        return  BytesToHexString(buff);
    }

    private static String BytesToHexString(byte[] bytes)
    {
        StringBuilder hexString = new StringBuilder(64);

        for (int counter = 0; counter < bytes.Length; counter++)
        {
            hexString.Append(String.Format("{0:X2}", bytes[counter]));
        }
        return hexString.ToString();
    }
}
