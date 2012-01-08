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
/// Summary description for SupplierLogic
/// </summary>
public class SupplierLogic
{
	SupplierDao supplierDao = new SupplierDao();
	public SupplierLogic()
	{

	}

    /// <summary>
    /// GetAllSupplier - lấy về tất cả Supplier
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllSupplier()
    {
        return supplierDao.GetAllSupplier();
    }

    /// <summary>
    /// GetSupplierById - lấy về Supplier  theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetSupplierById(int id)
    {
        return supplierDao.GetSupplierById(id);
    }
    /// <summary>
    /// InsertSupplier - them thông tin Supplier
    /// </summary>
    /// <param name="Supplier"></param>
    /// <returns></returns>
    public bool InsertSupplier(Supplier Supplier)
    {
        return supplierDao.InsertSupplier(Supplier);
    }

    /// <summary>
    /// UpdateSupplier - sửa thông tin Supplier
    /// </summary>
    /// <param name="Supplier"></param>
    /// <returns></returns>
    public bool UpdateSupplier(Supplier Supplier)
    {
        return supplierDao.UpdateSupplier(Supplier);
    }

    /// <summary>
    /// DeleteSupplier - xoa thông tin Supplier
    /// </summary>
    /// <param name="Supplier"></param>
    /// <returns></returns>
    public bool DeleteSupplier(Supplier Supplier)
    {
        return supplierDao.DeleteSupplier(Supplier);
    }
}
