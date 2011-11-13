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
}
