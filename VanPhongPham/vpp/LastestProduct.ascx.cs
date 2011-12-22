using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class vpp_LastestProduct : System.Web.UI.UserControl
{
    LogSystemLogic logSystemLogic = new LogSystemLogic();
    ProductLogic productLogic = new ProductLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DisplayProducts();
        }
    }

    public void DisplayProducts()
    {
        ProductDao productDao = new ProductDao();
        string productId = "";
        try
        {
            productId = Request.QueryString["prodId"].ToString();
        }
        catch (NullReferenceException nex) 
        {
            LogSystem logSystem = new LogSystem("DisplayProducts", "Product", nex.ToString());
            logSystemLogic.InsertLog(logSystem);
        }

        if (productId != null)
        {
            clPager.BindToControl = lstProductLastest;
            clPager.DataSource = productLogic.GetTop18NewProductByViewOption("new").DefaultView;
            lstProductLastest.DataSource = clPager.DataSourcePaged;
            lstProductLastest.DataBind();
        }

        //Hiển thị câu thông báo không có sản phẩm nào
        //if (evu.ReturnDatatable(productLogic.GetTop18NewProductByViewOption("new").Rows.Count == 0))
        //{
        //    lblNoRelatedProduct.Visible = true;
        //}
        //else
        //{
        //    lblNoRelatedProduct.Visible = false;
        //}
    }
}
