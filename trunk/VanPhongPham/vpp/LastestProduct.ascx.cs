using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class vpp_LastestProduct : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DisplayProducts();
        }
    }

    public void DisplayProducts()
    {
        //ProductDao productDao = new ProductDao();
        //string productId = "";
        //try
        //{
        //    productId = Request.QueryString["prodId"].ToString();
        //}
        //catch (NullReferenceException nex) { }
        //if (productId != null)
        //{
        //    clPager.BindToControl = lstProductLastest;
        //    clPager.DataSource = bouquetBus.relateBouquet(lang, Request.QueryString["prodId"].ToString()), currencySymbol).DefaultView;
        //    dtlRelateBouquet.DataSource = clPager.DataSourcePaged;
        //    dtlRelateBouquet.DataBind();
        //}

        //if (evu.ReturnDatatable(bouquetBus.relateBouquet(lang, Request.QueryString["prodId"].ToString()), currencySymbol).Rows.Count == 0)
        //{
        //    lblNoRelatedProduct.Visible = true;
        //}
        //else
        //{
        //    lblNoRelatedProduct.Visible = false;
        //}
    }
}
