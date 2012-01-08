using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Resources;
using System.Globalization;
using System.Data;
using System.Collections;
using System.Data.SqlClient;

public partial class view_user_UserMasterPage : System.Web.UI.MasterPage
{
    static string title = "Văn phòng phẩm - 18 Tô Vĩnh Diện";
    static ProductLogic productLogic = new ProductLogic();
    static TblUser tblUser = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        CategoryLogic categoryLogic = new CategoryLogic();
        SubCategoryLogic subCategoryLogic = new SubCategoryLogic();
        AdvertiseLogic advertiseLogic = new AdvertiseLogic();
        LoadLeftMenu();
        Page.Title = title;
        if (Session["user_logined"] != null && Session["user_logined"].ToString() != "")
        {
            tblUser = (TblUser)Session["user_logined"];
            if (CheckPermission(tblUser.GroupId))
            {
                pnlAdmPanel.Visible = true;
            }
        }
        if (!Page.IsPostBack)
        {
            //bắt đầu khu vực code vùng quảng cáo ----------------------------------
            leftRepeaterAdv.DataSource = advertiseLogic.GetLeftAdvertise();
            leftRepeaterAdv.DataBind();

            righRepeaterAdv.DataSource = advertiseLogic.GetRighAdvertise();
            righRepeaterAdv.DataBind();
            //hết khu vực code vùng quảng cáo ----------------------------------

            if (Session["user_logined"] == null || Session["user_logined"] == "")
            {
                lbtnLogin.Text = "Đăng nhập";
            }
            else
            {
                lbtnLogin.Text = "Thoát";
            }
            //Thống kê truy cập
            StatisticVisit();
        }
    }
    /// <summary>
    /// StatisticVisit
    /// </summary>
    private void StatisticVisit()
    {
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
    /// CheckPermission
    /// </summary>
    /// <param name="groupId"></param>
    /// <returns></returns>
    public bool CheckPermission(string groupId)
    {
        bool isValid = false;

        if(groupId.Equals("g2"))
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

    protected DataView GetChildRelation(object dataItem,
                                  string relation)
    {
        DataRowView drv = dataItem as DataRowView;
        if (drv != null)
            return drv.CreateChildView(relation);
        else
            return null;
    }

    //protected DataView GetChildRelation(object dataItem,
    //                              string relation)
    //{
    //    DataRowView drv = dataItem as DataRowView;
    //    if (drv != null)
    //        return drv.CreateChildView(relation);
    //    else
    //        return null;
    //}
    //[System.Web.Services.WebMethod]
    //[System.Web.Script.Services.ScriptMethod]
    //public static AjaxControlToolkit.Slide[] GetSlides()
    //{
    //    AjaxControlToolkit.Slide[] imgSlide = new AjaxControlToolkit.Slide[5];

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
            Response.Redirect("login.aspx");
        }
        else if (label.Equals("Thoát"))
        {
            LogOut();
        }
        
    }

    private void LogOut()
    {
        Session["user_logined"] = null;

        Response.Redirect("../index.aspx");
    }
}
