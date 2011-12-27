using System;
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
/// Summary description for PolicyLogic
/// </summary>
/// 

public class PolicyLogic
{
    PolicyDao policyDao = new PolicyDao();
    public PolicyLogic()
    {

    }

    /// <summary>
    /// GetAllPolicy - lấy về tất cả policy
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllPolicy()
    {
        return policyDao.GetAllPolicy();
    }

    /// <summary>
    /// GetPolicyById - lấy về policyBy theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetPolicyById(int id)
    {
        return policyDao.GetPolicyById(id);
    }
    /// <summary>
    /// Insertpolicy - them thông tin policy
    /// </summary>
    /// <param name="policy"></param>
    /// <returns></returns>
    public bool InsertPolicy(Policy policy)
    {
        return policyDao.InsertPolicy(policy);
    }

    /// <summary>
    /// Updatepolicy - sửa thông tin policy
    /// </summary>
    /// <param name="policy"></param>
    /// <returns></returns>
    public bool UpdatePolicy(Policy policy)
    {
        return policyDao.UpdatePolicy(policy);
    }

    /// <summary>
    /// DeletePolicy - xoa thông tin policy
    /// </summary>
    /// <param name="policy"></param>
    /// <returns></returns>
    public bool DeletePolicy(Policy policy)
    {
        return policyDao.DeletePolicy(policy);
    }
}
