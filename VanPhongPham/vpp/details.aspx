<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="vpp_details" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    
    
    <script src="js/prototype.js" type="text/javascript"></script>
    <script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>
    <script src="js/lightbox.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/java.js"></script>
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
                 <a href="images/laptop.gif"  rel="lightbox" title="header=[Phóng to ảnh] body=[&nbsp;] fade=[on]">
                    <img src="images/laptop.gif" alt="" title="" border="0"/>
                 </a>
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
                         
                          <br /><br />
                     </div>    
                    <div class="comment">
        <asp:UpdatePanel runat="server" ID="up1">
        <ContentTemplate>
            <asp:Accordion ID="MyAccordion" runat="server" SelectedIndex="0" 
            HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected"
            ContentCssClass="accordionContent" FadeTransitions="true" FramesPerSecond="40" 
            TransitionDuration="250" AutoSize="None" RequireOpenedPane="false" SuppressHeaderPostbacks="true">
            <Panes>
            <asp:AccordionPane ID="AccordionPane1" runat="server">
            <Header>
                <asp:Label ID="Label1" ForeColor="#a81f22" Font-Bold="true" runat="server" Text="Đánh giá và chia sẻ về sản phẩm "></asp:Label>
                
            </Header>
            <Content>
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
                        <%--<asp:Button ID="btnSubmitRate" runat="server" ValidationGroup="group1" OnClick="btnSubmitRate_Click" CssClass="register" Text="- Submit -" />--%>
                    </div> 
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
                        
                </Content>

                </asp:AccordionPane>
                </Panes>
            </asp:Accordion>
                    
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
                 <div class="product_title"><a href="details.html">Motorola 156 MX-VL</a></div>
                 <div class="product_img"><a href="details.html"><img src="images/laptop.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>             
            <div class="prod_details_tab">
            <a href="#" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="#" title="header=[Ưu đãi đặc biệt] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="#" title="header=[Tặng phẩm] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" title="" border="0" class="left_bt" /></a>           
            <a href="details.html" class="prod_details" title="header=[Xem chi tiết sản phẩm] body=[&nbsp;] fade=[on]">xem</a>            
            </div>                     
        </div>
    
    
 
     	<div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">            
                 <div class="product_title"><a href="details.html">Iphone Apple</a></div>
                 <div class="product_img"><a href="details.html"><img src="images/p4.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="price">270$</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>             
            <div class="prod_details_tab">
            <a href="#" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="#" title="header=[Ưu đãi đặc biệt] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="#" title="header=[Tặng phẩm] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" title="" border="0" class="left_bt" /></a>           
            <a href="details.html" class="prod_details" title="header=[Xem chi tiết sản phẩm] body=[&nbsp;] fade=[on]">xem</a>            
            </div>                     
        </div>
 
     	<div class="prod_box">
        	<div class="top_prod_box"></div>
            <div class="center_prod_box">            
                 <div class="product_title"><a href="details.html">Samsung Webcam</a></div>
                 <div class="product_img"><a href="details.html"><img src="images/p5.gif" alt="" title="" border="0" /></a></div>
                 <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>
            <div class="prod_details_tab">
            <a href="#" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]"><img src="images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="#" title="header=[Ưu đãi đặc biệt] body=[&nbsp;] fade=[on]"><img src="images/favs.gif" alt="" title="" border="0" class="left_bt" /></a>
            <a href="#" title="header=[Tặng phẩm] body=[&nbsp;] fade=[on]"><img src="images/favorites.gif" alt="" title="" border="0" class="left_bt" /></a>           
            <a href="details.html" class="prod_details" title="header=[Xem chi tiết sản phẩm] body=[&nbsp;] fade=[on]">xem</a>            
            </div>                     
        </div> 
        <div>
            <%--<object data=http://vatgia.com/hanoitechpro width="600" height="400"> 
                <embed src=http://vatgia.com/hanoitechpro width="600" height="400"></embed> 
                Error: Embedded data could not be displayed. 
            </object>--%>
        </div>
</asp:Content>

