﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Resources;
using System.Globalization;
using AjaxControlToolkit;

public partial class vpp_details : System.Web.UI.Page
{
    static int productId;
    ProductLogic productLogic = new ProductLogic();
    ProductImageLogic productImageLogic = new ProductImageLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ProductDetail();
        }
    }

    private void ProductDetail()
    {
        productId = int.Parse(Request.QueryString["prodId"].ToString());

        dtvDetail.DataSource = productLogic.GetProductById(productId);
        dtvDetail.DataBind();

        Repeater rptComposition = (Repeater)dtvDetail.FindControl("rptComposition");
        rptComposition.DataSource = productImageLogic.GetProductImageByProductId(productId);
        rptComposition.DataBind();
    }

    protected void productRating_Changed(object sender, RatingEventArgs e)
    {
        //Thread.Sleep(400);
        //e.CallbackResult = "Update done. Value = " + e.Value + " Tag = " + e.Tag;

        string howSpicy = "";

        switch (productRating.CurrentRating)
        {
            case 1:
                howSpicy = "Không tốt";
                lblResponse.ForeColor = System.Drawing.Color.Red;
                break;
            case 2:
                howSpicy = "Bình thường";
                lblResponse.ForeColor = System.Drawing.Color.BlueViolet;
                break;
            case 3:
                howSpicy = "Tốt";
                lblResponse.ForeColor = System.Drawing.Color.Blue;
                break;
            case 4:
                howSpicy = "Rất tốt";
                lblResponse.ForeColor = System.Drawing.Color.Green;
                break;
            case 5:
                howSpicy = "Hoàn hảo";
                lblResponse.ForeColor = System.Drawing.Color.OrangeRed;

                break;
        }

        lblResponse.Text = "<b>" + howSpicy + "</b>";
    }


    protected void btnSubmitRate_Click(object sender, EventArgs e)
    {

    }
}
