<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index"
    Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="FlashControl" Namespace="Bewise.Web.UI.WebControls" TagPrefix="Bewise" %>
<%@ Register Src="LastestProduct.ascx" TagPrefix ="usc" TagName="LastestProduct" %>
<%@ Register Src="ProductTopView.ascx" TagPrefix ="usc" TagName="ProductTopView" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="index, vanphongpham" />
    <meta name="keywords" content="hanoitechpro, thiet bi van phong, thiết bị văn phòng
        máy in, may in, may photocopy, máy photocopy, do muc may in, đổ mực máy in,
        18 tô vĩnh diện, 18 to vinh dien, hộp mực máy in, hop muc may in,
        sửa chữa máy in, sua chua may in, lắp đặt máy văn phòng, lap dat may van phong" />
    <!--thẻ meta description rất quan trọng khi chia sẻ qua thư, các trang chia sẻ sẽ lấy giá trị
        trong thuộc tính content để gắn vào nội dung thư chia sẻ.-->
    <meta name="description" content="
        Công Ty TNHH Kỹ Thuật Và Phát Triển Công Nghệ Hà Nội
        18 Tô Vĩnh Diện - Thanh Xuân - Hà Nội.
        
        Chuyên cung cấp thiết bị văn phòng - chất lượng cao như: máy in, máy photocopy, máy fax, máy chấm công, máy hủy tài liệu, máy scan, mực máy in...
        Trung tâm cung cấp các dịch vụ về lắp đặt, sửa chữa, bảo trì thiết bị văn phòng tại công ty, tại nhà...
        
        Điện thoại: 04-35683040 -35683640- 66732220
        Hotline: Mr Hưởng 0913.583.121  
        " />
    <link rel="SHORTCUT ICON" href="vpp/images/iconHNTechPro.png" />
    <link rel="stylesheet" type="text/css" href="vpp/css/iecss.css" />
    <link rel="stylesheet" href="vpp/css/style.css" type="text/css" media="screen" />

    <script type="text/javascript" src="vpp/js/boxOver.js"></script>

    <script type="text/javascript" src="vpp/js/jquery-1.3.2.min.js"></script>

    <script type="text/javascript" src="vpp/js/adv_float.js"></script>
      
    <link href="vpp/css/fMenu.css" rel="stylesheet" type="text/css" />
    <!--Begin doan javascript xu ly cho left menu-->

    <script type="text/javascript">
        $(document).ready(function() {
            $('dd:not(:first)').hide();
            $('dt a').click(function() {
                $('dd:visible').slideUp('slow');
                $('.active').removeClass('active');
                $(this).parent().addClass('active').next().slideDown('slow');
                return false;
            });

            $('dd a').click(function() {
                $('.actived').removeClass('actived');
                $(this).parent().addClass('actived');
                return true;
            });
        });
    </script>
    
    <%--<script type="text/javascript">

    $(document).ready(function() {		
    	
	    //Execute the slideShow
	    slideShow();

    });

    function slideShow() {

	    //Set the opacity of all images to 0
	    $('#gallery a').css({opacity: 0.0});
    	
	    //Get the first image and display it (set it to full opacity)
	    $('#gallery a:first').css({opacity: 1.0});
    	
	    //Set the caption background to semi-transparent
	    $('#gallery .caption').css({opacity: 0.7});

	    //Resize the width of the caption according to the image width
	    $('#gallery .caption').css({width: $('#gallery a').find('img').css('width')});
    	
	    //Get the caption of the first image from REL attribute and display it
	    $('#gallery .content').html($('#gallery a:first').find('img').attr('rel'))
	    .animate({opacity: 0.7}, 400);
    	
	    //Call the gallery function to run the slideshow, 6000 = change to next image after 6 seconds
	    setInterval('gallery()',6000);
    	
    }

    function gallery() {
    	
	    //if no IMGs have the show class, grab the first image
	    var current = ($('#gallery a.show')?  $('#gallery a.show') : $('#gallery a:first'));

	    //Get next image, if it reached the end of the slideshow, rotate it back to the first image
	    var next = ((current.next().length) ? ((current.next().hasClass('caption'))? $('#gallery a:first') :current.next()) : $('#gallery a:first'));	
    	
	    //Get next image caption
	    var caption = next.find('img').attr('rel');	
    	
	    //Set the fade in effect for the next image, show class has higher z-index
	    next.css({opacity: 0.0})
	    .addClass('show')
	    .animate({opacity: 1.0}, 1000);

	    //Hide the current image
	    current.animate({opacity: 0.0}, 1000)
	    .removeClass('show');
    	
	    //Set the opacity to 0 and height to 1px
	    $('#gallery .caption').animate({opacity: 0.0}, { queue:false, duration:0 }).animate({height: '1px'}, { queue:true, duration:300 });	
    	
	    //Animate the caption, opacity to 0.7 and heigth to 100px, a slide up effect
	    $('#gallery .caption').animate({opacity: 0.7},100 ).animate({height: '80px'},500 );
    	
	    //Display the content
	    $('#gallery .content').html(caption);
    }

    </script>
    <style type="text/css">
    .clear {
	    clear:both
    }

    #gallery {
	    position:relative;
	    height:280px;
	    width: 565px;
	    margin-left: 10px;
    }
	    #gallery a {
		    float:left;
		    position:absolute;
		    width: 565px;
	    }
    	
	    #gallery a img {
		    border:none;
		    width: 565px;
	    }
    	
	    #gallery a.show {
		    z-index:500;
		    
	    }

	    #gallery .caption {
		    z-index:600; 
		    background-color:#000; 
		    color:#ffffff; 
		    height:80px; 
		    width:100%; 
		    position:absolute;
		    bottom:0;
	    }

	    #gallery .caption .content {
		    margin:5px
	    }
    	
	    #gallery .caption .content h3 {
		    margin:0;
		    padding:0;
		    color:#1DCCEF;
	    }
    	

    </style>--%>
    <style type="text/css" media="screen">
    div#slideShow{
		background:#ffffff;
		width:565px;
		margin-left: 10px;
		font-size: 12px;
	}
	div#slideShowItems{
	  	height:160px;
	  	width:565px;
		overflow:hidden;
		position:relative;
		
	}
	
	div#slideShowItems div{
		width:565px;
		color: #333333;
	}
	
	div#slideShowItems img {
		margin-right:5px;
		float:left;
	}
	
	ul#slideShowCount{
		margin:0px;
		padding:0px;
		width:565px;
	}
	ul#slideShowCount li.slide{
		line-height:14px;
		float:right;
		cursor:pointer;
		width:26px;
		height:18px;
		display:block;
		color:Black;
		/*background: transparent url(images/slideshows/tabs.jpg) no-repeat scroll left top;*/
	}
	
	ul#slideShowCount li.slide span{
		padding-left:10px;
		
		font-weight:bold;
		font-size:12px;
	}
	
	ul#slideShowCount li.slide:hover
	{
		color: Blue;
		background-position:left -18px;
	}
	
	ul#slideShowCount li.slide.selectedTab{
		/*background-position:left -18px;*/
		color: Red;
	}
	
	
	</style>
 <!--End doan javascript xu ly cho left menu-->
 
    <!--[if IE 6]-->
    <!--<![endif]-->

    <script type="text/javascript" src="vpp/js/boxOver.js"></script>

    <title id="Title1" runat="server">Văn phòng phẩm - 18 Tô Vĩnh Diện</title>
</head>
<body  onload="initialize()">
    <form runat="server" id="frm_main">
    <div id="main_container">
        <div class="top_bar">
            <div class="top_search">
                <div class="search_text">
                    <a href="vpp/advancesearch.aspx" title="header=[Tới trang tìm kiếm nâng cao] body=[&nbsp;] fade=[on]">
                        Tìm kiếm nâng cao</a></div>
                <input type="text" class="search_input" name="search" title="header=[Điền tên sản phẩm cần tìm] body=[&nbsp;] fade=[on]" />
                <input type="image" src="vpp/images/search.gif" class="search_bt" title="header=[Bắt đầu tìm kiếm] body=[&nbsp;] fade=[on]" />
            </div>
            <div class="languages">
                <div class="lang_text">
                    <a href="vpp/faqs.aspx" title="header=[Giải đáp thắc mắc cơ bản] body=[&nbsp;] fade=[on]">Câu hỏi thường gặp ?</a>
                    &nbsp;&nbsp;&nbsp; 
                    <%--        	<a href="login.aspx" title="header=[Đăng nhập khi đã có tài khoản] body=[&nbsp;] fade=[on]">
        	        Đăng nhập
        	        </a>--%>
        	        <asp:LinkButton ID="lbtnLogin" runat="server" Text="Đăng nhập" 
                            onclick="lbtnLogin_Click"/>
                    &nbsp;&nbsp;&nbsp; 
                    <a href="vpp/register.aspx" title="header=[Đăng ký tài khoản mới] body=[&nbsp;] fade=[on]">Đăng ký </a>
                </div>
                <%-- <a href="#" class="lang"><img src="vpp/images/en.gif" alt="" title="" border="0" /></a>
            <a href="#" class="lang"><img src="vpp/images/en.gif" alt="" title="" border="0" /></a> --%>
            </div>
        </div>
        <div id="header">
            <div id="logo">
                <a href="index.aspx">
                    <img src="images/banners/logo.png" alt="" title="" border="0" width="145" height="145" /></a>
            </div>
            <div class="oferte_content">
                <div class="top_divider">
                    <img src="vpp/images/header_divider.png" alt="" title="" width="1" height="164" />
                </div>
                <%--<div class="oferta">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager" runat="server">
                    </asp:ToolkitScriptManager>
                    <asp:SlideShowExtender ID="SlideShowExtender" runat="server" BehaviorID="SSBehaviorID"
                        TargetControlID="img1" SlideShowServiceMethod="GetSlides" AutoPlay="true" ImageDescriptionLabelID="lblDesc"
                        ImageTitleLabelID="lblTitle" NextButtonID="btnNext" PreviousButtonID="btnPrev"
                        PlayButtonID="btnPlay" Loop="true" PlayInterval="2000">
                    </asp:SlideShowExtender>
                    <asp:Image ID="img1" runat="server" Height="92px" Width="94px" ImageUrl="images/products/camera.png"
                        CssClass="oferta_img" />
                    <div class="oferta_details">
                        <div class="oferta_title">
                            <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="oferta_text">
                            <asp:Label ID="lblDesc" runat="server" Text=""></asp:Label>
                        </div>
                        <a href="vpp/details.aspx" class="details" title="header=[Xem chi tiết hơn] body=[&nbsp;] fade=[on]">
                            chi tiết...</a>
                    </div>
                    <div class="oferta_pagination">
                        <asp:LinkButton ID="btnPrev" runat="server" Text="<<" ToolTip="Prev" />
                        <asp:LinkButton ID="btnPlay" runat="server" Text="[]" ToolTip="Play/Stop" />
                        <asp:LinkButton ID="btnNext" runat="server" Text=">>" ToolTip="Next" />
                    </div>
                </div>--%>
               <%-- </div>--%>
                <%--<div class="top_divider">
                    <img src="vpp/images/header_divider.png" alt="" title="" width="1" height="164" /></div>--%>
            </div>
            <!-- end of oferte_content-->
            <div id ="right_flash">
                <Bewise:FlashControl ID="FlashControl1" runat="server" 
                    MovieUrl="./images/banners/rflash.swf" width="280px" height="173px" />
            </div>
        </div>
            
        <div id="main_content">
            <div id="menu_tab">
                <div class="left_menu_corner">
                </div>
                <ul class="menu">
                    <li><a href="index.aspx" class="nav1"> Trang ch&#7911; </a></li>
                         <li class="divider"></li>
                         <li><a href="vpp/productpanel.aspx" class="nav2">S&#7843;n ph&#7849;m </a></li>
                         <li class="divider"></li>
                         <li><a href="vpp/services.aspx" class="nav5">Dịch vụ</a></li>
                         <li class="divider"></li>
                         <li><a href="vpp/promotion.aspx" class="nav3">Khuy&#7871;n m&#7841;i </a></li>
                         <li class="divider"></li>
                         <li><a href="vpp/policy.aspx" class="nav4">Chính sách</a></li>
                         <li class="divider"></li>
                         <li><a href="vpp/contact.aspx" class="nav6">Li&ecirc;n h&#7879; </a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav7">Diễn đàn</a></li>
                         <li class="divider"></li>
                         <li><a href="vpp/aboutus.aspx" class="nav8">Giới thiệu</a></li>
                   
                </ul>
                <div class="right_menu_corner">
                </div>
            </div>
            <!-- end of menu tab -->
        <div class="crumb_navigation">
            Bạn đang ở: <span class="current">trang chủ</span>
        </div>
        <div class="left_content">
            <div class="title_box">
                Danh m&#7909;c s&#7843;n ph&#7849;m
            </div>
      
                <div class="border_box_menu">
                    <div id="left_menu_acc" class="post">
                        <dl>
                        <!-- start parent repeater -->
                        <asp:repeater id="parentRepeater" runat="server" EnableViewState="false" EnableTheming="true">
                           <itemtemplate>
                                <dt><a href="#"><%# DataBinder.Eval(Container.DataItem, "CategoryName")%></a></dt>
                                <dd>
                                <!-- start child repeater -->
                                <asp:repeater id="childRepeater" 
                                datasource='<%# GetChildRelation(Container.DataItem, "myrelation")%>' 
                                runat="server" EnableViewState="false"  EnableTheming="true">
                                 <itemtemplate>
                                        <ul style="margin-left: 0px;">
                                            <li><a href="details.aspx"><%# Eval("SubCategoryName")%></a></li>
                                        </ul>
                                 </itemtemplate>
                                </asp:repeater>
                                <!-- end child repeater -->
                                </dd> 
                           </itemtemplate>
                        </asp:repeater>
                        <!-- end parent repeater -->
                        </dl>
                    </div>
                </div>
                <div class="title_box">
                    Sản phẩm tiêu biểu</div>
                <div class="border_box">
                    <marquee height="100%" scrollamount="2" direction="up" onmouseout="this.start();"
                    onmouseover="this.stop();" loop="true">
                    <center>
                        <div class="product_title">
                        <a href="vpp/details.aspx">Motorola 156 MX-VL</a></div>
                        <div class="product_img">
                            <a href="vpp/details.aspx">
                                <img src="images/products/camera.png" alt="" title="" border="0" /></a></div>
                        <div class="prod_price">
                            <span class="reduce">350$</span> <span class="price">270$</span></div>
                    </center>
                    </marquee>
                </div>
  
                <%--<div class="title_box">
                    Đăng ký nhận báo giá</div>
                <div class="border_box">
                    <input type="text" name="newsletter" class="newsletter_input" value="Email: " />
                    <a href="#" class="join">Gửi</a>
                </div>--%>
              
                <div class="title_box">Thống kê truy cập</div>
                 <div class="border_box_statistic">
                    <br />
                     <p style="color: Green; font-size: 13px;">
                        <img src="vpp/images/User.png" alt="-"/> Đang truy cập: 
                        <asp:Label ID="lblDangTruyCap" ForeColor="Green" runat="server" Text="--"></asp:Label>
                     </p><br />
                     <p style="color: Blue; font-size: 13px;">
                        <img src="vpp/images/icon_visited.gif" alt="-"/> Đã truy cập:  
                        <asp:Label ID="lblDaTruyCap" ForeColor="Blue" runat="server" Text="--"></asp:Label>
                     </p><br />
                     <%--<p style="color: #DE6B10; font-size: 13px;">
                        <img src="vpp/images/icon_birthday.gif" alt="-"/>Ngày tham gia: 24/12/2011
                     </p><br />--%>
                 </div>  
     
                
                <div class="banner_adds">
                    <a href="#">
                        <img src="images/advertise/bann2.jpg" alt="" title="" border="0" /></a>
                </div>
            </div>
            <!-- end of left content -->
            <div class="center_content">
                <asp:Panel runat="server" ID="pnl_category_slide">
                <div id="slideShow">
		            <div id="slideShowItems">
		                <asp:DataList ID="lstCategory" runat="server" RepeatColumns="1" Width="540px" >
                           <ItemTemplate>
                            <div>
				                <a href="vpp/subcategory.aspx?cat=<%#Eval("CategoryId")%>">
				                    <img alt="" border="0" height="160" width="160" src="images/products/<%#Eval("CategoryImage")%>" />
				                </a>
				                <h2><%#Eval("CategoryName")%></h2>
				                <p><%#Eval("Description")%></p>
			                </div>
                        </ItemTemplate>
                        </asp:DataList>
		            </div>
	            </div>
	            <br />
	            </asp:Panel>
            <br/>
                <!-- end of left content -->
                <usc:LastestProduct runat="server" ID="uscLastestProduct" />
                <!--end of lastest products-->
                <usc:ProductTopView runat="server" ID="uscProductTopView" />
                <!--end of top view products-->
            </div>
            <!-- end of center content -->
            <div class="right_content">
                <div class="shopping_cart">
                    <div class="cart_title">
                        Giỏ hàng</div>
                    <div class="cart_details">
                        3 sản phẩm
                        <br />
                        <span class="border_cart"></span>Tổng tiền: <span class="price">350$</span>
                    </div>
                    <div class="cart_icon">
                        <a href="vpp/shoppingcart.aspx" title="header=[Xem giỏ hàng] body=[&nbsp;] fade=[on]">
                            <img src="vpp/images/shoppingcart.png" alt="" title="" width="48" height="48" border="0" /></a></div>
                </div>
                
            <asp:Panel ID="pnlAdmPanel" runat="server" Visible="false">
                <div class="title_box">Khu vực quản trị</div>  
                <div class="border_box">
                 <div class="product_title">
                    <a href="adm/index.aspx" target="_blank">Tới trang quản trị</a>
                </div>
                 <div class="product_img">
                    <a href="adm/index.aspx" target="_blank"><img src="adm/images/amd_profile.png" alt="" title="" border="0" /></a>
                 </div>
                </div>
            </asp:Panel>
                <div class="title_box">
                    Sản phẩm mới</div>
                
                <div class="border_box">
                    <marquee height="100%" scrollamount="2" direction="up" onmouseout="this.start();"
                    onmouseover="this.stop();" loop="true">
                    <center>
                        <div class="product_title">
                            <a href="vpp/details.aspx">Motorola 156 MX-VL</a></div>
                        <div class="product_img">
                            <a href="vpp/details.aspx">
                                <img src="images/products/p2.gif" alt="" title="" border="0" /></a></div>
                        <div class="prod_price">
                            <span class="reduce">350$</span> <span class="price">270$</span></div>
                    </center>
                    </marquee>
                </div>
                <asp:Panel runat="server" ID="pnl_supporter" Visible="true">
                <div class="title_box">Hỗ trợ trực tuyến</div>  
                 <div class="border_box">
                     <table class="list_product_buy" border="0" cellpadding="0" cellspacing="0" style="margin-left: 5px;" >
		                <tbody>
		                    <asp:DataList ID="lstSupporter" runat="server">
                            <ItemTemplate>
		                        <tr>
		                        <td>
                                    <a href = '<%#Eval("SupportLink")%>' style="text-decoration: none;">
                                        &nbsp;&nbsp;<img  alt=""  src="<%#Eval("SupportImage")%>" border="0" height="50px" width="50px"/>           
                                    </a>
                                </td>
                                <td style="color:#a81f22; ">
                                    <%#Eval("SupportName")%><br />
                                </td>
		                    </tr>
            			    </ItemTemplate>
            			    </asp:DataList>
		                    <tr>
		                        <td colspan="2">
		                            <asp:Label ID="Label1" runat="server" Text="Hotline 24/7: (043) 343 3343" ForeColor="Blue"></asp:Label>
		                        </td>
		                    </tr>
		                </tbody>
	                </table>
                 </div>
                </asp:Panel>
                
                <asp:Panel runat="server" ID="pnl_supplier" Visible="true">
                <div class="title_box">
                    H&atilde;ng s&#7843;n xu&#7845;t
                </div>
                <ul class="left_menu">
                    <asp:DataList ID="dtl_supplier" runat="server" >
                    <ItemTemplate>
                        <li><a href="<%#Eval("SupplierLink")%>"> <%#Eval("SupplierName")%></a></li>
                    </ItemTemplate>
                    </asp:DataList>
                </ul>
                </asp:Panel>
                
                <div class="title_box">
                    Báo giá
                 </div>
                 <div class="border_box">
                    <a href="vpp/quotes.aspx" title="header=[Tải báo giá về] body=[&nbsp;] fade=[on]">
                        <img src="vpp/images/imagesdownload.jpg" border="0" width="64" height="64" alt="báo giá"/>
                    </a> 
                 </div>
                 
                <%--<div class="banner_adds">
                    <a href="#">
                        <img src="images/advertise/bann1.jpg" alt="" title="" border="0" /></a>
                </div>--%>
                
            </div>
            <!-- end of right content -->
            <!-- bat dau vung quang cao truot 2 ben trang web -->

            <div id="divAdLeft" style="DISPLAY: none; POSITION: absolute; TOP: 0px">
                <asp:repeater id="leftRepeaterAdv" runat="server" EnableViewState="false">
                <itemtemplate>
                    <a href="<%#Eval("AdvertiseLink")%>">
                      <img src="images/advertise/<%#Eval("ImageURL")%>" border="0" width="125"  alt="<%#Eval("AdvertiseName")%>" style="border: 0px;"/>
                    </a>
                    <br />
                </itemtemplate>
                </asp:repeater>
            </div>

            <div id="divAdRight" style="DISPLAY: none; POSITION: absolute; TOP: 0px">
            <asp:repeater id="righRepeaterAdv" runat="server" EnableViewState="false">
            <itemtemplate>
                <a href="<%#Eval("AdvertiseLink")%>">
                  <img src="images/advertise/<%#Eval("ImageURL")%>" border="0" width="125"  alt="<%#Eval("AdvertiseName")%>" style="border: 0px;"/>
                </a>
                <br />
            </itemtemplate>
            </asp:repeater>
            </div>
            
            <script type="text/javascript">
                document.write("<script type='text/javascript' language='javascript'>MainContentW = 1000;LeftBannerW = 125;RightBannerW = 125;LeftAdjust = 5;RightAdjust = 5;TopAdjust = 10;ShowAdDiv();window.onresize=ShowAdDiv;;<\/script>");
            </script>

            <!-- ket thuc vung quang cao truot 2 ben trang web -->
        </div>
        <!-- end of main content -->
        <div class="footer">
            <div class="left_footer">
                <img src="images/banners/logo.png" alt="" title="" width="170" height="49" border="0" />
            </div>
            <div class="center_footer">
                Hanoitech.vn. All Rights Reserved 2008<br />
                <a href="http://csscreme.com/freecsstemplates/" title="free templates">
                    <img src="vpp/images/csscreme.jpg" alt="free templates" title="free templates" border="0" /></a><br />
                <img src="vpp/images/payment.gif" alt="" title="" />
            </div>
            <div class="right_footer">
                <a href="index.aspx">Trang chủ</a> <a href="vpp/aboutus.aspx">Giới thiệu</a> <a href="vpp/sitemap.aspx">
                    Sơ đồ</a><a href="vpp/contact.aspx">Liên hệ</a>
            </div>
        </div>
    </div>
    </form>
    <!-- end of main_container -->
</body>
</html>
<script type="text/javascript">

/* Slide Show */
$(document).ready(function() {
	$('#slideShowItems div').hide().css({position:'absolute',width:'565px'});

var currentSlide = -1;
var prevSlide = null;
var slides = $('#slideShowItems div');
var interval = null;
var FADE_SPEED = 500;
var DELAY_SPEED = 8000;

var html = '<ul id="slideShowCount">'

for (var i = slides.length - 1;i >= 0 ; i--){
	html += '<li id="slide'+ i+'" class="slide"><span>'+(i+1)+'</span></li>' ;
}

html += '</ul>';
$('#slideShow').after(html);

for (var i = slides.length - 1;i >= 0 ; i--){
	$('#slide'+i).bind("click",{index:i},function(event){
		currentSlide = event.data.index;
		gotoSlide(event.data.index);
	});
};

if (slides.length <= 1){
	$('.slide').hide();
}

nextSlide();

function nextSlide (){

	if (currentSlide >= slides.length -1){
		currentSlide = 0;
	}else{
		currentSlide++
	}

	gotoSlide(currentSlide);

}

function gotoSlide(slideNum){

	if (slideNum != prevSlide){

		if (prevSlide != null){
			$(slides[prevSlide]).stop().hide();
			$('#slide'+prevSlide).removeClass('selectedTab');
		}

		$('#slide'+currentSlide).addClass('selectedTab');


		$('#slide'+slideNum).addClass('selectedTab');
		$('#slide'+prevSlide).removeClass('selectedTab');

		$(slides[slideNum]).stop().slideDown(FADE_SPEED,function(){
			$(this).css({opacity:1});
			if(jQuery.browser.msie){
				this.style.removeAttribute('filter');
			}
		});

		prevSlide = currentSlide;

		if (interval != null){
			clearInterval(interval);
		}
		interval = setInterval(nextSlide, DELAY_SPEED);
	}

}
});

</script>