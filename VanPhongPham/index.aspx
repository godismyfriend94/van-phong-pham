<%@ Page Language="C#" MasterPageFile="~/vpp/UserMasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
    <div>
        <asp:Label ID="test" runat="server"></asp:Label>
        <asp:Button runat="server" ID="Download" onclick="Download_Click" Text="Download bao gia"/>
    </div>
</asp:Content>

