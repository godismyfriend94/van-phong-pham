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

public partial class vpp_ProductOfCategory : System.Web.UI.UserControl
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
        int subCategoryId = 0;
        try
        {
            subCategoryId = int.Parse(Request.QueryString["subcat"].ToString());
        }
        catch (NullReferenceException nex)
        {
            LogSystem logSystem = new LogSystem("DisplayProducts - Product of category", "Product", nex.ToString());
            logSystemLogic.InsertLog(logSystem);
        }

        if (subCategoryId != 0)
        {
            clPager.BindToControl = lstProductOfCategory;
            clPager.DataSource = productLogic.GetProductOfCategory(subCategoryId).DefaultView;
            lstProductOfCategory.DataSource = clPager.DataSourcePaged;
            lstProductOfCategory.DataBind();
        }

        //Hiển thị câu thông báo không có sản phẩm nào
        if (productLogic.GetProductOfCategory(subCategoryId).Rows.Count == 0)
        {
            lblNotFoundProduct.Visible = true;
        }
        else
        {
            lblNotFoundProduct.Visible = false;
        }
    }
}
