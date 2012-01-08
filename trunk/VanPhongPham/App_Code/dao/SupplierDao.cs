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
/// Summary description for SupplierDao
/// </summary>
public class SupplierDao
{
	CommonDb db = new CommonDb();
    Supplier Supplier = new Supplier();

	public SupplierDao()
	{
	}

    /// <summary>
    /// GetAllSupplier - lấy về tất cả Supplier
    /// </summary>
    /// <returns></returns>
    public DataTable GetAllSupplier()
    {
        return db.executeSelect("GetAllSupplier");
    }

    /// <summary>
    /// GetSupplierById - lấy về Supplier  theo id
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public DataTable GetSupplierById(int id)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@SupplierId", SqlDbType.Int);
        paramList[0].Value = id;

        return db.executeSelect("GetSupplierById", paramList);
    }
    /// <summary>
    /// InsertSupplier - them thông tin Supplier
    /// </summary>
    /// <param name="Supplier"></param>
    /// <returns></returns>
    public bool InsertSupplier(Supplier Supplier)
    {
        SqlParameter[] paramList = new SqlParameter[4];

        paramList[0] = new SqlParameter("@SupplierName", SqlDbType.NVarChar, 256);
        paramList[0].Value = Supplier.SupplierName;

        paramList[1] = new SqlParameter("@SupplierLink", SqlDbType.NVarChar, 256);
        paramList[1].Value = Supplier.SupplierLink;

        paramList[2] = new SqlParameter("@SupplierImage", SqlDbType.NVarChar, 256);
        paramList[2].Value = Supplier.SupplierImage;

        paramList[3] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[3].Value = Supplier.StatusId;

        if (db.executeUpdate("InsertSupplier", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// UpdateSupplier - sửa thông tin Supplier
    /// </summary>
    /// <param name="Supplier"></param>
    /// <returns></returns>
    public bool UpdateSupplier(Supplier Supplier)
    {
        SqlParameter[] paramList = new SqlParameter[5];

        paramList[0] = new SqlParameter("@SupplierId", SqlDbType.Int);
        paramList[0].Value = Supplier.SupplierId;

        paramList[1] = new SqlParameter("@SupplierName", SqlDbType.NVarChar, 256);
        paramList[1].Value = Supplier.SupplierName;

        paramList[2] = new SqlParameter("@SupplierLink", SqlDbType.NVarChar, 256);
        paramList[2].Value = Supplier.SupplierLink;

        paramList[3] = new SqlParameter("@SupplierImage", SqlDbType.NVarChar, 256);
        paramList[3].Value = Supplier.SupplierImage;

        paramList[4] = new SqlParameter("@StatusId", SqlDbType.NVarChar, 256);
        paramList[4].Value = Supplier.StatusId;

        if (db.executeUpdate("UpdateSupplier", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    /// <summary>
    /// DeleteSupplier - xoa thông tin Supplier
    /// </summary>
    /// <param name="Supplier"></param>
    /// <returns></returns>
    public bool DeleteSupplier(Supplier Supplier)
    {
        SqlParameter[] paramList = new SqlParameter[1];

        paramList[0] = new SqlParameter("@SupplierId", SqlDbType.Int);
        paramList[0].Value = Supplier.SupplierId;

        if (db.executeUpdate("DeleteSupplier", paramList) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
