<%@ Page Language="C#" MasterPageFile="~/vpp/UserMasterPage.master" AutoEventWireup="true" CodeFile="forgetPassword.aspx.cs" Inherits="vpp_forgetPassword" Title="Untitled Page"  ErrorPage="errorpage.aspx"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang lấy lại mật khẩu</span>
    </div> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
    <div class="center_title_bar">Lấy về mật khẩu qua email</div>
	<div class="prod_box_big">
    	<div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">      
          	<div class="contact_form_map">
                <p class="details">Nhập vào địa chỉ <b>hòm thư bạn đã đăng ký</b>
                    (khi đăng ký tài khoản) và ấn vào nút gửi, mật khẩu tài khoản sẽ được gửi vào hòm thư của bạn.</p>
                <div class="form_row">
                    <label class="contact"></label>
                    <asp:RequiredFieldValidator ControlToValidate="txtEmail" runat="server" Display="Dynamic" 
                        ID="rfvEmail" ErrorMessage="Hãy nhập email" ValidationGroup="group1" >Hãy nhập email
                    </asp:RequiredFieldValidator>
                    <%--<asp:ValidatorCalloutExtender ID="vceEmail" 
                        runat="server" Enabled="True" TargetControlID="rfvEmail">
                    </asp:ValidatorCalloutExtender>--%>
                    <asp:RegularExpressionValidator ID="revEmail" 
                        runat="server" ErrorMessage="Email không hợp lệ" Text="Email không hợp lệ"  Display="Dynamic" 
                        ControlToValidate="txtEmail" SetFocusOnError="true" ValidationGroup="group1" 
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                    </asp:RegularExpressionValidator>
                    <%--<asp:ValidatorCalloutExtender ID="vceEmail2" 
                        runat="server" Enabled="True" TargetControlID="revEmail">
                    </asp:ValidatorCalloutExtender>--%>
                </div>
                <div class="form_row">
                    <label class="contact">
                        <strong>
                            <asp:Label ID="lblEmailcontact_input" runat="server" Text="Email:"></asp:Label>
                        </strong>
                        <asp:Label ID="Label11" runat="server" Text="(*)" ForeColor="Red"></asp:Label>
                    </label>
                    
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="contact_input"></asp:TextBox>
                    
                </div>
                <div class="form_row">
                    <label class="contact">
                    </label>
                    
                    <asp:Label ID="Label1" runat="server" Text="Ví dụ: azn@gmail.com" ForeColor="Gray"></asp:Label>
                    
                </div>
                
                <div class="form_row">
                    <asp:LinkButton ID="btnGetPassword" CssClass="contact" runat="server" Text="Gửi" OnClick="btnGetPassword_Click" ValidationGroup="group1" />
                </div>

            </div>             
        </div>
        <div class="bottom_prod_box_big"></div>                                
    </div>
</asp:Content>

