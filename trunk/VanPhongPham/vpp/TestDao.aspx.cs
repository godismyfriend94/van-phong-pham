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
using dao;
using dao.impl;
public partial class vpp_TestDao : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MstGroupDaoImpl mstGroupDaoImpl = new MstGroupDaoImpl();

        RepositoryDaoImpl<MstGroup> respo = new RepositoryDaoImpl<MstGroup>();


        label1.Text = respo.SelectByPK<MstGroup>("g1").ToString();
    }
}
