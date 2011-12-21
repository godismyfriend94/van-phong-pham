<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LastestProduct.ascx.cs" Inherits="vpp_LastestProduct" %>
<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<div class="center_title_bar">Danh sách sản phẩm trong danh mục</div>
 <asp:DataList ID="lstProductLastest" runat="server" RepeatColumns="3" Width="568px" 
   DataSourceID="SqlDataSource1">
   <ItemTemplate>
       <div class="prod_box">
           <div class="top_prod_box">
           </div>
           <div class="center_prod_box">
               <div class="product_title">
                   <a href="details.aspx">Iphone Apple</a></div>
               <div class="product_img">
                   <a href="details.aspx">
                   <img alt="" border="0" src="images/p4.gif" title="" /></a></div>
               <div class="prod_price">
                   <span class="price">270$</span></div>
           </div>
           <div class="bottom_prod_box">
           </div>
           <div class="prod_details_tab">
               <a href="#" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]">
               <img alt="" border="0" class="left_bt" src="images/cart.gif" title="" /></a>
               <%--<a href="#" title="header=[Ưu đãi khi mua] body=[&nbsp;] fade=[on]">
               <img alt="" border="0" class="left_bt" src="images/favs.gif" title="" /></a>
               <a href="#" title="header=[Tặng phẩm] body=[&nbsp;] fade=[on]">
               <img alt="" border="0" class="left_bt" src="images/favorites.gif" title="" /></a>--%>
               <a href="details.aspx?prodId=<%#Eval("ProductId")%>" class="prod_details" title="header=[Xem chi tiết] body=[&nbsp;] fade=[on]">Xem</a>
           </div>
       </div>
       <br />
   </ItemTemplate>
</asp:DataList>       

<div class="pagination">    
    <cc1:CollectionPager ID="clPager" runat="server" MaxPages="10" PageSize="30"
        LabelText="Trang:" 
        ResultsFormat="Display: {0}-{1} (của {2})" LabelStyle="" 
        ResultsStyle="PADDING-BOTTOM:4px;PADDING-TOP:4px;" >
    </cc1:CollectionPager>

</div>  
    
<%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
   SelectCommand="SELECT * FROM Product">
</asp:SqlDataSource>--%>