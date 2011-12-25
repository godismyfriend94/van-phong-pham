﻿<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="vpp_register" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang đăng ký tài khoản</span>
    </div> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
    <div class="center_title_bar">Đăng ký tài khoản mới</div>
	<div class="prod_box_big">
        	<div class="top_prod_box_big"></div>
            <div class="center_prod_box_big">      
              	<div class="contact_form">
                    
                    <div class="form_row">
                    <label class="contact"><strong>Tên:</strong></label>
                    <input type="text" class="contact_input" />
                    </div>  

                    <div class="form_row">
                    <label class="contact"><strong>Email:</strong></label>
                    <input type="text" class="contact_input" />
                    </div>

                    <div class="form_row">
                    <label class="contact"><strong>Điện thoại:</strong></label>
                    <input type="text" class="contact_input" />
                    </div>
                    
                    <div class="form_row">
                    <label class="contact"><strong>Công ty:</strong></label>
                    <input type="text" class="contact_input" />
                    </div>

                    <div class="form_row">
                    <label class="contact"><strong>Nội dung:</strong></label>
                    <textarea class="contact_textarea" cols="25" cols="50"></textarea>
                    </div>

                    
                    <div class="form_row">
                    <a href="#" class="contact">Đăng ký</a>
                    </div>      
                    
                </div>                
            </div>
            <div class="bottom_prod_box_big"></div>                                
        </div>
        
        
    <%--<asp:UpdatePanel runat="server" ID="up1">
        <ContentTemplate>--%>
        <asp:CollapsiblePanelExtender ID="cpeDemo" runat="Server"
            TargetControlID="description_ContentPanel"
            ExpandControlID="description_HeaderPanel"
            CollapseControlID="description_HeaderPanel" 
            Collapsed="True"
            TextLabelID="Label1"

            SuppressPostBack="true"
            SkinID="CollapsiblePanelDemo" />
        <div>
        <asp:Panel ID="description_HeaderPanel" runat="server" style="cursor: pointer;">
            <div class="center_title_bar">
                <asp:Label ID="Label2" Font-Bold="true" runat="server" Text="Điều khoản sử dụng tài khoản"></asp:Label>
             </div>
            <div style="float: left;">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
<%--                <div style="float: right; vertical-align: middle;">
                <asp:ImageButton ID="Image1" runat="server" ImageUrl="images/expand_blue.jpg" AlternateText="(Show Details...)"/>
            </div>--%>
        </asp:Panel>
        </div>
        <div style="float:left;">
        <asp:Panel id="description_ContentPanel" runat="server" style="overflow:hidden;">
            <div class="prod_box_big">
        	<div class="top_prod_box_big"></div>
            <div class="center_prod_box_big">      
          	<div class="contact_form_map">
                <asp:Panel runat="server" ScrollBars="Auto" Width="520">
                    Quy định liên quan đến thành viên Điều 1 : Đăng ký thành viên Thành viên đăng ký tài khoản trong www.vatgia.com là người đã đăng ký tài khoản sử dụng theo các bước quy định của công ty Cổ phần vật giá Việt Nam (Dưới đây viết tắt là công ty), và được công ty chấp nhận sự đăng ký đó. Điều 2 : Bản quy định Tất cả các thành viên khi đăng ký, và sau khi đi đăng ký đều phải tuân thủ những quy định này Điều 3 : Thay đổi quy định Công ty chúng tôi có thể thay đổi quy định theo các chính sách của công ty. Khi có thay đổi, chúng tôi sẽ đăng tải lên www.vatgia.com, và sau khi đăng lên coi như quy định đó có hiệu lực. Sau khi quy định thay đổi, nếu thành viên sử dụng www.vatgia.com thì chúng tôi coi thành viên đã chấp nhận tất cả các quy định mới. Điều 4 : Tư cách thành viên, và các bước đăng ký tài khoản sử dụng Tư cách thành viên :Thành viên sau khi đồng ý quy định này và kết thúc đăng ký tài khoản sử dụng trên www.vatgia.com được coi là thành viên của www.vatgia.com. Thành viên chỉ đăng ký tài khoản sử dụng cho bản thân, không được đăng ký hộ cho người khác. Chúng tôi có thể từ chối việc đăng ký làm thành viên của những thành viên đã từng bị hủy bỏ tư cách thành viên trên www.vatgia.com. Bước đăng ký tài khoản :Thành viên phải đọc rõ các lưu ý, và điền chính xác nội dung thông tin cần thiết vào bản đăng ký mẫu. Điều 5 : Thay đổi thông tin đăng ký Sau khi đăng ký các thành viên có thể thay đổi thông tin đã đăng ký theo các bước đã quy định. Chúng tôi không chịu bất kỳ trách nhiệm gì về những phát sinh liên quan đến việc thay đổi thông tin của các thành viên. Điều 6 : Quản lý tài khoản và mật khẩu Thành viên sau khi đăng ký phải có trách nhiệm tự quản lý tên tài khoản và mật khẩu. Thành viên phải có nghĩa vụ thay đổi mật khẩu định kỳ, công ty chúng tôi không chịu trách nhiệm về những tổn hại phát sinh nếu thành viên mất mật khẩu do không thay đổi. Thành viên phải có trách nhiệm tự bảo quản về tài khoản và mật khẩu của mình, nếu thành viên không quản lý tốt để người thứ ba lấy được thông tin, chúng tôi không chịu trách nhiệm về bất ký những tổn thất phát sinh do việc để mất thông tin trên gây ra. Thành viên không được cho người khác mượn sử dụng, bán, chuyển nhượng lại tài khoản và mật khẩu. Nếu trong một thời gian nhất định chúng tôi thấy rằng tài khoản và mật khẩu của thành viên không được sử dụng, chúng tôi có thể tạm ngưng việc sử dụng tài khoản đó. Trong trường hợp khẩn cấp, chúng tôi có thể xóa tài khoản và mật khẩu của thành viên mà không cần được thành viên chấp thuận. Và chúng tôi cũng không chịu trách nhiệm về sự tổn hại phát sinh từ việc thành viên không quản lý được tài khoản của mình. Điều 7 : Sử dụng thông tin đăng ký Thông tin do các thành viên đăng ký lên www.vatgia.com sẽ thuộc quyền sở hữu của công ty Cổ phần vật giá Việt Nam, được quản lý và sử dụng theo các chính sách về bảo vệ thông tin cá nhân của công ty. Một phần thông tin của các thành viên sẽ được sử dụng làm số liệu thống kê ở mức độ sẽ không phân biệt được từng cá nhân. Trong trường hợp nếu chúng tôi sử dụng thông tin của các thành viên ở mức độ cao hơn thì chúng tôi sẽ thông báo với thành viên đó. Khi thành viên có hành vi gây tổn hại đến các thành viên khác hoặc người thứ ba, chúng tôi có thể cung cấp thông tin cá nhân của thành viên đó cho 
                </asp:Panel>
            </div>
            </div>
            <div class="bottom_prod_box_big"></div>                                
            </div>
        </asp:Panel>
        </div>
        <%--</ContentTemplate> 
        </asp:UpdatePanel>--%>
</asp:Content>
