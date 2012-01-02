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
    static TblUser tblUser;
    ProductLogic productLogic = new ProductLogic();
    ProductImageLogic productImageLogic = new ProductImageLogic();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ProductDetail();

            if (Session["user_logined"] != null && Session["user_logined"].ToString() != "")
            {
                tblUser = (TblUser)Session["user_logined"];
                if (tblUser != null && CheckPermission(tblUser.GroupId))
                {
                    //ContentPlaceHolder mpContentPlaceHolder;
                    //Panel panel;
                    //mpContentPlaceHolder = (ContentPlaceHolder)Page.FindControl("plhd_Content");
                    //panel = (Panel)mpContentPlaceHolder.FindControl("pnlEditProductPanel");
                    Panel panel = (Panel)dtvDetail.FindControl("pnlEditProductPanel");
                    panel.Visible = true;

                    UpdatePanel upnEditPrice = (UpdatePanel)dtvDetail.FindControl("upnEditPrice");
                    upnEditPrice.Visible = true;
                }
            }
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

    /// <summary>
    /// CheckPermission
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public bool CheckPermission(string groupId)
    {
        bool isValid = false;

        if (groupId.Equals("g2"))
        {
            isValid = true;
        }
        else if (groupId.Equals("g3"))
        {
            isValid = true;
        }
        else if (groupId.Equals("g4"))
        {
            isValid = true;
        }
        else if (groupId.Equals("g5"))
        {
            isValid = true;
        }
        else
        {
            isValid = false;
        }

        return isValid;
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

    /// <summary>
    /// btnSubmitRate_Click
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSubmitRate_Click(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// btnEditPriceToogle_Click
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnEditPriceToogle_Click(object sender, EventArgs e)
    {
        Panel panel = (Panel)dtvDetail.FindControl("pnlEditPrice");
        
        panel.Visible = true;

        //TextBox txtPrice = (TextBox)dtvDetail.FindControl("txtPrice");
        //txtPrice.Text = "123456789";
    }

    /// <summary>
    /// btnEditPrice_Click
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnEditPrice_Click(object sender, EventArgs e)
    {

    }
}
