<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="faqs.aspx.cs" Inherits="vpp_faqs" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang câu hỏi thường gặp</span>
    </div> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
    <!--Begin doan javascript xu ly cho left menu-->
    <div class="center_title_bar">Các câu hỏi thường gặp</div>
    <div class="menu_area1">
    <dl style="font-size: 12px; text-align: left; line-height: 25px; text-decoration: none;">
         <asp:DataList ID="lstvFaq" RepeatDirection="Vertical" runat="server">
            <ItemTemplate>
                <dt style="text-align:left; font-size: 12px;">
                    <a class="actived" style="text-decoration: none;" href="#">
                        <asp:Image ID="Image1" runat="server" ImageUrl="images/Question-icon.jpg" Width="30px" Height="30px" />
                        <asp:Label ID="lblFaqId" runat="server" Text="Câu hỏi: " ForeColor="#941921" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblQuestionFAQ" runat="server" Text='<%#Eval("Question") %>'></asp:Label>
                    </a>
                </dt>
                <dd style="text-align:left; font-size: 12px;">
                    <p style="color: #555555;">
                    <asp:Label ID="lblAnswerFAQ" runat="server" ForeColor="Green" Font-Bold="true" Text="Trả lời: "></asp:Label>
                    
                    <%#Eval("Answer") %>
                    </p>
                </dd>
            </ItemTemplate>
         </asp:DataList>
    </dl>    
    </div>
</asp:Content>

