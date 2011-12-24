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

public partial class vpp_subcategory : System.Web.UI.Page
{
    LogSystemLogic logSystemLogic = new LogSystemLogic();
    SubCategoryLogic subCategoryLogic = new SubCategoryLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DisplayProducts();
        }
    }

    public void DisplayProducts()
    {
        int catId = 0;
        try
        {
            catId = int.Parse(Request.QueryString["cat"].ToString());
        }
        catch (NullReferenceException nex)
        {
            LogSystem logSystem = new LogSystem("DisplaySubcategory - sub of category", "Subcategory", nex.ToString());
            logSystemLogic.InsertLog(logSystem);
        }
        if (catId != 0)
        {
            lstSubCategory.DataSource = subCategoryLogic.GetSubCategoryByCategoryId(catId).DefaultView;
            lstSubCategory.DataBind();
        }
        
        //Hiển thị câu thông báo không có sản phẩm nào
        if (subCategoryLogic.GetSubCategoryByCategoryId(catId).Rows.Count == 0)
        {
            lblNotFoundProduct.Visible = true;
        }
        else
        {
            lblNotFoundProduct.Visible = false;
        }
    }
}
