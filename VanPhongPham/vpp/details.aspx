<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="vpp_details" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <%--<script src="js/prototype.js" type="text/javascript"></script>
    <script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>
    <script src="js/lightbox.js" type="text/javascript"></script>--%>
    <%--<script type="text/javascript" src="js/java.js"></script>--%>
  
  
   <!-- Zoom anh kieu ImageLens -->
    <script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/jquery.imageLens.js" type="text/javascript"></script>
   <script type="text/javascript" language="javascript">
       $(function() {
           $("#img_01").imageLens();
           $("#img_02").imageLens({ lensSize: 200 });
           
       });	
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
            <%-- <a class="thumbnail" href="images/laptop.gif"  rel="lightbox" title="Ảnh phóng to">
                <img src="images/laptop.gif" alt="" title="" border="0"/>
             </a>--%>
          <p>
				<img alt ="" id="img_02" src="images/big_pic.jpg" width="150" height="180" />
				</p>
				<div class ="hideText">$("#img_02").imageLens();</div>
             
        
             <%--<a href="javascript:popImage('images/big_pic.jpg','Some Title')" title="header=[Zoom] body=[&nbsp;] fade=[on]">
                <img src="images/laptop.gif" alt="" title="" border="0" />
             </a>--%>
             <div class="thumbs">
             <a href="#" title="header=[Thumb1] body=[&nbsp;] fade=[on]"><img src="images/thumb1.gif" alt="" title="" border="0" /></a>
             <a href="#" title="header=[Thumb2] body=[&nbsp;] fade=[on]"><img src="images/thumb1.gif" alt="" title="" border="0" /></a>
             <a href="#" title="header=[Thumb3] body=[&nbsp;] fade=[on]"><img src="images/thumb1.gif" alt="" title="" border="0" /></a>
             <a href="#" title="header=[Thumb3] body=[&nbsp;] fade=[on]"><img src="images/thumb1.gif" alt="" title="" border="0" /></a>
             <a href="#" title="header=[Thumb3] body=[&nbsp;] fade=[on]"><img src="images/thumb1.gif" alt="" title="" border="0" /></a>
             <a href="#" title="header=[Thumb3] body=[&nbsp;] fade=[on]"><img src="images/thumb1.gif" alt="" title="" border="0" /></a>
             <a href="#" title="header=[Thumb3] body=[&nbsp;] fade=[on]"><img src="images/thumb1.gif" alt="" title="" border="0" /></a>
             <a href="#" title="header=[Thumb3] body=[&nbsp;] fade=[on]"><img src="images/thumb1.gif" alt="" title="" border="0" /></a>
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

        <div class="comment">
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
                    <br /><br />
        <asp:UpdatePanel runat="server" ID="up1">
        <ContentTemplate>
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
            <div style="padding:5px; cursor: pointer; vertical-align: middle;">
                <div style="float: left;">
                    <asp:Label ID="Label2" ForeColor="blue" Font-Bold="true" runat="server" Text="Đánh giá về chất lượng sản phẩm và dịch vụ"></asp:Label>
                 </div>
                <div style="float: left;">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
<%--                <div style="float: right; vertical-align: middle;">
                    <asp:ImageButton ID="Image1" runat="server" ImageUrl="images/expand_blue.jpg" AlternateText="(Show Details...)"/>
                </div>--%>
            </div>
        </asp:Panel>
        </div>
        <div style="float:left; margin-top: 20px;">
        <asp:Panel id="description_ContentPanel" runat="server" style="overflow:hidden;">
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
                <div class="form_row">
                    <label class="contact">
                        <strong>
                            <asp:Label ID="lblNameReview" runat="server" Text="Name:"></asp:Label>
                        </strong>
                    </label>
                    <asp:TextBox ID="txtNameReview" runat="server" CssClass="contact_input"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ControlToValidate="txtNameReview" runat="server" 
                        ID="RqValidator1" ErrorMessage="Input name" ValidationGroup="group1" SetFocusOnError="true" Text="*" >
                    </asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="Rq_ValidatorCalloutExtender" runat="server" 
                        Enabled="True" TargetControlID="RqValidator1">
                    </asp:ValidatorCalloutExtender>
                </div>  

                <div class="form_row">
                    <label class="contact">
                        <strong>
                            <asp:Label ID="lblEmailReview" runat="server" Text="Email:"></asp:Label>
                        </strong>
                    </label>
                    <asp:TextBox ID="txtEmailReview" runat="server" CssClass="contact_input"></asp:TextBox>&nbsp;
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
                <div class="form_row">
                    <label class="contact">
                        <strong>
                            <asp:Label ID="lblMessageReview" runat="server" Text="Message:"></asp:Label>
                        </strong>
                    </label>
                    <asp:TextBox ID="txtMessageReview" TextMode="MultiLine" runat="server" CssClass="textarea_input"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ControlToValidate="txtMessageReview" SetFocusOnError="true" runat="server" 
                        ID="RqValidator3" ErrorMessage="Input message" ValidationGroup="group1" Text="*" ></asp:RequiredFieldValidator>
                    <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" 
                        Enabled="True" TargetControlID="RqValidator3">
                    </asp:ValidatorCalloutExtender>
                </div>

                <div class="form_row">
                    <asp:Button ID="btnSubmitRate" runat="server" ValidationGroup="group1" OnClick="btnSubmitRate_Click" CssClass="register" Text="- Đánh giá -" />
                </div> 
                    
            </asp:Panel>
            </div>
        </ContentTemplate> 
        </asp:UpdatePanel>
       
        </div>
                
        </div>
        <div class="bottom_prod_box_big"></div>                                
    </div>

    <div class="center_title_bar">Similar products</div>
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

