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

public partial class vpp_RelatedProduct : System.Web.UI.UserControl
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
        int productId = 0;
        int subCatId = 0;
        Product product = new Product();
        try
        {
            productId = int.Parse(Request.QueryString["prodId"].ToString());
            subCatId = int.Parse(productLogic.GetProductById(productId).Rows[0]["SubCategoryId"].ToString());
        }
        catch (NullReferenceException nex)
        {
            LogSystem logSystem = new LogSystem("DisplayProducts - Related Product", "Product", nex.ToString());
            logSystemLogic.InsertLog(logSystem);
        }

        if (productId != 0)
        {
            clPager.BindToControl = lstProductRelated;
            clPager.DataSource = productLogic.GetProductOfCategory(subCatId).DefaultView;
            lstProductRelated.DataSource = clPager.DataSourcePaged;
            lstProductRelated.DataBind();
        }

        //Hiển thị câu thông báo không có sản phẩm nào
        if (productLogic.GetProductOfCategory(subCatId).Rows.Count == 0)
        {
            lblNotFoundProduct.Visible = true;
        }
        else
        {
            lblNotFoundProduct.Visible = false;
        }
    }
}
