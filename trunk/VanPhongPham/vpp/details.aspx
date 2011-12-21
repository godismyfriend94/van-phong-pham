<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="vpp_details" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <!-- Zoom anh kieu ImageLens -->
	
    <script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="js/jqzoom.pack.1.0.1.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/jqzoom.css" type="text/css" />
    <style type ="text/css">

        div.notes{
	        font-size:12px;
        }
        div.notes a{
	        color:#990000;
        }
    </style>
    <script type="text/javascript">
        $(function() {
            $(".jqzoom").jqzoom();
        });
    </script>
    <script type="text/javascript">
         function swap(image) {
             document.getElementById("img_main").src = image.href;
             document.getElementById("img_link").href = image.href;
         }
     </script>
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang chi tiết sản phẩm</span>
    </div>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
    <div class="center_title_bar">Motorola 156 MX-VL</div>
	<div class="prod_box_big">
    	<div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
             <div class="product_img_big">

                <a href="images/Canon ImageCLASS MF4350D.png" style=""  class="jqzoom" title="xem chi tiết"  id="img_link"  style="border: 0px;">
		            <img alt="" src="images/Canon ImageCLASS MF4350D.png" id="img_main" width="170" height="170" style="border: 0px;"/>
                </a>
                 <div class="thumbs">
                     <a href="images/Canon ImageCLASS MF4350D.png" title="header=[Thumb1] body=[&nbsp;] fade=[on]" onclick="swap(this); return false;">
                        <img src="images/Canon ImageCLASS MF4350D.png" alt="" title="" border="0" width="28" height="28" style="border: 0px;"/>
                     </a>
                     <a href="images/CanonimageCLASS MF4550d.png" title="header=[Thumb2] body=[&nbsp;] fade=[on]" onclick="swap(this); return false;">
                        <img src="images/CanonimageCLASS MF4550d.png" alt="" title="" border="0"  width="28" height="28" style="border: 0px;"/>
                     </a>
                     <a href="images/CanonimageCLASSD520.png" title="header=[Thumb3] body=[&nbsp;] fade=[on]" onclick="swap(this); return false;">
                        <img src="images/CanonimageCLASSD520.png" alt="" title="" border="0"  width="28" height="28" style="border: 0px;"/>
                     </a>
                     <a href="images/CanonPixmaMX-328.png" title="header=[Thumb3] body=[&nbsp;] fade=[on]" onclick="swap(this); return false;">
                        <img src="images/CanonPixmaMX-328.png" alt="" title="" border="0"  width="28" height="28" style="border: 0px;"/>
                     </a>
                 </div>
             </div>
         <div class="details_big_box">
             <div class="product_title_big">My Cinema-U3000/DVBT, USB 2.0 TV BOX External, White</div>
             <div class="specifications">
                Disponibilitate: <span class="blue">In stoc</span><br />

                Garantie: <span class="blue">24 luni</span><br />
                
                Tip transport: <span class="blue">Mic</span><br />
                
                Pretul include <span class="blue">TVA</span><br />
             </div>
             <div class="prod_price_big"><span class="reduce">350$</span> <span class="price">270$</span></div>
             
             <a href="#" class="addtocart" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]">Cho vào giỏ</a>
             <a href="#" class="compare" title="header=[So sánh sản phẩm] body=[&nbsp;] fade=[on]">So sánh</a>
             
              <br /><br /><br /><br /><br /><br />
              
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
                    <asp:Label ID="Label2" Font-Bold="true" runat="server" Text="Đánh giá và chia sẻ về chất lượng sản phẩm"></asp:Label>
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
            <div>
             <!-- AddThis Button BEGIN -->
            <div>
            <script type="text/javascript" src="js/plusone.js"></script>
                <g:plusone  size="small" lang="vi"></g:plusone>
                
                <a class="addthis_button" href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=ra-4ed2e0173abe82f3">
                <img src="http://s7.addthis.com/static/btn/sm-share-en.gif" width="83" height="16" alt="Bookmark and Share" style="border:0"/></a>
                
            </div>
            <%--http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4ed2e0173abe82f3--%>
            <script type="text/javascript" src="js/addthis.js"></script>
            <!-- AddThis Button END -->
            </div>
            <br /><br />
            <div style="float: left;">
                    <asp:Label ID="lblHowLike" ForeColor="#a81f22" Font-Bold="true" runat="server" Text="Bạn cảm thấy sản phẩm này như nào? "></asp:Label>
                    &nbsp;&nbsp;
            </div>
                <asp:Rating id="productRating" runat="server" BehaviorID="RatingBehavior1"
                    CurrentRating="1"
                    MaxRating="5"
                    StarCssClass="ratingStar"
                    WaitingStarCssClass="savedRatingStar"
                    FilledStarCssClass="filledRatingStar"
                    EmptyStarCssClass="emptyRatingStar"
                    OnChanged="productRating_Changed"
                    AutoPostBack="true"
                    style="float: left;" />
                    
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblResponse" runat="server" Text=""></asp:Label>   
                <br />
                <div class="review_form_row">
                    <label class="review">
                        <strong>
                            <asp:Label ID="lblNameReview" runat="server" Text="Tên:"></asp:Label>
                        </strong>
                    </label>
                    <asp:TextBox ID="txtNameReview" runat="server" CssClass="review_input"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ControlToValidate="txtNameReview" runat="server" 
                        ID="RqValidator1" ErrorMessage="Input name" ValidationGroup="group1" SetFocusOnError="true" Text="*" >
                    </asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="Rq_ValidatorCalloutExtender" runat="server" 
                        Enabled="True" TargetControlID="RqValidator1">
                    </asp:ValidatorCalloutExtender>
                </div>  

                <div class="review_form_row">
                    <label class="contact">
                        <strong>
                            <asp:Label ID="lblEmailReview" runat="server" Text="Email:"></asp:Label>
                        </strong>
                    </label>
                    <asp:TextBox ID="txtEmailReview" runat="server" CssClass="review_input"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ControlToValidate="txtEmailReview" SetFocusOnError="true" runat="server" 
                        ID="RqValidator2" ErrorMessage="Input email" ValidationGroup="group1" Text="*" >
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                        runat="server" ErrorMessage="Email is not valid" Text=" *" 
                        ControlToValidate="txtEmailReview" SetFocusOnError="true" ValidationGroup="group1" 
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                    </asp:RegularExpressionValidator>

                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" 
                        Enabled="True" TargetControlID="RegularExpressionValidator1">
                    </asp:ValidatorCalloutExtender>
                </div>
                <div class="review_form_row">
                    <label class="review">
                        <strong>
                            <asp:Label ID="lblMessageReview" runat="server" Text="Nội dung:"></asp:Label>
                        </strong>
                    </label>
                    <asp:TextBox ID="txtMessageReview" TextMode="MultiLine" runat="server" CssClass="textarea_review_input"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ControlToValidate="txtMessageReview" SetFocusOnError="true" runat="server" 
                        ID="RqValidator3" ErrorMessage="Input message" ValidationGroup="group1" Text="*" ></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" 
                        Enabled="True" TargetControlID="RqValidator3">
                    </asp:ValidatorCalloutExtender>
                </div>

                <div class="review_form_row">
                    <asp:LinkButton ID="btnSubmitRate" runat="server" ValidationGroup="group1" OnClick="btnSubmitRate_Click" CssClass="contact" Text="Đánh giá"></asp:LinkButton>
                </div>
                </div>
                </div>
                <div class="bottom_prod_box_big"></div>                                
                </div>
            </asp:Panel>
            </div>
        <%--</ContentTemplate> 
        </asp:UpdatePanel>--%>
        
    <div class="center_title_bar">Thông số kỹ thuật</div>   
  	<div class="menu_area1">
  	    <asp:Panel runat="server" Width="540px" ScrollBars="Auto">
         <table cellspacing="0" cellpadding="0" border="1" style="width: 540px; border: 1pt solid rgb(217, 217, 217); height: 430px;" class="MsoNormalTable">
            <tbody>
                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:13.65pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:13.65pt" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Model</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:1;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">H&atilde;ng sản xuất</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">EPSON</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:2;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in" colspan="2">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Th&ocirc;ng số kỹ   thuật</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:3;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Loại m&aacute;y in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">In Kim</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:4;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Cỡ giấy</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">A4</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:5;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Độ ph&acirc;n giải</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">306x306dpi</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:6;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Mực in</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">Khay mực</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:7;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Kết nối</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; USB2.0</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:8;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khay đựng   giấy thường (Tờ)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">80tờ</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:9;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Chức năng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; -</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:10;height:98.0pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">OS Supported</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:98.0pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; Microsoft Windows 2000<br />
                    &bull; Microsoft Windows 98<br />
                    &bull; Microsoft Windows 98SE<br />
                    &bull; Microsoft Windows Me<br />
                    &bull; Microsoft Windows NT 4.0<br />
                    &bull; Microsoft Windows XP<br />
                    &bull; Microsoft Windows XP Pro x64</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:11;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Nguồn điện sử   dụng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">&bull; AC 220V 50/60Hz</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:12;height:.2in">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">K&iacute;ch thước</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:.2in">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">366 x 275 x 159</span></p>
                    </td>
                </tr>
                <tr style="mso-yfti-irow:13;mso-yfti-lastrow:yes;height:15.2pt">
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span lang="VI" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:VI">Khối lượng</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
                    &quot;Times New Roman&quot;"> :</span></p>
                    </td>
                    <td style="border:solid #D9D9D9 1.0pt;mso-border-themecolor:background1;
                    mso-border-themeshade:217;mso-border-alt:solid #D9D9D9 .25pt;mso-border-themecolor:
                    background1;mso-border-themeshade:217;padding:0in 0in 0in 0in;height:15.2pt">
                    <p style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
                    normal" class="MsoNormal"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
                    mso-fareast-font-family:&quot;Times New Roman&quot;">4.6Kg</span></p>
                    </td>
                </tr>
            </tbody>
        </table>
            
        </asp:Panel>
    </div>                                           
    <div class="center_title_bar">Sản phẩm cùng loại</div>
  	<div class="prod_box">
    	<div class="top_prod_box"></div>
        <div class="center_prod_box">            
             <div class="product_title"><a href="details.aspx">Motorola 156 MX-VL</a></div>
             <div class="product_img"><a href="details.aspx"><img src="images/laptop.gif" alt="" title="" border="0" /></a></div>
             <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
        </div>
        <div class="bottom_prod_box"></div>             
        <div class="prod_details_tab">
        <a href="#" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
        <a href="#" title="header=[Ưu đãi đặc biệt] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" title="" border="0" class="left_bt" /></a>
        <a href="#" title="header=[Tặng phẩm] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" title="" border="0" class="left_bt" /></a>           
        <a href="details.aspx" class="prod_details" title="header=[Xem chi tiết sản phẩm] body=[&nbsp;] fade=[on]">xem</a>            
        </div>                     
    </div>
 	<div class="prod_box">
    	<div class="top_prod_box"></div>
        <div class="center_prod_box">            
             <div class="product_title"><a href="details.aspx">Iphone Apple</a></div>
             <div class="product_img"><a href="details.aspx"><img src="images/p4.gif" alt="" title="" border="0" /></a></div>
             <div class="prod_price"><span class="price">270$</span></div>                        
        </div>
        <div class="bottom_prod_box"></div>             
        <div class="prod_details_tab">
        <a href="#" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
        <a href="#" title="header=[Ưu đãi đặc biệt] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" title="" border="0" class="left_bt" /></a>
        <a href="#" title="header=[Tặng phẩm] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" title="" border="0" class="left_bt" /></a>           
        <a href="details.aspx" class="prod_details" title="header=[Xem chi tiết sản phẩm] body=[&nbsp;] fade=[on]">xem</a>            
        </div>                     
    </div>

 	<div class="prod_box">
    	<div class="top_prod_box"></div>
        <div class="center_prod_box">            
             <div class="product_title"><a href="details.aspx">Samsung Webcam</a></div>
             <div class="product_img"><a href="details.aspx"><img src="images/p5.gif" alt="" title="" border="0" /></a></div>
             <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab">
        <a href="#" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
        <a href="#" title="header=[Ưu đãi đặc biệt] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" title="" border="0" class="left_bt" /></a>
        <a href="#" title="header=[Tặng phẩm] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" title="" border="0" class="left_bt" /></a>           
        <a href="details.aspx" class="prod_details" title="header=[Xem chi tiết sản phẩm] body=[&nbsp;] fade=[on]">xem</a>            
        </div>                     
    </div> 

        <%--<object data=http://vatgia.com/hanoitechpro width="600" height="400"> 
            <embed src=http://vatgia.com/hanoitechpro width="600" height="400"></embed> 
            Error: Embedded data could not be displayed. 
        </object>--%>
    
</asp:Content>

