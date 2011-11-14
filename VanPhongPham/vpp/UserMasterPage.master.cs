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

public partial class view_user_UserMasterPage : System.Web.UI.MasterPage
{
    static ResourceManager resManager;
    static CultureInfo cul;
    static HttpCookie cookie = new HttpCookie("Language");    
    protected void Page_Load(object sender, EventArgs e)
    {
        string lang = "";
        
        if (!Page.IsPostBack)
        {
            if (Session["username"] == null)
            {
                ShoppingCart.Instance.Items.Clear();
                ShoppingGift.Instance.Items.Clear();
                Session["Receiver"] = new List<Receiver>();
            }
            
            try
            {
                if (Request.Cookies["Language"] == null)
                {
                    cookie["Language"] = "en-US";
                    Response.Cookies.Add(cookie);
                    cookie.Expires = DateTime.Now.AddDays(30);
                }

                cookie = Request.Cookies["Language"];
                
                lang = cookie["Language"];

                Thread.CurrentThread.CurrentCulture = new CultureInfo(lang);
                //Load resource us Assembly.Load
                resManager = new ResourceManager("Resources.Default", System.Reflection.Assembly.Load("App_GlobalResources"));
                cul = Thread.CurrentThread.CurrentCulture;

                LoadString(cul);

                SetCurrencySymbol();
                LoadItemsInCart();
            }
            catch (Exception)
            {
                lang = "en-US";
                Thread.CurrentThread.CurrentCulture = new CultureInfo(lang);
                //Load resource us Assembly.Load
                resManager = new ResourceManager("Resources.Default", System.Reflection.Assembly.Load("App_GlobalResources"));
                cul = Thread.CurrentThread.CurrentCulture;

                lbtnVNDSymbol.CssClass = "selected";

                LoadString(cul);

                
            }
            
            //Display occasion list
            LoadOccasion(lang);

            //Display flowers list
            LoadFlowers(lang);

            //Display partner list
            LoadPartners();

            //Display occasion in search dropdownlist
            LoadDllOccasion(lang);

            //Display price search list
            LoadPriceSearchList(lang);

            //Display top 3 promotion bouquet
            LoadPromotionBouquet(lang);
        }
        //else
        //{
        //    //Load resource use Assembly.Load
        //    resManager = new ResourceManager("Resources.Default", System.Reflection.Assembly.Load("App_GlobalResources"));
        //    cul = Thread.CurrentThread.CurrentCulture;

        //    LoadString(cul);
        //}
    }

    private void SetCurrencySymbol()
    {
        if (Session["currentcySymbol"].ToString() == "VND")
        {
            lbtnVNDSymbol.CssClass = "selected";
            lbtnUSDSymbol.CssClass = "";
        }
        else
        {
            lbtnVNDSymbol.CssClass = "";
            lbtnUSDSymbol.CssClass = "selected";
        }
    }

    /// <summary>
    /// Display top 3 promotion bouquet
    /// </summary>
    /// <param name="lang">Language</param>
    private void LoadPromotionBouquet(string lang)
    {
        BouquetBus bouquetBus = new BouquetBus();
        dtlPromotionBouquet.DataSource = bouquetBus.Get3PromotionBouquetByLanguageID(lang);
        dtlPromotionBouquet.DataBind();
    }

    /// <summary>
    /// Load price search list
    /// </summary>
    /// <param name="lang">Language</param>
    private void LoadPriceSearchList(string lang)
    {
        if (lang == "en-US")
        {
            ddlPrice.Items.Add("-- Select a price --");
            ddlPrice.Items.Add("Less than 10 USD");
            ddlPrice.Items.Add("10 USD - 25 USD");
            ddlPrice.Items.Add("25 USD - 35 USD");
            ddlPrice.Items.Add("35 USD - 50 USD");
            ddlPrice.Items.Add("50 USD - 100 USD");
            ddlPrice.Items.Add("More than 100 USD");
        }
        else if (lang == "vi-VN")
        {
            ddlPrice.Items.Add("-- Chọn giá --");
            ddlPrice.Items.Add("Dưới 200.000 VND");
            ddlPrice.Items.Add("200.000 VND - 500.000 VND");
            ddlPrice.Items.Add("500.000 VND - 700.000 VND");
            ddlPrice.Items.Add("700.000 VND - 1.000.000 VND");
            ddlPrice.Items.Add("1.000.000 VND - 2.000.000 VND");
            ddlPrice.Items.Add("Trên 2.000.000 VND");
        }
    }

    /// <summary>
    /// Display occasion in search dropdownlist
    /// </summary>
    /// <param name="lang">Language</param>
    private void LoadDllOccasion(string lang)
    {
        DataTable dtOccasion = new DataTable();

        OccasionBus occasionBus = new OccasionBus();
        dtOccasion = occasionBus.GetOccasionByLanguageID(lang);

        if (lang == "vi-VN")
        {
            ddlOccasion.Items.Add("-- Chọn dịp lễ --");
        }
        else if (lang == "en-US")
        {
            ddlOccasion.Items.Add("-- Select a occasion --");
        }

        for (int i = 0; i < dtOccasion.Rows.Count; i++)
        {
            ddlOccasion.Items.Add(dtOccasion.Rows[i][1].ToString());
        }
    }

    /// <summary>
    /// Display occasion list
    /// </summary>
    /// <param name="lang">Language</param>
    private void LoadOccasion(string lang)
    {
        OccasionBus occasionBus = new OccasionBus();
        dtlOccasionList.DataSource = occasionBus.GetOccasionByLanguageID(lang);
        dtlOccasionList.DataBind();
    }

    /// <summary>
    /// Display flowers list
    /// </summary>
    /// <param name="lang">Language</param>
    private void LoadFlowers(string lang)
    {
        FlowerBus flowerBus = new FlowerBus();
        dtlFlowersList.DataSource = flowerBus.GetFlowerByLanguageID(lang);
        dtlFlowersList.DataBind();
    }

    /// <summary>
    /// Display partner list
    /// </summary>
    private void LoadPartners()
    {
        PartnerBus partnerBus = new PartnerBus();
        dtlPartnerList.DataSource = partnerBus.GetAllPartner();
        dtlPartnerList.DataBind();
    }

    /// <summary>
    /// Set VietNam language for webpage when VietNam icon clicked
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void ibtnVietNam_Click(object sender, ImageClickEventArgs e)
    {
        //Set expire for cookie
        cookie.Expires = DateTime.Now.AddDays(30);
        cookie["Language"] = "vi-VN";

        //Update cookie
        Response.Cookies.Add(cookie);

        
        //Refresh language
        Response.Redirect(Session["currentPage"].ToString());
    }
    /// <summary>
    /// Set VietNam language for webpage when English icon clicked
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void ibtnEnglish_Click(object sender, ImageClickEventArgs e)
    {
        //Set expire for cookie
        cookie.Expires = DateTime.Now.AddDays(30);
        cookie["Language"] = "en-US";

        //Update cookie
        Response.Cookies.Add(cookie);
        //Refresh language
        Response.Redirect(Session["currentPage"].ToString());
    }

    /// <summary>
    /// Load string from resource.resx and set text for controls
    /// </summary>
    /// <param name="ci">culture info through language</param>
    private void LoadString(CultureInfo ci)
    {
        lblHomeMenu.Text = resManager.GetString("lblHomeMenu", ci);
        lblAboutMenu.Text = resManager.GetString("lblAboutMenu",ci);
        lblFlowerMenu.Text = resManager.GetString("lblFlowerMenu", ci);
        lblAccountMenu.Text = resManager.GetString("lblAccountMenu",ci);
        lblRegisterMenu.Text = resManager.GetString("lblRegisterMenu",ci);
        lblContactMenu.Text = resManager.GetString("lblContactMenu",ci);
        lblGiftMenu.Text = resManager.GetString("lblGiftMenu", ci);
        lblLanguageSymbol.Text = resManager.GetString("lblLanguageSymbol",ci);
        lblCurrencySymbol.Text = resManager.GetString("lblCurrencySymbol",ci);
        lblCartSymbol.Text = resManager.GetString("lblCartSymbol",ci);
        lblItem.Text = resManager.GetString("lblItem",ci);
        lblTotal.Text = resManager.GetString("lblTotal",ci);
        //lblViewCart.Text = resManager.GetString("lblViewCart",ci);
        lblAboutShop.Text = resManager.GetString("lblAboutShop",ci);
        lblAboutContent.Text = resManager.GetString("lblAboutContent",ci);
        lblPromotionRightMenu.Text = resManager.GetString("lblPromotionRightMenu",ci);
        lblBouquetRightMenu.Text = resManager.GetString("lblBouquetRightMenu", ci);
        lblFlowerRightMenu.Text = resManager.GetString("lblFlowerRightMenu", ci);
        lblPartnerRightMenu.Text = resManager.GetString("lblPartnerRightMenu", ci);
        lblHomeFooter.Text = resManager.GetString("lblHomeFooter", ci);
        lblAboutFooter.Text = resManager.GetString("lblAboutFooter", ci);
        lblPolicyFooter.Text = resManager.GetString("lblPolicyFooter", ci);
        lblContactFooter.Text = resManager.GetString("lblContactFooter", ci);
        lblCartTitlePanel.Text = resManager.GetString("lblCartTitlePanel", ci);
        lblChat.Text = resManager.GetString("lblChat", ci);
        lblTechnician1.Text = resManager.GetString("lblTechnician", ci);
        lblTechnician2.Text = resManager.GetString("lblTechnician", ci);
        ibtnEnglish.ToolTip = resManager.GetString("tooltipLanguage", ci);
        ibtnVietNam.ToolTip = resManager.GetString("tooltipLanguage", ci);
        lblAdvanceSearch.Text = resManager.GetString("lblAdvanceSearch", ci);
        lblPrice.Text = resManager.GetString("lblPrice", ci);
        lblOccasion.Text = resManager.GetString("lblOccasion", ci);
    }
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnVNDSymbol_Click(object sender, EventArgs e)
    {
        lbtnVNDSymbol.CssClass = "selected";
        lbtnUSDSymbol.CssClass = "";

        Session["currentcySymbol"] = "VND";

        Response.Redirect(Session["currentPage"].ToString());
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnUSDSymbol_Click(object sender, EventArgs e)
    {
        lbtnVNDSymbol.CssClass = "";
        lbtnUSDSymbol.CssClass = "selected";

        Session["currentcySymbol"] = "USD";

        Response.Redirect(Session["currentPage"].ToString());
    }

    //search
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //search by price and occasion
        if (ddlPrice.SelectedIndex != 0 && ddlOccasion.SelectedIndex != 0)
        {
            OccasionBus occasionBus = new OccasionBus();

            string occasionID = "" + occasionBus.GetOccasionIDByName(ddlOccasion.Text);

            if (ddlPrice.SelectedIndex == 1)
            {
                Response.Redirect("searchresult.aspx?price1=0&price2=10&OccasionID=" + occasionID);
            }
            else if (ddlPrice.SelectedIndex == 2)
            {
                Response.Redirect("searchresult.aspx?price1=10&price2=25&OccasionID=" + occasionID);
            }
            else if (ddlPrice.SelectedIndex == 3)
            {
                Response.Redirect("searchresult.aspx?price1=25&price2=35&OccasionID=" + occasionID);
            }
            else if (ddlPrice.SelectedIndex == 4)
            {
                Response.Redirect("searchresult.aspx?price1=35&price2=50&OccasionID=" + occasionID);
            }
            else if (ddlPrice.SelectedIndex == 5)
            {
                Response.Redirect("searchresult.aspx?price1=50&price2=100&OccasionID=" + occasionID);
            }
            else if (ddlPrice.SelectedIndex == 6)
            {
                Response.Redirect("searchresult.aspx?price1=100&OccasionID=" + occasionID);
            }
        }
        //search by price only
        else if (ddlPrice.SelectedIndex != 0 && ddlOccasion.SelectedIndex == 0)
        {
            if (ddlPrice.SelectedIndex == 1)
            {
                Response.Redirect("searchresult.aspx?price1=0&price2=10");
            }
            else if (ddlPrice.SelectedIndex == 2)
            {
                Response.Redirect("searchresult.aspx?price1=10&price2=25");
            }
            else if (ddlPrice.SelectedIndex == 3)
            {
                Response.Redirect("searchresult.aspx?price1=25&price2=35");
            }
            else if (ddlPrice.SelectedIndex == 4)
            {
                Response.Redirect("searchresult.aspx?price1=35&price2=50");
            }
            else if (ddlPrice.SelectedIndex == 5)
            {
                Response.Redirect("searchresult.aspx?price1=50&price2=100");
            }
            else if (ddlPrice.SelectedIndex == 6)
            {
                Response.Redirect("searchresult.aspx?price1=100");
            }
        }
        //search by occasion only
        else if (ddlPrice.SelectedIndex == 0 && ddlOccasion.SelectedIndex != 0)
        {
            //tu chon occasion menu dc roi
        }
        //khong search dung nghich
        else
        {
            Response.Redirect("bouquet.aspx");
        }
    }

    //Logout
    protected void imgbtnLogout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;

        Response.Redirect("home.aspx");
    }

    /// <summary>
    /// Load Items(Bouquet and Gift In Basket)
    /// </summary>
    public void LoadItemsInCart()
    {
        if (ShoppingCart.Instance.Items.Count > 0)
        {
            lblItemQuantity.Text=(ShoppingCart.Instance.Items.Count).ToString();
            lblCost.Text = ShoppingCart.Instance.GetSubTotal().ToString();

            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("BouquetID",typeof(string));
            dt.Columns.Add("Price",typeof(string));
            dt.Columns.Add("Quantity",typeof(int));

            for(int i=0;i<ShoppingCart.Instance.Items.Count;i++)
            {
                dr = dt.NewRow();
                dr["BouquetID"] = ShoppingCart.Instance.Items[i].ProductId;
                dr["Price"] = " $ "+ShoppingCart.Instance.Items[i].UnitPrice;
                dr["Quantity"] = ShoppingCart.Instance.Items[i].Quantity;
                dt.Rows.Add(dr);
            }
            grvCartBouquet.DataSource = dt;
            grvCartBouquet.DataBind();
            lblMasterTotal.Text =" $ "+ShoppingCart.Instance.GetSubTotal().ToString();
        }
        //else if ((ShoppingCart.Instance.Items.Count > 0) && (ShoppingGift.Instance.Items.Count < 0))
        //{ 
        //    lblItemQuantity.Text=ShoppingCart.Instance.Items.Count.ToString();
        //}
        //else if ((ShoppingCart.Instance.Items.Count < 0) && (ShoppingGift.Instance.Items.Count > 0))
        //{
        //    lblItemQuantity.Text = ShoppingGift.Instance.Items.Count.ToString();
        //}
        else
        {
            lblItemQuantity.Text = "0";
            lblCost.Text = "0";
        }
        //lblCost.Text = (ShoppingCart.Instance.GetSubTotal() + ShoppingGift.Instance.GetSubTotal()).ToString();
    
    }
}
