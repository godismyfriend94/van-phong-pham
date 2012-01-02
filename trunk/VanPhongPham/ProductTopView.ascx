<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductTopView.ascx.cs" Inherits="vpp_ProductTopView" %>
<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<link href="vpp/css/style.css" rel="stylesheet" type="text/css"/>
<div class="center_title_bar">Sản phẩm xem nhiều nhất</div>
 <asp:DataList ID="lstProductTopView" runat="server" RepeatColumns="3" Width="568px">
   <ItemTemplate>
       <div class="prod_box">
           <div class="top_prod_box">
           </div>
           <div class="center_prod_box">
               <div class="product_title">
                   <a href="vpp/details.aspx?prodId=<%#Eval("ProductId")%>"><%#Eval("ProductName")%></a></div>
               <div class="product_img">
                   <a href="vpp/details.aspx?prodId=<%#Eval("ProductId")%>">
                   <img alt="" border="0" src="images/products/<%#Eval("Thumbnails")%>" title="" width="92" height="92" class="image-product"/></a></div>
               <div class="prod_price">
                   <span class="price"><%#Eval("Price")%> VND</span></div>
           </div>
           <div class="bottom_prod_box">
           </div>
           <div class="prod_details_tab">
                <a href="vpp/shoppingcart.aspx?prodId=<%#Eval("ProductId")%>" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]" class="prod_addtocart">
                    đặt hàng </a>
                <a href="vpp/details.aspx?prodId=<%#Eval("ProductId")%>" class="prod_details" title="header=[Xem chi tiết sản phẩm] body=[&nbsp;] fade=[on]">
                    chi tiết</a>
            </div>
       </div>
       <br />
   </ItemTemplate>
</asp:DataList>       
<p style="text-align:center;color:#990000; margin-top: 25px;"><asp:Label ID="lblNotFoundProduct" runat="server" Text="Không có sản phẩm nào thuộc danh mục này!" Visible="false" Font-Bold="true"></asp:Label></p>                    
<div class="pagination2">
    <cc1:CollectionPager ID="clPager" runat="server" MaxPages="10" PageSize="12"
        LabelText="Trang:" 
        ResultsFormat="Display: {0}-{1} (của {2})" LabelStyle="" 
        ResultsStyle="PADDING-BOTTOM:4px;PADDING-TOP:4px;" >
    </cc1:CollectionPager>
</div> 
