<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="vpp_login" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang đăng nhập</span>
    </div> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
<div class="center_title_bar">Đăng nhập để sử dụng các dịch vụ của chúng tôi</div>
	<div class="prod_box_big">
        	<div class="top_prod_box_big"></div>
            <div class="center_prod_box_big">      
              	<div class="contact_form">
                    
                    <div class="form_row">
                    <label class="contact"><strong>Tài khoản:</strong></label>
                    <input type="text" class="contact_input" />
                    </div>  

                    <div class="form_row">
                    <label class="contact"><strong>Mật khẩu:</strong></label>
                    <input type="text" class="contact_input" />
                    </div>
                    <div class="form_row">
                    <a href="#" class="contact">Đăng nhập</a>
                    
                    </div>      
                    
                </div>                
            </div>
            <div class="bottom_prod_box_big"></div>                                
        </div>
</asp:Content>

