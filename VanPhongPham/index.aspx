<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="vpp/LastestProduct.ascx" TagPrefix ="usc" TagName="LastestProduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Văn phòng phẩm - 18 Tô Vĩnh Diện</title>
    <meta name="robots" content="index, assignment" />
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
        "/>
    
    <link rel="SHORTCUT ICON" href="vpp/images/iconHNTechPro.png"/>
    
    <link rel="stylesheet" type="text/css" href="vpp/css/iecss.css" />
    <link rel="stylesheet" href="vpp/css/style.css" type="text/css" media="screen" />
    
    <script type="text/javascript" src="vpp/js/boxOver.js"></script>
    <script type="text/javascript" src="vpp/js/jquery.js"></script>
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
    <script type="text/javascript">
        PositionX = 100;
        PositionY = 100;

        defaultWidth  = 500;
        defaultHeight = 500;
        var AutoClose = true;

        if (parseInt(navigator.appVersion.charAt(0))>=4){
        var isNN=(navigator.appName=="Netscape")?1:0;
        var isIE=(navigator.appName.indexOf("Microsoft")!=-1)?1:0;}
        var optNN='scrollbars=no,width='+defaultWidth+',height='+defaultHeight+',left='+PositionX+',top='+PositionY;
        var optIE='scrollbars=no,width=150,height=100,left='+PositionX+',top='+PositionY;
        function popImage(imageURL,imageTitle){
        if (isNN){imgWin=window.open('about:blank','',optNN);}
        if (isIE){imgWin=window.open('about:blank','',optIE);}
        with (imgWin.document){
        writeln('<html><head><title>Loading...</title><style>body{margin:0px;}</style>');writeln('<sc'+'ript>');
        writeln('var isNN,isIE;');writeln('if (parseInt(navigator.appVersion.charAt(0))>=4){');
        writeln('isNN=(navigator.appName=="Netscape")?1:0;');writeln('isIE=(navigator.appName.indexOf("Microsoft")!=-1)?1:0;}');
        writeln('function reSizeToImage(){');writeln('if (isIE){');writeln('window.resizeTo(300,300);');
        writeln('width=300-(document.body.clientWidth-document.images[0].width);');
        writeln('height=300-(document.body.clientHeight-document.images[0].height);');
        writeln('window.resizeTo(width,height);}');writeln('if (isNN){');       
        writeln('window.innerWidth=document.images["George"].width;');writeln('window.innerHeight=document.images["George"].height;}}');
        writeln('function doTitle(){document.title="'+imageTitle+'";}');writeln('</sc'+'ript>');
        if (!AutoClose) writeln('</head><body bgcolor=ffffff scroll="no" onload="reSizeToImage();doTitle();self.focus()">')
        else writeln('</head><body bgcolor=ffffff scroll="no" onload="reSizeToImage();doTitle();self.focus()" onblur="self.close()">');
        writeln('<img name="George" src='+imageURL+' style="display:block"></body></html>');
        close();		
        }}
    </script>
    
    <!--End doan javascript xu ly cho left menu-->
    <!--[if IE 6]>-->
    <%--<link rel="stylesheet" type="text/css" href="vpp/css/iecss.css" />--%>
    <!--<![endif]-->
    <script type="text/javascript" src="vpp/js/boxOver.js"></script>
</head>
<body>
<form runat="server" id="frm_main">
<div id="main_container">

	<div class="top_bar">
    	<div class="top_search">
        	<div class="search_text"><a href="vpp/advancesearch.aspx" title="header=[Tới trang tìm kiếm nâng cao] body=[&nbsp;] fade=[on]">Tìm kiếm nâng cao</a></div>
            <input type="text" class="search_input" name="search" title="header=[Điền tên sản phẩm cần tìm] body=[&nbsp;] fade=[on]"/>
            <input type="image" src="vpp/images/search.gif" class="search_bt" title="header=[Bắt đầu tìm kiếm] body=[&nbsp;] fade=[on]"/>
        </div>
        
        <div class="languages">
        	<div class="lang_text">
        	<a href="#" title="header=[Đăng nhập khi đã có tài khoản] body=[&nbsp;] fade=[on]">
        	Đăng nhập 
        	</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="#" title="header=[Đăng ký tài khoản mới] body=[&nbsp;] fade=[on]">
        	Đăng ký
        	</a> </div>
           <%-- <a href="#" class="lang"><img src="vpp/images/en.gif" alt="" title="" border="0" /></a>
            <a href="#" class="lang"><img src="vpp/images/en.gif" alt="" title="" border="0" /></a> --%>    
        </div>
    </div>
	<div id="header">
        
        <div id="logo">
            <a href="index.aspx"><img src="vpp/images/logo.png" alt="" title="" border="0" width="237" height="140" /></a>
	    </div>
        
        <div class="oferte_content">
        <div class="top_divider">
            <img src="vpp/images/header_divider.png" alt="" title="" width="1" height="164" /></div>
            
        <div class="oferta">
            <div class="oferta_content">
            <!-- --------------------------------------------------- -->
            <asp:ToolkitScriptManager ID="ToolkitScriptManager" runat="server">
            </asp:ToolkitScriptManager>                
            
            <asp:SlideShowExtender ID="SlideShowExtender" runat="server"
                BehaviorID="SSBehaviorID"
                TargetControlID="img1"
                SlideShowServiceMethod="GetSlides"
                AutoPlay="true"
                ImageDescriptionLabelID="lblDesc"
                ImageTitleLabelID ="lblTitle"
                NextButtonID="btnNext"
                PreviousButtonID="btnPrev"
                PlayButtonID="btnPlay"                
                Loop="true" PlayInterval = "2000"  >
            </asp:SlideShowExtender>
            
            <asp:Image ID="img1" runat="server"
                  Height="92px" Width="94px" ImageUrl="vpp/images/laptop.png"
                  CssClass="oferta_img"/>   
                  
            <div class="oferta_details">                        
                <div class="oferta_title">
                    <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
                    
                </div>
                <div class="oferta_text">
                    <asp:Label ID="lblDesc" runat="server" Text=""></asp:Label>
                </div>
                <a href="vpp/details.aspx" class="details" title="header=[Xem chi tiết hơn] body=[&nbsp;] fade=[on]">chi tiết...</a>
            </div>   
            </div>
            <div class="oferta_pagination">
                <!--<span class="current">1</span>
                 <a href="#?page=2">2</a>
                 <a href="#?page=3">3</a>
                 <a href="#?page=3">4</a>
                 <a href="#?page=3">5</a> -->
                 <asp:LinkButton ID="btnPrev" runat="server" Text="<<" ToolTip ="Prev"/>
                 <asp:LinkButton ID="btnPlay" runat="server" Text="[]" ToolTip ="Play/Stop" />
                 <asp:LinkButton ID="btnNext" runat="server" Text=">>" ToolTip ="Next" />
            </div>
        </div>
        <div class="top_divider">
            <img src="vpp/images/header_divider.png" alt="" title="" width="1" height="164" /></div>
    </div> <!-- end of oferte_content-->
    </div>
    
    <div id="main_content"> 
   
            <div id="menu_tab">
            <div class="left_menu_corner"></div>
                    <ul class="menu">
                         <li><a href="../index.aspx" class="nav1"> Trang ch&#7911; </a></li>
                         <li class="divider"></li>
                         <li><a href="products.aspx" class="nav2">S&#7843;n ph&#7849;m </a></li>
                         <li class="divider"></li>
                         <li><a href="promotion.aspx" class="nav3">Khuy&#7871;n m&#7841;i </a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav4">Chính sách</a></li>
                         
                         <li class="divider"></li>
                         <li><a href="#" class="nav5">Giao h&agrave;ng  </a></li>
                         <li class="divider"></li>
                         <li><a href="contact.aspx" class="nav6">Li&ecirc;n h&#7879; </a></li>
                         <li class="divider"></li>
                         
                         <li><a href="contact.aspx" class="nav7">FAQs</a></li>
                         <li class="divider"></li>
                         <%--<li class="currencies">Loại tiền: 
                         <select>
                         <option selected="true">VND</option>
                         <option>US Dollar</option>
                         </select>
                         </li>--%>
                    </ul>
             <div class="right_menu_corner"></div>
            </div><!-- end of menu tab -->
            <div class="crumb_navigation">
                Bạn đang ở: <span class="current">trang chủ</span>
            </div> 
   <div class="left_content">
    <div class="title_box">Danh m&#7909;c s&#7843;n ph&#7849;m </div>
        <!--
        <ul class="left_menu">
            <li class="odd"><a href="#">Processors</a></li>
            <li class="even"><a href="#">Motherboards</a></li>
        </ul>
        -->
        <div class="border_box_menu">
        <div id="left_menu_acc" class="post">
            <dl>
            <dt><a href="#">Mực máy in</a></dt>
            <dd>
                <ul style="margin-left: 0px;">
                    <li><a href="vpp/details.aspx">- Thiet bi van phong</a></li>
                    <li><a href="vpp/details.aspx">- Muc in may tinh</a></li>
                    <li><a href="vpp/details.aspx">- Thiet bi van phong</a></li>
                    <li><a href="vpp/details.aspx">- Muc in may tinh, muc in may tinh, muc in may tinh</a></li>
                    <li><a href="vpp/details.aspx">- Thiet bi van phong Thiet bi van phong</a></li>
                    <li><a href="vpp/details.aspx">- Muc in may tinh, muc in may tinh, muc in may tinh</a></li>
                    <li><a href="vpp/details.aspx">- Thiet bi van phong Thiet bi van phong</a></li>
                    <li><a href="vpp/details.aspx">- Muc in may tinh, muc in may tinh, muc in may tinh</a></li>
                </ul>
            </dd>
            <dt><a href="#"><b>Thiết bị văn phòng</b></a></dt>
            <dd>
                <ul>
                    <li><a href="#">- Home</a></li>
                    <li><a href="#">- About</a></li>
                    <li><a href="#">- contact</a></li>
                    <li><a href="#">- Services</a></li>
                    <li><a href="#">- Home</a></li>
                    <li><a href="#">- About</a></li>
                    <li><a href="#">- contact</a></li>
                    <li><a href="#">- Services</a></li>
                </ul>
            </dd>
            <dt><a href="#">Máy tính</a></dt>
            <dd>
                <ul>
                    <li><a href="#">- Home</a></li>
                    <li><a href="#">- About</a></li>
                    <li><a href="#">- contact</a></li>
                    <li><a href="#">- Services</a></li>
                    <li><a href="#">- Home</a></li>
                    <li><a href="#">- About</a></li>
                    <li><a href="#">- contact</a></li>
                    <li><a href="#">- Services</a></li>
                    <li><a href="#">- Home</a></li>
                    <li><a href="#">- About</a></li>
                    <li><a href="#">- contact</a></li>
                    <li><a href="#">- Services</a></li>
                </ul>
            </dd>
            <dt><a href="#">Dịch vụ</a></dt>
            <dd>
                <ul>
                    <li><a href="#">- Home</a></li>
                    <li><a href="#">- About</a></li>
                    <li><a href="#">- contact</a></li>
                    <li><a href="#">- Services</a></li>
                    <li><a href="#">- Home</a></li>
                    <li><a href="#">- About</a></li>
                    <li><a href="#">- contact</a></li>
                    <li><a href="#">- Services</a></li>
                </ul>
            </dd>
            </dl>
        </div>
        </div>
     <div class="title_box">Sản phẩm tiêu biểu</div>  
     <div class="border_box">
         <div class="product_title"><a href="vpp/details.aspx">Motorola 156 MX-VL</a></div>
         <div class="product_img"><a href="vpp/details.aspx"><img src="vpp/images/laptop.png" alt="" title="" border="0" /></a></div>
         <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
     </div>  
     
     
     <div class="title_box">Newsletter</div>  
     <div class="border_box">
		<input type="text" name="newsletter" class="newsletter_input" value="your email"/>
        <a href="#" class="join">join</a>
     </div>  
     
     <div class="banner_adds">
     
     <a href="#"><img src="images/advertise/bann2.jpg" alt="" title="" border="0" /></a>
     </div>
        
    
   </div><!-- end of left content -->
   
   
   <div class="center_content">
   	<div class="center_title_bar">S&#7843;n ph&#7849;m m&#7899;i  </div>
   	<!--begin lastest products-->
        <asp:DataList ID="lstProductLastest" runat="server" RepeatColumns="3" Width="568px" 
   DataSourceID="SqlDataSource1">
   <ItemTemplate>
       <div class="prod_box">
           <div class="top_prod_box">
           </div>
           <div class="center_prod_box">
               <div class="product_title">
                   <a href="vpp/details.aspx">Iphone Apple</a></div>
               <div class="product_img">
                   <a href="vpp/details.aspx">
                   <img alt="" border="0" src="vpp/images/p4.gif" title="" /></a></div>
               <div class="prod_price">
                   <span class="price">270$</span></div>
           </div>
           <div class="bottom_prod_box">
           </div>
           <div class="prod_details_tab">
               <a href="#" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]">
               <img alt="" border="0" class="left_bt" src="vpp/images/cart.gif" title="" /></a>
               <a href="#" title="header=[Ưu đãi khi mua] body=[&nbsp;] fade=[on]">
               <img alt="" border="0" class="left_bt" src="vpp/images/favs.gif" title="" /></a>
               <a href="#" title="header=[Tặng phẩm] body=[&nbsp;] fade=[on]">
               <img alt="" border="0" class="left_bt" src="vpp/images/favorites.gif" title="" /></a>
               <a href="vpp/details.aspx" class="prod_details" title="header=[Xem chi tiết] body=[&nbsp;] fade=[on]">Xem</a>
           </div>
       </div>
       <br />
   </ItemTemplate>
</asp:DataList>       

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
   SelectCommand="SELECT * FROM Flower">
</asp:SqlDataSource>
    <!--end of lastest products-->
    
     	<div class="center_title_bar">S&#7843;n ph&#7849;m xem nhi&#7873;u nh&#7845;t </div>
 
 
      	<div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">            
                 <div class="product_title"><a href="vpp/details.aspx">Motorola 156 MX-VL</a></div>
                 <div class="product_img"><a href="vpp/details.aspx"><img src="vpp/images/laptop.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>         
                
            <div class="prod_details_tab">
            <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="vpp/images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="vpp/images/favs.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="vpp/images/favorites.gif" alt="" title="" border="0" class="left_bt" /></a>           
            <a href="vpp/details.aspx" class="prod_details">details</a>            
            </div>                     
        </div>
   	 </div>
   	 
   <!-- end of center content -->
   
   <div class="right_content">
   		<div class="shopping_cart">
        	<div class="cart_title">Giỏ hàng</div>
            
            <div class="cart_details">
            3 sản phẩm <br />
            <span class="border_cart"></span>
            Tổng tiền: <span class="price">350$</span>
            </div>
            
            <div class="cart_icon"><a href="#" title="header=[Xem giỏ hàng] body=[&nbsp;] fade=[on]">
			<img src="vpp/images/shoppingcart.png" alt="" title="" width="48" height="48" border="0" /></a></div>
        
        </div>
     <div class="title_box">Sản phẩm mới</div>  
     <div class="border_box">
         <div class="product_title"><a href="vpp/details.aspx">Motorola 156 MX-VL</a></div>
         <div class="product_img"><a href="vpp/details.aspx"><img src="vpp/images/p2.gif" alt="" title="" border="0" /></a></div>
         <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
     </div>  
    <div class="title_box">H&atilde;ng s&#7843;n xu&#7845;t </div>
    
        <ul class="left_menu">
        <li class="odd"><a href="#">Sony</a></li>
        <li class="even"><a href="#">Samsung</a></li>       
        <li class="odd"><a href="#">Canon</a></li>  
        <li class="even"><a href="#">Misubishi</a></li>   
        <li class="odd"><a href="#">Toshiba</a></li>   
        <li class="even"><a href="#">Dell</a></li>   
        </ul>      
     
     <div class="banner_adds">
     
     <a href="#"><img src="images/advertise/bann1.jpg" alt="" title="" border="0" /></a>
     </div>        
   </div><!-- end of right content -->   
   
   <!-- bat dau vung quang cao truot 2 ben trang web -->   
   <div id="divAdRight" style="DISPLAY: none; POSITION: absolute; TOP: 0px">
      <a href="#">
          <img src="images/advertise/bann1.jpg" width="125"  alt="bann1"/>
      </a>
      <br />
      <a href="#">
          <img src="images/advertise/bann2.jpg" width="125" alt="bann2"/>
      </a>
      <br />
      <a href="#">
          <img src="images/advertise/bann1.jpg" width="125"  alt="bann1"/>
      </a>
      
    </div>
    
    <div id="divAdLeft" style="DISPLAY: none; POSITION: absolute; TOP: 0px">
        <a href="#">
          <img src="images/advertise/bann2.jpg" width="125" alt="bann2"/>
        </a>
        <br />
        <a href="#">
          <img src="images/advertise/bann1.jpg" width="125"  alt="bann1"/>
        </a>
        <br />
        <a href="#">
          <img src="images/advertise/bann2.jpg" width="125"  alt="bann2"/>
        </a>
    </div>
    
    <script type="text/javascript">
    document.write("<script type='text/javascript' language='javascript'>MainContentW = 1000;LeftBannerW = 125;RightBannerW = 125;LeftAdjust = 5;RightAdjust = 5;TopAdjust = 10;ShowAdDiv();window.onresize=ShowAdDiv;;<\/script>");
    </script>      
    <!-- ket thuc vung quang cao truot 2 ben trang web -->  
     
   </div><!-- end of main content -->
   <div class="footer">
        <div class="left_footer">
        <img src="vpp/images/footer_logo.png" alt="" title="" width="170" height="49"/>
        </div>
        
        <div class="center_footer">
        Hanoitech.vn. All Rights Reserved 2008<br />
        <a href="http://csscreme.com/freecsstemplates/" title="free templates">
		<img src="vpp/images/csscreme.jpg" alt="free templates" title="free templates" border="0" /></a><br />
        <img src="vpp/images/payment.gif" alt="" title="" />
     </div>
        <div class="right_footer">
        <a href="index.aspx">Trang chủ</a>
        <a href="vpp/aboutus.aspx">Giới thiệu</a>
        <a href="vpp/sitemap.aspx">Sơ đồ</a>
        <a href="#">RSS</a>
        <a href="vpp/contact.aspx">Liên hệ</a>
        </div>   
   </div>                 
</div>
</form>
<!-- end of main_container -->
</body>
</html>

