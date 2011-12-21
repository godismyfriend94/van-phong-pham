using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ShoppingCart
/// </summary>
public class ShoppingCart
{
    public List<CartItem> Items { get; private set; }

    public static readonly ShoppingCart Instance;
    /// <summary>
    /// Constructor
    /// Check if there isn't Session["ShoppingCart"] then create new Instance
    /// and save information's Product into Session["ShoppingCart"]
    /// else 
    /// </summary>
    
    static ShoppingCart()
	{
        if (HttpContext.Current.Session["ShoppingCart"] == null)
        {
            Instance = new ShoppingCart();
            Instance.Items = new List<CartItem>();
            HttpContext.Current.Session["ShoppingCart"]=Instance;
        }
        else
        {
            Instance = (ShoppingCart)HttpContext.Current.Session["ShoppingCart"];
        }
	}
    /// <summary>
    /// 
    /// </summary>
    protected ShoppingCart() { }
    /// <summary>
    /// Add one Item into Cart
    /// </summary>

    #region for Bouquet
    public void AddItem(string _productId)
    {
        // Creat new a Cartitem
        CartItem newItem = new CartItem(_productId);

        if (Items.Contains(newItem))
        {
            foreach (CartItem item in Items)
            {
                if (item.Equals(newItem))
                {
                    item.Quantity++;
                    return;
                }
            }
        }
        else
        {
            newItem.Quantity = 1;
            Items.Add(newItem);
        }
    }




    /// <summary>
    /// Update quantity to Bouquet Item in Cart
    /// </summary>
    /// <param name="_bouquetId"></param>
    /// <param name="_quantity"></param>
    public void SetItemQuantity(string _productId,int _quantity)
    {
        if (_quantity== 0)
        {
            RemoveItem(_productId);
            return;
        }
        CartItem updateItem = new CartItem(_productId);
        foreach (CartItem item in Items)
        {
            if (item.Equals(updateItem))
            {
                item.Quantity = _quantity;
                return;
            }
        }
    }


    public void RemoveItem(string _productId)
    {
        CartItem removedItem = new CartItem(_productId);
        Items.Remove(removedItem);
    }
    #endregion bouquet
    public float GetSubTotal()
    {
        float subTotal = 0;
        foreach (CartItem item in Items)
            subTotal += item.TotalPrice;

        return subTotal;
    }
}
