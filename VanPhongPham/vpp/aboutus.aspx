<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="vpp_aboutus" Title="Untitled Page"  ErrorPage="errorpage.aspx"%>

<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script type="text/javascript">
	    function initialize() {
		    var latlng = new google.maps.LatLng(21.000353,105.821975);
		    var settings = {
			    zoom: 15,
			    center: latlng,
			    mapTypeControl: true,
			    mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
			    navigationControl: true,
			    navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
			    mapTypeId: google.maps.MapTypeId.ROADMAP};
		    var map = new google.maps.Map(document.getElementById("map"), settings);
		    var contentString = '<div id="content">'+
			    '<div id="siteNotice">'+
			    '</div>'+
			    '<h3 id="firstHeading" class="firstHeading">Công Ty TNHH Kỹ Thuật Và Phát Triển Công Nghệ Hà Nội</h3>'+
			    '<div id="bodyContent">'+
			    '<p class="main_office"><br/>(Trụ sở chính)<br/></p>'+
                '<p class="info_office"><b>Địa chỉ:<b/> 18 Tô Vĩnh Diện - Hà Nội</p>'+
                '<p class="info_office"><br/><b>Tel:<b/> 04-66732220 / 0913583121</p>'+
			    '</div>'+
			    '</div>';
		    var infowindow = new google.maps.InfoWindow({
			    content: contentString
		    });
			
		    var companyImage = new google.maps.MarkerImage('images/marker.png',
			    new google.maps.Size(32,32),
			    new google.maps.Point(0,0),
			    new google.maps.Point(25,32)
		    );

		    var companyShadow = new google.maps.MarkerImage('images/logo_shadow.png',
			    new google.maps.Size(32,32),
			    new google.maps.Point(0,0),
			    new google.maps.Point(25, 32));

		    var companyPos = new google.maps.LatLng(21.000353,105.821975);

		    var companyMarker = new google.maps.Marker({
			    position: companyPos,
			    map: map,
			    icon: companyImage,
			    shadow: companyShadow,
			    title:"Công Ty TNHH Kỹ Thuật Và Phát Triển Công Nghệ Hà Nội",
			    zIndex: 3});
//		    google.maps.event.addListener(companyMarker, 'click', function() {
//			    infowindow.open(map,companyMarker);
//		    });
                infowindow.open(map,companyMarker);
	    }
    </script>
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

