<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LastestProduct.ascx.cs" Inherits="vpp_LastestProduct" %>
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
               <a href="details.aspx" class="prod_details" title="header=[Xem chi tiết] body=[&nbsp;] fade=[on]">Xem</a>
           </div>
       </div>
       <br />
   </ItemTemplate>
</asp:DataList>       

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
   SelectCommand="SELECT * FROM Flower">
</asp:SqlDataSource>