<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="vpp_default"  ErrorPage="errorpage.aspx"%>
<%@ Register Src="LastestProduct.ascx" TagPrefix="usc" TagName="LastestProduct" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
    <title>hanoitech.vn</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="css/iecss.css" />
<![endif]-->
    <script type="text/javascript" src="js/boxOver.js"></script>
</head>
<body>
    <form runat="server" id="frm_main">
    
        
    <div id="main_container">
        <div class="top_bar">
            <div class="top_search">
                <div class="search_text">
                    <a href="#">Advanced Search</a></div>
                <input type="text" class="search_input" name="search" />
                <input type="image" src="images/search.gif" class="search_bt" />
            </div>
            <div class="languages">
                <div class="lang_text">
                    Languages:</div>
                <a href="#" class="lang">
                    <img src="images/en.gif" alt="" title="" border="0" /></a> <a href="#" class="lang">
                        <img src="images/de.gif" alt="" title="" border="0" /></a>
            </div>
        </div>
        <div id="header">
            <div id="logo">
                <a href="index.html">
                    <img src="images/logo.png" alt="" title="" border="0" width="237" height="140" /></a>
            </div>
            <div class="oferte_content">
                <div class="top_divider">
                    <img src="images/header_divider.png" alt="" title="" width="1" height="164" /></div>
                <div class="oferta">
                  <%-- <div class="oferta_content">
                	<img src="images/laptop.png" width="94" height="92" border="0" class="oferta_img" />
                	
                    <div class="oferta_details">
                            <div class="oferta_title">Samsung GX 2004 LM</div>
                            <div class="oferta_text">
                            description of product </div>
                            <a href="details.aspx" class="details">details</a>
                    </div>--%>
                    
                    <div class="oferta_content">
                    <%-------------------------------------------------------%>
                        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                        </cc1:ToolkitScriptManager>                
                    
                    <cc1:SlideShowExtender ID="SlideShowExtender1" runat="server"
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
                    </cc1:SlideShowExtender>
                    
                    <asp:Image ID="img1" runat="server"
                          Height="92px" Width="94px" ImageUrl="images/laptop.png"
                          CssClass="oferta_img"/>   
                          
                    <div class="oferta_details">                        
                        <div class="oferta_title">
                            <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
                            
                        </div>
                        <div class="oferta_text">
                            <asp:Label ID="lblDesc" runat="server" Text=""></asp:Label>
                        </div>
                        <a href="details.aspx" class="details">details</a>
                    </div>   
                    <div>
                        
                        
                    </div>
                    <%-------------------------------------------------------%>
                    
                    
                     </div>
                    <div class="oferta_pagination">
                        <%--<span class="current">1</span>
                         <a href="#?page=2">2</a>
                         <a href="#?page=3">3</a>
                         <a href="#?page=3">4</a>
                         <a href="#?page=3">5</a>--%>
                         <asp:LinkButton ID="btnPrev" runat="server" Text="<<" ToolTip ="Prev" />
                         <asp:LinkButton ID="btnPlay" runat="server" Text="[]" ToolTip ="Play" />
                         <asp:LinkButton ID="btnNext" runat="server" Text=">>" ToolTip ="Next" />
                    </div>
                </div>
                <div class="top_divider">
                    <img src="images/header_divider.png" alt="" title="" width="1" height="164" /></div>
            </div>
            <!-- end of oferte_content-->
        </div>
    <div id="main_content">
        <div id="menu_tab">
            <div class="left_menu_corner">
            </div>
            <ul class="menu">
                <li><a href="index.html" class="nav1">Trang ch&#7911; </a></li>
                <li class="divider"></li>
                <li><a href="#" class="nav2">S&#7843;n ph&#7849;m </a></li>
                <li class="divider"></li>
                <li><a href="#" class="nav3">Khuy&#7871;n m&#7841;i </a></li>
                <li class="divider"></li>
                <li><a href="#" class="nav4">My account</a></li>
                <li class="divider"></li>
                <li><a href="#" class="nav5">Giao h&agrave;ng </a></li>
                <li class="divider"></li>
                <li><a href="contact.html" class="nav6">Li&ecirc;n h&#7879; </a></li>
                <li class="divider"></li>
                <li class="currencies">Currencies
                    <select>
                        <option>US Dollar</option>
                        <option>Euro</option>
                    </select>
                </li>
            </ul>
            <div class="right_menu_corner">
            </div>
        </div>
        <!-- end of menu tab -->
        <div class="crumb_navigation">
            Navigation: <span class="current">Home</span>
        </div>
        <div class="left_content">
            <div class="title_box">
                Danh m&#7909;c s&#7843;n ph&#7849;m
            </div>
            <ul class="left_menu">
                <li class="odd"><a href="#">Processors</a></li>
                <li class="even"><a href="#">Motherboards</a></li>
            </ul>
            <div class="title_box">
                Special Products</div>
            <div class="border_box">
                <div class="product_title">
                    <a href="details.aspx">Motorola 156 MX-VL</a></div>
                <div class="product_img">
                    <a href="details.aspx">
                        <img src="images/laptop.png" alt="" title="" border="0" /></a></div>
                <div class="prod_price">
                    <span class="reduce">350$</span> <span class="price">270$</span></div>
            </div>
            <div class="title_box">
                Newsletter</div>
            <div class="border_box">
                <input type="text" name="newsletter" class="newsletter_input" value="your email" />
                <a href="#" class="join">join</a>
            </div>
            <div class="banner_adds">
                <a href="#">
                    <img src="images/bann2.jpg" alt="" title="" border="0" /></a>
            </div>
        </div>
        <!-- end of left content -->
        <div class="center_content">
            <div class="center_title_bar">
                S&#7843;n ph&#7849;m m&#7899;i
            </div>
            <!--begin lastest products-->
            <usc:LastestProduct runat="server" ID="uscLastestProduct" />
            <!--end of lastest products-->
            <div class="center_title_bar">
                S&#7843;n ph&#7849;m xem nhi&#7873;u nh&#7845;t
            </div>
            <div class="prod_box">
                <div class="top_prod_box">
                </div>
                <div class="center_prod_box">
                    <div class="product_title">
                        <a href="details.aspx">Motorola 156 MX-VL</a></div>
                    <div class="product_img">
                        <a href="details.aspx">
                            <img src="images/laptop.gif" alt="" title="" border="0" /></a></div>
                    <div class="prod_price">
                        <span class="reduce">350$</span> <span class="price">270$</span></div>
                </div>
                <div class="bottom_prod_box">
                </div>
                <div class="prod_details_tab">
                    <a href="#" title="header=[Add to cart] body=[&nbsp;] fade=[on]">
                        <img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
                    <a href="#" title="header=[Specials] body=[&nbsp;] fade=[on]">
                        <img src="images/favs.gif" alt="" title="" border="0" class="left_bt" /></a>
                    <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]">
                        <img src="images/favorites.gif" alt="" title="" border="0" class="left_bt" /></a>
                    <a href="details.aspx" class="prod_details">details</a>
                </div>
            </div>
        </div>
        <!-- end of center content -->
        <div class="right_content">
            <div class="shopping_cart">
                <div class="cart_title">
                    Shopping cart</div>
                <div class="cart_details">
                    3 items
                    <br />
                    <span class="border_cart"></span>Total: <span class="price">350$</span>
                </div>
                <div class="cart_icon">
                    <a href="#" title="header=[Checkout] body=[&nbsp;] fade=[on]">
                        <img src="images/shoppingcart.png" alt="" title="" width="48" height="48" border="0" /></a></div>
            </div>
            <div class="title_box">
                What’s new</div>
            <div class="border_box">
                <div class="product_title">
                    <a href="details.aspx">Motorola 156 MX-VL</a></div>
                <div class="product_img">
                    <a href="details.aspx">
                        <img src="images/p2.gif" alt="" title="" border="0" /></a></div>
                <div class="prod_price">
                    <span class="reduce">350$</span> <span class="price">270$</span></div>
            </div>
            <div class="title_box">
                H&atilde;ng s&#7843;n xu&#7845;t
            </div>
            <ul class="left_menu">
                <li class="odd"><a href="#">Sony</a></li>
                <li class="even"><a href="#">Samsung</a></li>
            </ul>
            <div class="banner_adds">
                <a href="#">
                    <img src="images/bann1.jpg" alt="" title="" border="0" /></a>
            </div>
        </div>
        <!-- end of right content -->
    </div>
    <!-- end of main content -->
    <div class="footer">
        <div class="left_footer">
            <img src="images/footer_logo.png" alt="" title="" width="170" height="49" />
        </div>
        <div class="center_footer">
            Hanoitech.vn. All Rights Reserved 2008<br />
            <a href="http://csscreme.com/freecsstemplates/" title="free templates">
                <img src="images/csscreme.jpg" alt="free templates" title="free templates" border="0" /></a><br />
            <img src="images/payment.gif" alt="" title="" />
        </div>
        <div class="right_footer">
            <a href="index.html">home</a> <a href="details.aspx">about</a> <a href="details.aspx">
                sitemap</a> <a href="details.aspx">rss</a> <a href="contact.html">contact us</a>
        </div>
    </div>
    </div>
    </form>
    <!-- end of main_container -->
</body>
</html>
