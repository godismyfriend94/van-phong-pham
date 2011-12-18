<%@ Page Language="C#" MasterPageFile="~/vpp/UserMasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="vpp_products" Title="Untitled Page" %>
<%@ Register Src="LastestProduct.ascx" TagPrefix ="usc" TagName="LastestProduct" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang sản phẩm</span>
    </div> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">

<usc:LastestProduct runat="server" ID="uscLastestProduct" />

<div class="center_title_bar">Sản phẩm khác</div>
<div class="prod_box">
    	<div class="top_prod_box"></div>
        <div class="center_prod_box">            
             <div class="product_title"><a href="details.aspx">Motorola 156 MX-VL</a></div>
             <div class="product_img"><a href="details.aspx"><img src="images/laptop.gif" alt="" title="" border="0" /></a></div>
             <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
        </div>
        <div class="bottom_prod_box"></div>             
        <div class="prod_details_tab">
        <a href="#" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
        <a href="#" title="header=[Ưu đãi đặc biệt] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" title="" border="0" class="left_bt" /></a>
        <a href="#" title="header=[Tặng phẩm] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" title="" border="0" class="left_bt" /></a>           
        <a href="details.aspx" class="prod_details" title="header=[Xem chi tiết sản phẩm] body=[&nbsp;] fade=[on]">xem</a>            
        </div>                     
    </div>
    <div class="prod_box">
    	<div class="top_prod_box"></div>
        <div class="center_prod_box">            
             <div class="product_title"><a href="details.aspx">Motorola 156 MX-VL</a></div>
             <div class="product_img"><a href="details.aspx"><img src="images/laptop.gif" alt="" title="" border="0" /></a></div>
             <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
        </div>
        <div class="bottom_prod_box"></div>             
        <div class="prod_details_tab">
        <a href="#" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
        <a href="#" title="header=[Ưu đãi đặc biệt] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" title="" border="0" class="left_bt" /></a>
        <a href="#" title="header=[Tặng phẩm] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" title="" border="0" class="left_bt" /></a>           
        <a href="details.aspx" class="prod_details" title="header=[Xem chi tiết sản phẩm] body=[&nbsp;] fade=[on]">xem</a>            
        </div>                     
    </div>
    <div class="prod_box">
    	<div class="top_prod_box"></div>
        <div class="center_prod_box">            
             <div class="product_title"><a href="details.aspx">Motorola 156 MX-VL</a></div>
             <div class="product_img"><a href="details.aspx"><img src="images/laptop.gif" alt="" title="" border="0" /></a></div>
             <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
        </div>
        <div class="bottom_prod_box"></div>             
        <div class="prod_details_tab">
        <a href="#" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
        <a href="#" title="header=[Ưu đãi đặc biệt] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" title="" border="0" class="left_bt" /></a>
        <a href="#" title="header=[Tặng phẩm] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" title="" border="0" class="left_bt" /></a>           
        <a href="details.aspx" class="prod_details" title="header=[Xem chi tiết sản phẩm] body=[&nbsp;] fade=[on]">xem</a>            
        </div>                     
    </div>
</asp:Content>

