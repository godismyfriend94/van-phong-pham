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

public partial class vpp_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //Customer customer = new Customer();

        //customer.UserName = txtUserName.Text.Trim();
        //customer.Password = txtPassword.Text.Trim();
        //customer.FullName = txtFullName.Text.Trim();
        //try
        //{
        //    customer.DateOfBirth = DateTime.Parse(txtDateOfBirth.Text.Trim());
        //}
        //catch (Exception)
        //{
        //    //ScriptManager.RegisterStartupScript(this, typeof(Page), "shopflowers.com", "<script>alert('Birthday is invalid')</script>", false);
        //}

        //if (rbnMaleRegister.Checked)
        //{
        //    customer.Gender = true;
        //}
        //else if (rbnFemaleRegister.Checked)
        //{
        //    customer.Gender = false;
        //}

        //customer.Address = txtAddress.Text.Trim();

        //if (txtPhone.Text == "")
        //{
        //    customer.Phone = "N/A";
        //}
        //else
        //{
        //    customer.Phone = txtPhone.Text.Trim();
        //}

        //customer.Email = txtEmail.Text.Trim();
        //customer.LevelId = 1;

        //if (chbTermCondition.Checked == false)
        //{
        //    ScriptManager.RegisterStartupScript(this, typeof(Page), "shopflowers.com", "<script>alert('You must agree with term & conditions')</script>", false);
        //}
        //else
        //{
        //    CustomerBus custBus = new CustomerBus();
        //    if (custBus.CheckExist(customer.UserName))
        //    {
        //        ScriptManager.RegisterStartupScript(this, typeof(Page), "shopflowers.com", "<script>alert('This user name has existed')</script>", false);
        //    }
        //    else
        //    {
        //        DataTable table = new DataTable();
        //        CustomerBus cusBus = new CustomerBus();
        //        table = cusBus.GetCustomerPasswordByEmail(txtEmail.Text.Trim());
        //        if (table.Rows.Count != 0)
        //        {
        //            ScriptManager.RegisterStartupScript(this, typeof(Page), "shopflowers.com", "<script>alert('This email has used by some one. Input other email.')</script>", false);
        //        }
        //        else
        //        {
        //            string reult = custBus.addCustomer(customer);

        //            ScriptManager.RegisterStartupScript(this, typeof(Page), "shopflowers.com", "<script>alert('" + reult + "')</script>", false);
        //        }
        //    }
        //}
    }
}
