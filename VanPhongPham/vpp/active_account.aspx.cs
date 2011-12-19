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

public partial class vpp_active_account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public bool UnlockAccount(string strToken)
    {
        Librarys.iSQLDB DB = new Librarys.iSQLDB();
        DB.Open();
        DataTable DBread = DB.getDataTable("SELECT TOP 1 FLD_ID FROM TBL_ACCOUNT WHERE (DATEDIFF(minute, FLD_REGTIME, getdate()) < 1440) and FLD_Token=@Token", new object[] { "@Token", strToken });
        DB.Close();
        if (DBread.Rows.Count > 0)
        {
            return this.updateLock(DBread.Rows[0]["FLD_ID"] + ""); // update account to unlock and clear token
        }
        return false; // fail        
    }
}
