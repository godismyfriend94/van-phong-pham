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

    /*call this webmethod to display top 5 products on banner
         
    
     */

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    public static AjaxControlToolkit.Slide[] GetSlides()
    {
        AjaxControlToolkit.Slide[] imgSlide = new AjaxControlToolkit.Slide[5];

        imgSlide[0] = new AjaxControlToolkit.Slide("images/camera.png", "Camera", "Camera made in China fake 1");
        imgSlide[1] = new AjaxControlToolkit.Slide("images/laptop.png", "laptop", "laptop made in Malaysia , pin 5 cell");
        imgSlide[2] = new AjaxControlToolkit.Slide("images/iphone.png", "iphone", "iphone 4gs white and luxury");
        imgSlide[3] = new AjaxControlToolkit.Slide("images/p2.gif", "HP compac", "HP professional ,14.5 inch");
        imgSlide[4] = new AjaxControlToolkit.Slide("images/p1.gif", "HTC galaxy", "Androi with touch pad and 8 mega pixel");
        return (imgSlide);
    }
}
