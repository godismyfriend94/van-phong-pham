using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Resources;
using System.Globalization;
using AjaxControlToolkit;

public partial class vpp_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void productRating_Changed(object sender, RatingEventArgs e)
    {
        //Thread.Sleep(400);
        //e.CallbackResult = "Update done. Value = " + e.Value + " Tag = " + e.Tag;

        string howSpicy = "";

        switch (productRating.CurrentRating)
        {
            case 1:
                howSpicy = "Not like";
                lblResponse.ForeColor = System.Drawing.Color.Red;
                break;
            case 2:
                howSpicy = "Like a bit";
                lblResponse.ForeColor = System.Drawing.Color.BlueViolet;
                break;
            case 3:
                howSpicy = "Like";
                lblResponse.ForeColor = System.Drawing.Color.Blue;
                break;
            case 4:
                howSpicy = "Very like";
                lblResponse.ForeColor = System.Drawing.Color.Green;
                break;
            case 5:
                howSpicy = "Perfect";
                lblResponse.ForeColor = System.Drawing.Color.Gold;
                break;
        }

        lblResponse.Text = "<b>" + howSpicy + "</b>";
    }
}
