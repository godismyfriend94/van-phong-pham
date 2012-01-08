<%@ Page Language="C#" MasterPageFile="~/vpp/UserMasterPage.master" AutoEventWireup="true" CodeFile="productpanel.aspx.cs" Inherits="vpp_productpanel" Title="Untitled Page"  ErrorPage="errorpage.aspx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang danh mục sản phẩm</span>
    </div> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="plhd_Content" Runat="Server">
<div class="center_title_bar">Danh mục chính</div>
<div class="menu_area1">
<asp:DataList ID="lstCategory" runat="server" RepeatColumns="1" Width="540px" >
   <ItemTemplate>
    <a href="subcategory.aspx?cat=<%#Eval("CategoryId")%>" class="ideas">
    <%--<asp:HyperLink ID="hplThongTinQTM" NavigateUrl="subcategory.aspx?cat=<%#Eval("CategoryId")%>" CssClass="ideas" runat="server">--%>
        <img alt="" border="0" src="../images/products/<%#Eval("CategoryImage")%>" class="image"/>
        <%--<asp:Image ID="Image1" CssClass="image" runat="server" ImageUrl="../images/products/<%#Eval("CategoryImage")%>" />--%>
        <%#Eval("CategoryName")%>
        <span class="menu_text">
            <br /><%#Eval("Description")%>
        </span>
    </a>
    <br /><br /><br /><br /><br />
</ItemTemplate>
</asp:DataList>

<p style="text-align:center;color:#990000; margin-top: 25px;"><asp:Label ID="lblNotFoundProduct" runat="server" Text="Không có sản phẩm nào thuộc danh mục này!" Visible="false" Font-Bold="true"></asp:Label></p> 
</div>

</asp:Content>

