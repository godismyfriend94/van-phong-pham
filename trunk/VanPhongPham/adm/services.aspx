<%@ Page Language="C#" MasterPageFile="~/adm/AdminMasterPage.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="adm_services" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
<div class="title">
    <span class="title_icon">
        <img src="images/pset.png" alt="" title="" width="24" height="24" />
    </span>
    <asp:Label ID="lblMyCart" runat="server" Text="Quản lý thành viên:"></asp:Label>
</div>
<br /><br />
<div style="clear: both; font-size: 14px;">
    <div class="contact_form">
        <div class="form_subtitle">
            <asp:Label ID="lblCusList" runat="server" Text="Danh sách thành viên"></asp:Label>
        </div>
    </div>
    <br />
    <div class="contact_form">
        <div class="form_subtitle">
            <asp:Label ID="Label1" runat="server" Text="Sửa thông tin thành viên"></asp:Label>
        </div>
    </div>
</div>
</asp:Content>
