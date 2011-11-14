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

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// Download bao gia...
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Download_Click(object sender, EventArgs e)
    {
        try
        {
            //Lay ve path cua root server
            string RootPath = HttpContext.Current.Server.MapPath("~");
            System.String filename = "tencongty_baogia.xls";

            // set the http content type to "APPLICATION/OCTET-STREAM
            Response.ContentType = "APPLICATION/OCTET-STREAM";

            // initialize the http content-disposition header to
            // indicate a file attachment with the default filename
            // "myFile.txt"
            System.String disHeader = "Attachment; Filename=\"" + filename +
               "\"";
            Response.AppendHeader("Content-Disposition", disHeader);

            // transfer the file byte-by-byte to the response object
            System.IO.FileInfo fileToDownload = new
               System.IO.FileInfo(RootPath + "/files/baogia/" + filename);
            Response.Flush();
            Response.WriteFile(fileToDownload.FullName);
        }
        catch (Exception ex)
        {
            //e.StackTrace;
        }
    }
}
