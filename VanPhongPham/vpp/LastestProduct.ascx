<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LastestProduct.ascx.cs" Inherits="vpp_LastestProduct" %>
<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<div class="center_title_bar">Danh sách sản phẩm trong danh mục</div>
 <asp:DataList ID="lstProductLastest" runat="server" RepeatColumns="3" Width="568px" 
   >
   <ItemTemplate>
       <div class="prod_box">
           <div class="top_prod_box">
           </div>
           <div class="center_prod_box">
               <div class="product_title">
                   <a href="details.aspx?prodId=<%#Eval("ProductId")%>"><%#Eval("ProductName")%></a></div>
               <div class="product_img">
                   <a href="details.aspx?prodId=<%#Eval("ProductId")%>">
                   <img alt="" border="0" src="images/<%#Eval("Thumbnails")%>" title="" width="92" height="92" class="image-product"/></a></div>
               <div class="prod_price">
                   <span class="price"><%#Eval("Price")%> VND</span></div>
           </div>
           <div class="bottom_prod_box">
           </div>
           <div class="prod_details_tab">
                <a href="shoppingcart.aspx?prodId=<%#Eval("ProductId")%>" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]" class="prod_addtocart">
                    đặt hàng </a>
                <a href="details.aspx?prodId=<%#Eval("ProductId")%>" class="prod_details" title="header=[Xem chi tiết sản phẩm] body=[&nbsp;] fade=[on]">
                    chi tiết</a>
            </div>
       </div>
       <br />
   </ItemTemplate>
</asp:DataList>       

<div class="pagination">
    <cc1:CollectionPager ID="clPager" runat="server" MaxPages="10" PageSize="18"
        LabelText="Trang:" 
        ResultsFormat="Display: {0}-{1} (của {2})" LabelStyle="" 
        ResultsStyle="PADDING-BOTTOM:4px;PADDING-TOP:4px;" >
    </cc1:CollectionPager>

</div>  
    
<%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
   SelectCommand="SELECT * FROM Product">
</asp:SqlDataSource>--%>