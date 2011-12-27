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

public partial class vpp_TestSlider : System.Web.UI.Page
{
    static ProductLogic productLogic = new ProductLogic();
    protected void Page_Load(object sender, EventArgs e)
    {

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
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            imageURL = "../images/products/" + dt.Rows[i]["Thumbnails"].ToString();
            title = dt.Rows[i]["ProductName"].ToString();
            subDescription = dt.Rows[i]["SubDescription"].ToString();
            imgSlide[i] = new AjaxControlToolkit.Slide(imageURL, title, subDescription);
        }

        return (imgSlide);
    }
}
