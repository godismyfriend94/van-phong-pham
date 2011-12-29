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
              	<div class="contact_form_map">
                    <div class="form_row">
                        <center><asp:Label ID="lblLoginFail" runat="server" Visible="False" Font-Bold="True" 
                        Font-Italic="True" ForeColor="Red"></asp:Label></center>
                    </div>
                    <p style="font-size: 14px; color: Green;">Hãy nhập tên tài khoản và mật khẩu</p>
                    
                    <div class="form_row">
                        <label class="contact"><strong>Tài khoản: </strong>
                            <asp:Label ID="Label11" runat="server" Text="(*)" ForeColor="Red"></asp:Label>
                        </label>
                        
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="contact_input"></asp:TextBox>
                    </div>  

                    <div class="form_row">
                        <label class="contact"><strong>Mật khẩu: </strong>
                            <asp:Label ID="Label1" runat="server" Text="(*)" ForeColor="Red"></asp:Label>
                        </label>
                        
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="contact_input" 
                        TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form_row">
                        <label class="contact"></label>
                        <a href="forgetPassword.aspx">
                            <asp:Label ID="txtForgetPassword" runat="server" Text="Bạn đã quên mật khẩu ?"></asp:Label>
                        </a>
                    </div>      
                    <div class="form_row">
                        <asp:LinkButton ID="LinkButton1" CssClass="contact" runat="server" Text="Đăng nhập" OnClick="btnLoginMyAccount_Click" />
                    </div>
                </div>                
            </div>
            <div class="bottom_prod_box_big"></div>                                
        </div>
</asp:Content>

