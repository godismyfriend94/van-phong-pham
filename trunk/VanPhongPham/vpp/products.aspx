<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="vpp_products" Title="Untitled Page" %>
<%@ Register Src="LastestProduct.ascx" TagPrefix ="usc" TagName="LastestProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
<usc:LastestProduct runat="server" ID="uscLastestProduct" />
</asp:Content>

