﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class vpp_default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides()
    {
        AjaxControlToolkit.Slide[] imgSlide = new AjaxControlToolkit.Slide[4];

        imgSlide[0] = new AjaxControlToolkit.Slide("images/camera.png", "Camera", "Camera made in China fake 1");
        imgSlide[1] = new AjaxControlToolkit.Slide("images/laptop.png", "laptop", "laptop made in Malaysia , pin 5 cell");
        imgSlide[2] = new AjaxControlToolkit.Slide("images/iphone.png", "iphone", "iphone 4gs white and luxury");        
        return (imgSlide);
    }
}