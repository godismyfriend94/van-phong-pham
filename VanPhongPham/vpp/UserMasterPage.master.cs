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
    static ProductLogic productLogic = new ProductLogic();
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    CategoryLogic categoryLogic = new CategoryLogic();
    //    SubCategoryLogic subCategoryLogic = new SubCategoryLogic();
    //    if (!Page.IsPostBack)
    //    {
    //        CommonDb db = new CommonDb();
    //        //Create the connection and DataAdapter for the Authors table.
    //        SqlConnection cnn = db.OpenConnection();
    //        SqlDataAdapter cmd1 = new SqlDataAdapter("select * from Category", cnn);

    //        //Create and fill the DataSet.
    //        DataSet ds = new DataSet();
    //        cmd1.Fill(ds, "Category");

    //        //Create a second DataAdapter for the Titles table.
    //        SqlDataAdapter cmd2 = new SqlDataAdapter("select * from SubCategory", cnn);
    //        cmd2.Fill(ds, "SubCategory");

    //        //Create the relation bewtween the Authors and Titles tables.
    //        ds.Relations.Add("myrelation",
    //        ds.Tables["Category"].Columns["CategoryId"],
    //        ds.Tables["SubCategory"].Columns["CategoryId"]);
    //        ds.Relations[0].Nested = true;

    //        //Bind the Authors table to the parent Repeater control, and call DataBind.
    //        parentRepeater.DataSource = ds.Tables["Category"];
    //        parentRepeater.DataBind();
    //    }   
    //}

    protected void Page_Load(object sender, EventArgs e)
    {
        CategoryLogic categoryLogic = new CategoryLogic();
        SubCategoryLogic subCategoryLogic = new SubCategoryLogic();
        AdvertiseLogic advertiseLogic = new AdvertiseLogic();
        if (!Page.IsPostBack)
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
            parentRepeater.DataSource = ds.Tables["Category"];
            parentRepeater.DataBind();

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


   
}
