﻿<%@ Page Language="C#" MasterPageFile="~/vpp/UserMasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="vpp_products" Title="Untitled Page"  ErrorPage="errorpage.aspx"%>
<%@ Register Src="ProductOfCategory.ascx" TagPrefix ="usc" TagName="ProductOfCategory" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang sản phẩm</span>
    </div> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">

<usc:ProductOfCategory runat="server" ID="uscProductOfCategory" />


</asp:Content>

