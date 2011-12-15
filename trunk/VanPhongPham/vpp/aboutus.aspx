<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="vpp_aboutus" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">

    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang giới thiệu về chúng tôi</span>
    </div> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">

<div class="center_title_bar_slogan">"Uy tín, Chất lượng, Giá cả, Trình độ kỹ thuật là thế mạnh của Công ty chúng tôi"</div>
        
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
        
       <div class="center_title_bar">Bản đồ trực tuyến</div>
    	<div class="prod_box_big">
        	<div class="top_prod_box_big"></div>
            <div class="center_prod_box_big">      
              	<div class="contact_form_map">
	                  <div id="map" style="height: 525px; width:  525px;"></div>
                </div>             
            </div>
            <div class="bottom_prod_box_big"></div>                                
        </div>
</asp:Content>

