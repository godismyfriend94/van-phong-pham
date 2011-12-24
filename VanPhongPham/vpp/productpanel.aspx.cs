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

public partial class vpp_productpanel : System.Web.UI.Page
{
    LogSystemLogic logSystemLogic = new LogSystemLogic();
    CategoryLogic categoryLogic = new CategoryLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DisplayProducts();
        }
    }

    public void DisplayProducts()
    {
        lstCategory.DataSource = categoryLogic.GetAllCategory().DefaultView;
        lstCategory.DataBind();
        //Hiển thị câu thông báo không có sản phẩm nào
        if (categoryLogic.GetAllCategory().Rows.Count == 0)
        {
            lblNotFoundProduct.Visible = true;
        }
        else
        {
            lblNotFoundProduct.Visible = false;
        }
    }
}
