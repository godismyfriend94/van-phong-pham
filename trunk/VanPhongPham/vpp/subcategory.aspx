<%@ Page Language="C#" MasterPageFile="~/vpp/UserMasterPage.master" AutoEventWireup="true" CodeFile="subcategory.aspx.cs" Inherits="vpp_subcategory" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang danh danh mục chi tiết</span>
    </div> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="plhd_Content" Runat="Server">
<div class="center_title_bar">Danh mục sản phẩm</div>
<div class="menu_area1">
    <asp:HyperLink ID="hplThongTinQTM" NavigateUrl="products.aspx" CssClass="ideas_subcategory" runat="server">
        <asp:Image ID="Image1" CssClass="image_subcategory" runat="server" ImageUrl="images/Canon ImageCLASS MF4350D.png" />
        Máy photocopy
        <span class="menu_text_subcategory">
            <br />Máy in, máy photocopy, máy scan, máy chấm công, máy hủy tài liệu...
        </span>
    </asp:HyperLink> 
    <br /><br /><br />

    <asp:HyperLink ID="HyperLink1" NavigateUrl="products.aspx" CssClass="ideas_subcategory" runat="server">
        <asp:Image ID="Image2" CssClass="image_subcategory" runat="server" ImageUrl="images/epson-pigment-inktec.jpg" />
        Máy in
        <span class="menu_text_subcategory">
            <br />Mực in màu, mực in laser, mực máy in phun, mực máy in kim...
        </span>
    </asp:HyperLink>
    <br /><br /><br />

    <asp:HyperLink ID="HyperLink2" CssClass="ideas_subcategory" NavigateUrl="products.aspx" runat="server">
        <asp:Image ID="Image7" CssClass="image_subcategory" runat="server" ImageUrl="images/gur1323833816.jpg" />
        Máy Scanner
        <span class="menu_text_subcategory">
            <br />Linh kiện máy để bàn, linh kiện máy xách tay...
        </span>
    </asp:HyperLink>
    <br /><br /><br />
    
    <asp:HyperLink ID="HyperLink3" CssClass="ideas_subcategory" NavigateUrl="products.aspx" runat="server">
        <asp:Image ID="Image3" CssClass="image_subcategory" runat="server" ImageUrl="images/epson-pigment-inktec.jpg" />
        Máy hủy tài liệu
        <span class="menu_text_subcategory">
            <br />Linh kiện máy để bàn, linh kiện máy xách tay...
        </span>
    </asp:HyperLink>
    <br /><br /><br />
    
    <asp:HyperLink ID="HyperLink4" CssClass="ideas_subcategory" NavigateUrl="products.aspx" runat="server">
        <asp:Image ID="Image4" CssClass="image_subcategory" runat="server" ImageUrl="images/Canon ImageCLASS MF4350D.png" />
        Máy chấm công
        <span class="menu_text_subcategory">
            <br />Linh kiện máy để bàn, linh kiện máy xách tay...
        </span>
    </asp:HyperLink>
    <br /><br /><br />
</div>
</asp:Content>

