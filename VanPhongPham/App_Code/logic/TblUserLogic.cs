﻿using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for TblUserLogic
/// </summary>
/// 

public class TblUserLogic
{
    TblUserDao tblUserDao = new TblUserDao();

    public TblUserLogic()
    {

    }
    /// <summary>
    /// UnlockAccount(string strToken)
    /// </summary>
    /// <param name="strToken"></param>
    /// <returns></returns>
    public bool UnlockAccount(string strToken)
    {
        return tblUserDao.UnlockAccount(strToken);
    }
}
