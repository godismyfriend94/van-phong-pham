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
        if (!Page.IsPostBack)
        {
            
        }
    }

}
