<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="vpp_details" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Src="RelatedProduct.ascx" TagPrefix ="usc" TagName="RelatedProduct" %>
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
<asp:DetailsView ID="dtvDetail" runat="server" AutoGenerateRows="False" GridLines="None" 
        BorderColor="White" BorderStyle="None" 
        >
<Fields>
<asp:TemplateField>
    <ItemTemplate>
    <div class="center_title_bar">Chi tiết sản phẩm</div>
	<div class="prod_box_big">
    	<div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
             <div class="product_img_big">
                
                <a href="../images/products/<%#Eval("Thumbnails")%>" style=""  class="jqzoom" title="xem chi tiết"  id="img_link"  style="border: 0px;">
		            <img alt="" src="../images/products/<%#Eval("Thumbnails")%>" id="img_main" width="170" height="170" style="border: 0px;"/>
                </a>
                 <div class="thumbs">
                    <asp:Repeater ID="rptComposition" runat="server">
                    <ItemTemplate>
                         <a href="../images/products/<%#Eval("ImageUrl")%>" title="header=[Thumb1] body=[&nbsp;] fade=[on]" onclick="swap(this); return false;">
                            <img src="../images/products/<%#Eval("ImageUrl")%>" alt="" title="" border="0" width="28" height="28" style="border: 0px;"/>
                         </a>
                     </ItemTemplate>   
                    </asp:Repeater> 
                 </div>
             </div>
         <div class="details_big_box">
             <div class="product_title_big">
                <asp:Panel runat="server" ID="pnlEditProductPanel" Visible="false">
                    <a href="../adm/editProduct.aspx?prodId=<%#Eval("ProductId")%>" target="_blank" class="edit_product">[Sửa sản phẩm này]</a>
                    <br /><br />
                </asp:Panel>
                
                <%#Eval("ProductName")%>
             </div>
             <div class="specifications">
                Hãng sản xuất: <span class="blue"><%#Eval("MadeBy")%></span><br />
            
                Bảo hành: <span class="blue"><%#Eval("Warranty")%> tháng</span><br />
                
                Tình trạng: <span class="blue"><%#Eval("Quality")%></span><br />
                
                Chi phí vận chuyển <span class="blue"><%#Eval("TransportCost")%> VNĐ</span><br />
                Cập nhật ngày: <span class="blue"><%#Eval("CreateDate")%></span><br />
             </div>
             <div class="prod_price_big"><span class="reduce">
                    <%#String.Format("{0:0,0}",Eval("Price"))%> &nbsp;VNĐ
                </span>
                <span class="price">
                    <%#String.Format("{0:0,0}", Eval("PromotionPrice"))%> &nbsp;VNĐ
                </span>
                <asp:UpdatePanel runat="server" ID="upnEditPrice" Visible="false">
                    <ContentTemplate>
                        <asp:LinkButton ID="btnGetPassword" CssClass="edit_product" runat="server" Text="[Sửa giá]" OnClick="btnEditPriceToogle_Click"/>
                        <asp:Panel runat="server" ID="pnlEditPrice" Visible="false">
                            <br />
                            <asp:TextBox ID="txtPrice" runat="server" Width="130px" Text="<%#Eval("PromotionPrice")%>" Height="20px" ValidationGroup="MKE" ></asp:TextBox>
                            &nbsp; VNĐ
                            <asp:MaskedEditExtender ID="MaskedEditExtender2" runat="server"
                                TargetControlID="txtPrice"
                                Mask="999,999,999"
                                MessageValidatorTip="true"
                                OnFocusCssClass="MaskedEditFocus"
                                OnInvalidCssClass="MaskedEditError"
                                MaskType="Number"
                                InputDirection="LeftToRight"
                                
                                AcceptNegative="Right"
                                ErrorTooltipEnabled="True" />
                            <asp:MaskedEditValidator ID="MaskedEditValidator2" runat="server"
                                ControlExtender="MaskedEditExtender2"
                                ControlToValidate="txtPrice"
                                IsValidEmpty="False"
                                EmptyValueMessage="Hãy nhập giá"
                                InvalidValueMessage="Giá không hợp lệ"
                                MinimumValueMessage="Giá phải lớn hơn 0"
                                MinimumValue="1"
                                Display="Dynamic"
                                
                                EmptyValueBlurredText="*"
                                InvalidValueBlurredMessage="*"
                                MaximumValueBlurredMessage="*"
                                MinimumValueBlurredText="*"
                                ValidationGroup="MKE" />
                                
                                <br />
                            <asp:LinkButton ID="LinkButton1" CssClass="edit_product" runat="server" Text="[Lưu lại]" OnClick="btnEditPrice_Click"/>
                            <br /><br />
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
                
            </div>
                
             <a href="#" class="addtocart" title="header=[Cho vào giỏ hàng] body=[&nbsp;] fade=[on]">Cho vào giỏ</a>
             <%--<a href="#" class="compare" title="header=[So sánh sản phẩm] body=[&nbsp;] fade=[on]">So sánh</a>--%>
             
              <br /><br /><br /><br /><br /><br />
              
         </div>  
        </div>
        <div class="bottom_prod_box_big"></div>                                
    </div>
    <div class="center_title_bar">Thông số kỹ thuật</div>   
  	<div class="menu_area1">
  	    <asp:Panel runat="server" Width="540px" ScrollBars="Auto">
            <%#Eval("Description")%>
        </asp:Panel>
    </div>   
    
</ItemTemplate>   
</asp:TemplateField>
</Fields> 
</asp:DetailsView>  
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
                <div class="center_title_bar">
                    <asp:Label ID="Label2" Font-Bold="true" runat="server" Text="Đánh giá và chia sẻ về chất lượng sản phẩm"></asp:Label>
                 </div>
                <div style="float: left;">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
<%--                <div style="float: right; vertical-align: middle;">
                    <asp:ImageButton ID="Image1" runat="server" ImageUrl="../images/products/expand_blue.jpg" AlternateText="(Show Details...)"/>
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
                    <label class="review">
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
        </ContentTemplate> 
        </asp:UpdatePanel>                          
<usc:RelatedProduct runat="server" ID="uscRelatedProduct" />
        <%--<object data=http://vatgia.com/hanoitechpro width="600" height="400"> 
            <embed src=http://vatgia.com/hanoitechpro width="600" height="400"></embed> 
            Error: Embedded data could not be displayed. 
        </object>--%>
    
</asp:Content>

