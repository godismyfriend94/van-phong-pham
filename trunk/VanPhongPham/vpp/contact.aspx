<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="vpp_contact" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang liên hệ</span>
    </div> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
    <div class="center_title_bar">Liên hệ với chúng tôi theo địa chỉ</div>
    
    	<div class="prod_box_big">
        	<div class="top_prod_box_big"></div>
            <div class="center_prod_box_big">      
              	<div class="contact_form">
                    
                    <%--div class="form_row">--%>
            
                    <h3 style="color: Navy">
                    
                        Công Ty TNHH Kỹ Thuật Và Phát Triển Công Nghệ Hà Nội 18 Tô Vĩnh Diện - Thanh Xuân - Hà Nội
                        <br /><br />
                        TEL: 04-35683040 -35683640- 66732220 - 22397999
                        <br /><br />
                        Hotline: Mr Hưởng  0913.583.121  
                        <br />
                        Website: www.hanoitech.vn.
                    
                    </h3>
          
                   <%-- </div>  --%>
                </div>                  
            </div>
            <div class="bottom_prod_box_big"></div>                                
        </div>
        
        <div class="center_title_bar">Liên hệ trực tiếp</div>
    
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
                    <textarea class="contact_textarea" cols="25" rows="25"></textarea>
                    </div>

                    
                    <div class="form_row">
                    <a href="#" class="contact">Gửi</a>
                    </div>      
                    
                </div>                
            </div>
            <div class="bottom_prod_box_big"></div>                                
        </div>
</asp:Content>

