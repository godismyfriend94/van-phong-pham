<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SlideShow.aspx.cs" Inherits="vpp_TestSlider" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
                  Height="92px" Width="94px" ImageUrl="images/laptop.png"
                  CssClass="oferta_img"/>   
                  
            <div class="oferta_details">                        
                <div class="oferta_title">
                    <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
                    
                </div>
                <div class="oferta_text">
                    <asp:Label ID="lblDesc" runat="server" Text=""></asp:Label>
                </div>
                <a href="details.aspx" class="details" title="header=[Xem chi tiết hơn] body=[&nbsp;] fade=[on]">chi tiết...</a>
            </div>   
            </div>
            <div class="oferta_pagination">
                <!--<span class="current">1</span>
                 <a href="#?page=2">2</a>
                 <a href="#?page=3">3</a>
                 <a href="#?page=3">4</a>
                 <a href="#?page=3">5</a> -->
                 <asp:LinkButton ID="btnPrev" runat="server" Text="<<" ToolTip ="Prev"/>
                 <asp:LinkButton ID="btnPlay" runat="server" Text="[]" ToolTip ="Play" />
                 <asp:LinkButton ID="btnNext" runat="server" Text=">>" ToolTip ="Next" />
            </div>
        </div>

    </form>
</body>
</html>
