<%@ Page Language="C#" MasterPageFile="~/vpp/UserMasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="vpp_products" Title="Untitled Page" %>
<%@ Register Src="LastestProduct.ascx" TagPrefix ="usc" TagName="LastestProduct" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang sản phẩm</span>
    </div> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
<usc:LastestProduct runat="server" ID="uscLastestProduct" />
</asp:Content>

