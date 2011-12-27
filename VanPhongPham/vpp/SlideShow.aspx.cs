﻿using System;
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
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides()
    {
        AjaxControlToolkit.Slide[] imgSlide = new AjaxControlToolkit.Slide[5];

        imgSlide[0] = new AjaxControlToolkit.Slide("../images/products/camera.png", "Camera", "Camera made in China fake 1");
        imgSlide[1] = new AjaxControlToolkit.Slide("../images/products/laptop.png", "laptop", "laptop made in Malaysia , pin 5 cell");
        imgSlide[2] = new AjaxControlToolkit.Slide("../images/products/iphone.png", "iphone", "iphone 4gs white and luxury");
        imgSlide[3] = new AjaxControlToolkit.Slide("../images/products/p2.gif", "HP compac", "HP professional ,14.5 inch");
        imgSlide[4] = new AjaxControlToolkit.Slide("../images/products/p1.gif", "HTC galaxy", "Androi with touch pad and 8 mega pixel");
        return (imgSlide);
    }
}
