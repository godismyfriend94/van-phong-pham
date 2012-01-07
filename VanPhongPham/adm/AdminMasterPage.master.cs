using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Resources;
using System.Globalization;

public partial class view_admin_AdminMasterPage : System.Web.UI.MasterPage
{
    static HttpCookie cookie = new HttpCookie("Language");
    static string lang = "";
    //static int currPending = 0;
    //static int origiPending = 0;
    /// <summary>
    /// Page load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //If not yet logined, back to login.aspx
            CheckLogin();
            //Set calendar
            SetCalendar();
            //Load Exchange rate
            //LoadExchangeRate();
            //currPending = myBill.Rows.Count;
            //origiPending = myBill.Rows.Count;
            try
            {
                if (cookie["Language"] == null)
                {
                    cookie.Expires = DateTime.Now.AddDays(30);
                    cookie["Language"] = "vi-VN";

                    Response.Cookies.Add(cookie);
                }

                cookie = Request.Cookies["Language"];

                lang = cookie["Language"];
            }
            catch (Exception)
            {
                lang = "vi-VN";
            }
        }
    }
    /// <summary>
    /// check login
    /// </summary>
    public void CheckLogin()
    {
        if (Session["user_logined"] == null || Session["user_logined"].ToString() == "")
        {
            Response.Redirect("../vpp/login.aspx");
        }
        else
        {
            TblUser tblUser = (TblUser)Session["user_logined"];
            lblHelloAdmin.Text = tblUser.UserName;
        }
    }
    /// <summary>
    /// Button logout click event
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    public void lbtnLogout_click(object sender, EventArgs e)
    {
        LogOut();
    }

    private void LogOut()
    {
        Session["user_logined"] = null;

        Response.Redirect("../index.aspx");
    }
    /// <summary>
    /// Icon logout click event
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    public void lbtnLogoutIcon_click(object sender, EventArgs e)
    {
        LogOut();
    }
    /// <summary>
    /// load exchange rate
    /// </summary>
    private void LoadExchangeRate()
    {
        //lblDateTimeOfRate.Text = DateTime.Now.ToLongDateString();
        //Exchange exc = new Exchange();

        //lblSellRate.Text = String.Format("{0:0,0}", float.Parse(exc.Sellrate("USD")));
        //lblExchangeRate.Text = String.Format("{0:0,0}", float.Parse(exc.Transferrate("USD")));
        //lblBuyRate.Text = String.Format("{0:0,0}", float.Parse(exc.Buyrate("USD")));
    }
    /// <summary>
    /// set calendar
    /// </summary>
    private void SetCalendar()
    {
        cldCalendar.TodayDayStyle.ForeColor = System.Drawing.Color.Red;
        cldCalendar.SelectedDate = DateTime.Now.Date;
        cldCalendar.SelectedDayStyle.ForeColor = System.Drawing.Color.Green;
        cldCalendar.BackColor = System.Drawing.Color.White;
    }

}
