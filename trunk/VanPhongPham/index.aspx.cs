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
    static ProductLogic productLogic = new ProductLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        AdvertiseLogic advertiseLogic = new AdvertiseLogic();
        if (!Page.IsPostBack)
        {
            //khu vực code vùng quảng cáo
            leftRepeaterAdv.DataSource = advertiseLogic.GetLeftAdvertise();
            leftRepeaterAdv.DataBind();

            righRepeaterAdv.DataSource = advertiseLogic.GetRighAdvertise();
            righRepeaterAdv.DataBind();
        }
    }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides()
    {
        AjaxControlToolkit.Slide[] imgSlide = new AjaxControlToolkit.Slide[5];
        string imageURL;
        string title;
        string subDescription;
        DataTable dt = productLogic.GetProductForSlide("slide");
        for (int i = 0; i < dt.Rows.Count; i++ )
        {
            imageURL = "images/products/"+dt.Rows[i]["Thumbnails"].ToString();
            title = dt.Rows[i]["ProductName"].ToString();
            subDescription = dt.Rows[i]["SubDescription"].ToString();
            imgSlide[i] = new AjaxControlToolkit.Slide(imageURL, title, subDescription);
        }
        
        return (imgSlide);
    }

    /// <summary>
    /// Download bao gia...
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void DownloadQuote_Click(object sender, EventArgs e)
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
