<%@ Page Language="C#" MasterPageFile="~/vpp/UserMasterPage.master" AutoEventWireup="true" CodeFile="productpanel.aspx.cs" Inherits="vpp_productpanel" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang danh mục sản phẩm</span>
    </div> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="plhd_Content" Runat="Server">
    <div class="menu_area1">
    
    </div>
    <asp:HyperLink ID="hplThongTinQTM" NavigateUrl="products.aspx" CssClass="ideas" runat="server">
        <asp:Image ID="Image1" CssClass="image" runat="server" ImageUrl="images/Canon ImageCLASS MF4350D.png" />
        Thiết bị văn phòng
        <span class="menu_text">
            <br />Máy in, máy photocopy, máy scan, máy chấm công, máy hủy tài liệu...
        </span>
    </asp:HyperLink> 
    <br /><br /><br /><br /><br /><br />

    <asp:HyperLink ID="HyperLink1" NavigateUrl="products.aspx" CssClass="ideas" runat="server">
        <asp:Image ID="Image2" CssClass="image" runat="server" ImageUrl="images/epson-pigment-inktec.jpg" />
        Mực máy in
        <span class="menu_text">
            <br />Mực in màu, mực in laser, mực máy in phun, mực máy in kim...
        </span>
    </asp:HyperLink>
    <br /><br /><br /><br /><br /><br />

    <asp:HyperLink ID="HyperLink2" CssClass="ideas" NavigateUrl="products.aspx" runat="server">
        <asp:Image ID="Image7" CssClass="image" runat="server" ImageUrl="images/gur1323833816.jpg" />
        Linh phụ kiện máy tính
        <span class="menu_text">
            <br />Linh kiện máy để bàn, linh kiện máy xách tay...
        </span>
    </asp:HyperLink>
</div>
</asp:Content>

