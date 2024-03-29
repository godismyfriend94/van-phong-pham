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
using System.Data.SqlClient;

public partial class index : System.Web.UI.Page
{
    static string title = "Văn phòng phẩm - 18 Tô Vĩnh Diện";
    LogSystemLogic logSystemLogic = new LogSystemLogic();
    CategoryLogic categoryLogic = new CategoryLogic();
    static ProductLogic productLogic = new ProductLogic();
    static TblUser tblUser = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        AdvertiseLogic advertiseLogic = new AdvertiseLogic();
        LoadLeftMenu();
        if (!Page.IsPostBack)
        {
            DisplayCategorySlide();
            Page.Title = title;
            if (Session["user_logined"] != null && Session["user_logined"].ToString() != "")
            {
                tblUser = (TblUser)Session["user_logined"];
                if (tblUser.GroupId == "g5")
                {
                    pnlAdmPanel.Visible = true;
                }
            }
            
            
            //khu vực code vùng quảng cáo
            leftRepeaterAdv.DataSource = advertiseLogic.GetLeftAdvertise();
            leftRepeaterAdv.DataBind();

            righRepeaterAdv.DataSource = advertiseLogic.GetRighAdvertise();
            righRepeaterAdv.DataBind();
            //============================================

            //============================================
            if (Session["user_logined"] == null || Session["user_logined"] == "")
            {
                lbtnLogin.Text = "Đăng nhập";
            }
            else
            {
                lbtnLogin.Text = "Thoát";
            }
            //thống kê truy cập
            StatisticVisit();
            //hỗ trợ trực tuyến
            SupporterList();
            //Hãng sản xuất
            SupplierList();
        }
    }
    /// <summary>
    /// SupporterList
    /// </summary>
    public void SupporterList()
    {
        SupportLogic supportLogic = new SupportLogic();

        DataTable dt = supportLogic.GetAllSupport();
        
        //Hiển thị câu thông báo không có sản phẩm nào
        if (dt.Rows.Count != 0)
        {
            pnl_supporter.Visible = true;
            lstSupporter.DataSource = dt;
            lstSupporter.DataBind();
        }
        else
        {
            pnl_supporter.Visible = false;
        }
    }
    /// <summary>
    /// SupplierList
    /// </summary>
    public void SupplierList()
    {
        SupplierLogic supplierLogic = new SupplierLogic();

        DataTable dt = supplierLogic.GetAllSupplier();

        //Hiển thị câu thông báo không có item nào
        if (dt.Rows.Count != 0)
        {
            pnl_supplier.Visible = true;
            dtl_supplier.DataSource = dt;
            dtl_supplier.DataBind();
        }
        else
        {
            pnl_supplier.Visible = false;
        }
    }
    /// <summary>
    /// DisplayCategorySlide
    /// </summary>
    public void DisplayCategorySlide()
    {
        lstCategory.DataSource = categoryLogic.GetAllCategory().DefaultView;
        lstCategory.DataBind();
        //Hiển thị câu thông báo không có sản phẩm nào
        if (categoryLogic.GetAllCategory().Rows.Count != 0)
        {
            pnl_category_slide.Visible = true;
        }
        else
        {
            pnl_category_slide.Visible = false;
        }
    }
    /// <summary>
    /// StatisticVisit
    /// </summary>
    private void StatisticVisit()
    {
        string dangtruycap;
        string datruycap;
        dangtruycap = Application["DangTruyCap"].ToString();
        lblDangTruyCap.Text = dangtruycap;
        datruycap = Application["DaTruyCap"].ToString();
        lblDaTruyCap.Text = datruycap;
    }
    /// <summary>
    /// LoadLeftMenu
    /// </summary>
    private void LoadLeftMenu()
    {
        CommonDb db = new CommonDb();
        //Create the connection and DataAdapter for the Authors table.
        SqlConnection cnn = db.OpenConnection();

        SqlDataAdapter cmd1 = new SqlDataAdapter("select * from Category", cnn);

        //Create and fill the DataSet.
        DataSet ds = new DataSet();
        cmd1.Fill(ds, "Category");

        //Create a second DataAdapter for the Titles table.
        SqlDataAdapter cmd2 = new SqlDataAdapter("select * from SubCategory", cnn);
        cmd2.Fill(ds, "SubCategory");

        //Create the relation bewtween the Authors and Titles tables.

        ds.Relations.Add("myrelation",
        ds.Tables["Category"].Columns["CategoryId"],
        ds.Tables["SubCategory"].Columns["CategoryId"]);
        ds.Relations[0].Nested = true;

        //Bind the Authors table to the parent Repeater control, and call DataBind.
        parentRepeater.DataSource = ds.Tables[0];
        parentRepeater.DataBind();
    }
    /// <summary>
    /// GetChildRelation
    /// </summary>
    /// <param name="dataItem"></param>
    /// <param name="relation"></param>
    /// <returns></returns>
    protected DataView GetChildRelation(object dataItem,
                                  string relation)
    {
        DataRowView drv = dataItem as DataRowView;
        if (drv != null)
            return drv.CreateChildView(relation);
        else
            return null;
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

    /// <summary>
    /// lbtnLogin_Click
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    public void lbtnLogin_Click(object sender, EventArgs e)
    {
        string label = lbtnLogin.Text;

        if (label.Equals("Đăng nhập"))
        {
            Response.Redirect("vpp/login.aspx");
        }
        else if (label.Equals("Thoát"))
        {
            LogOut();
        }

    }
    /// <summary>
    /// LogOut
    /// </summary>
    private void LogOut()
    {
        Session["user_logined"] = null;

        Response.Redirect("index.aspx");
    }
}
