<%@ Page Language="C#" MasterPageFile="~/vpp/UserMasterPage.master" AutoEventWireup="true" CodeFile="quotes.aspx.cs" Inherits="vpp_quotes" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang báo giá</span>
    </div> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
    <div class="center_title_bar">Danh sách báo giá</div>
	<div class="prod_box_big">
    	<div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">      
          	<div class="contact_form_map">
                  //là danh sách báo giá, có nút download.
            </div>             
        </div>
        <div class="bottom_prod_box_big"></div>                                
    </div>
</asp:Content>
