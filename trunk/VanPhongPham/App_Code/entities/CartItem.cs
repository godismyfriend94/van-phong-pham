using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartItem
/// Structure of CartItem
/// </summary>
public class CartItem:IEquatable<CartItem>
{
    private string productId;
    private int quantity;
    private Product product = null;

    public int Quantity
    {
        get { return quantity; }
        set { quantity = value; }
    }
    

    public string ProductId
    {
        get { return productId; }
        set 
        {
            product= null;
            productId = value; 
        }
    }

    
    public Product Product
    {
        get
        {
            if (product == null)
            {
                product = new Product(ProductId);
            }
            return product;
        }
    }

    public string ProductName 
    {
        get { return Product.ProductName;}
    }

    public string Thumbnails
    {
        get { return Product.Thumbnails; }
    }

    public float UnitPrice
    {
        get { return Product.Price - (Product.Price*Product.Promotion / 100); }
    }
    
    public float TotalPrice
    {
        get { return UnitPrice * Quantity; }
    }

    public CartItem(string _productId)
	{
        this.ProductId = _productId;
    }

    public bool Equals(CartItem item)
    {
        return this.ProductId == item.ProductId;
    }
}
