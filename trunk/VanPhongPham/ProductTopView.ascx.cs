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

public partial class vpp_ProductTopView : System.Web.UI.UserControl
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

        clPager.BindToControl = lstProductTopView;
        clPager.DataSource = productLogic.GetTopView12Product().DefaultView;
        lstProductTopView.DataSource = clPager.DataSourcePaged;
        lstProductTopView.DataBind();

        //Hiển thị câu thông báo không có sản phẩm nào
        if (productLogic.GetTopView12Product().Rows.Count == 0)
        {
            lblNotFoundProduct.Visible = true;
        }
        else
        {
            lblNotFoundProduct.Visible = false;
        }
    }
}
