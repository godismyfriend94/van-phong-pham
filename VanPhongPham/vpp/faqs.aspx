<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="faqs.aspx.cs" Inherits="vpp_faqs" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang câu hỏi thường gặp</span>
    </div> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
    <div class="center_title_bar">Các câu hỏi thường gặp</div>
    <div class="menu_area1">
    <asp:Accordion ID="MyAccordion" runat="server" SelectedIndex="0"
            HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected"
            ContentCssClass="accordionContent" FadeTransitions="false" FramesPerSecond="40" 
            TransitionDuration="250" AutoSize="None" RequireOpenedPane="false" SuppressHeaderPostbacks="true">
           <Panes>
           <%--<asp:DataList ID="lstvFaq" RepeatDirection="Vertical" runat="server">
            <ItemTemplate>--%>
            <asp:AccordionPane ID="AccordionPane1" runat="server">
                <Header>
                <div style="text-align:left; font-size: 12px; margin-bottom: 10px;">
                    <a style="text-decoration: none;" href="#">
                        <asp:Image ID="Image3" runat="server" ImageUrl="images/Question-icon.jpg" Width="30px" Height="30px" />
                        <asp:Label ID="Label3" runat="server" Text="Câu hỏi: " ForeColor="#941921" Font-Bold="true"></asp:Label>
                        Hoa Hồng luôn là biểu tượng của tình yêu và sự đam mê.Hoa Hồng luôn là ff ff ff ff ff ff ff ff ff ff ff ff ff.
                        <%--<asp:Label ID="lblQuestionFAQ" runat="server" ForeColor="#333333" Font-Bold="true" Text='<%#Eval("Question") %>'></asp:Label>--%>
                    </a>
                </div>
                </Header>
                <Content>
                    <p style="color: #333333;text-align:left; font-size: 12px; margin-bottom: 10px;">
                    <asp:Label ID="Label4" runat="server" ForeColor="Green" Font-Bold="true" Text="Trả lời: "></asp:Label>
                    Hoa Hồng luôn là biểu tượng của tình yêu và sự đam mê. 
                    Theo truyền thuyết, nữ thần Ái tình của Hy Lạp đã tặng một bông hồng cho Eros, vị thần Ái tình. 
                    Ngày nay, những bông hồng có thể truyền đạt những ẩn ý tình cảm khác nhau.
                    <%--<%#Eval("Answer") %>--%>
                    </p>
                </Content>
            </asp:AccordionPane>
            
            <asp:AccordionPane ID="AccordionPane2" runat="server">
                <Header>
                <div style="text-align:left; font-size: 12px; margin-bottom: 10px;">
                    <a style="text-decoration: none;" href="#">
                        <asp:Image ID="Image1" runat="server" ImageUrl="images/Question-icon.jpg" Width="30px" Height="30px" />
                        <asp:Label ID="Label1" runat="server" Text="Câu hỏi: " ForeColor="#941921" Font-Bold="true"></asp:Label>
                        Hoa Hồng luôn là biểu tượng của tình yêu và sự đam mê.Hoa Hồng luôn là biểu tượng của tình yêu và sự đam mê.
                        <%--<asp:Label ID="lblQuestionFAQ" runat="server" ForeColor="#333333" Font-Bold="true" Text='<%#Eval("Question") %>'></asp:Label>--%>
                    </a>
                </div>
                </Header>
                <Content>
                    <p style="color: #333333;text-align:left; font-size: 12px; margin-bottom: 10px;">
                    <asp:Label ID="Label2" runat="server" ForeColor="Green" Font-Bold="true" Text="Trả lời: "></asp:Label>
                    Hoa Hồng luôn là biểu tượng của tình yêu và sự đam mê. 
                    Theo truyền thuyết, nữ thần Ái tình của Hy Lạp đã tặng một bông hồng cho Eros, vị thần Ái tình. 
                    Ngày nay, những bông hồng có thể truyền đạt những ẩn ý tình cảm khác nhau.
                    <%--<%#Eval("Answer") %>--%>
                    </p>
                </Content>
            </asp:AccordionPane>
            
            <asp:AccordionPane ID="AccordionPane3" runat="server">
                <Header>
                <div style="text-align:left; font-size: 12px; margin-bottom: 10px;">
                    <a style="text-decoration: none;" href="#">
                        <asp:Image ID="Image2" runat="server" ImageUrl="images/Question-icon.jpg" Width="30px" Height="30px" />
                        <asp:Label ID="Label5" runat="server" Text="Câu hỏi: " ForeColor="#941921" Font-Bold="true"></asp:Label>
                        Hoa Hồng luôn là biểu tượng của tình yêu và sự đam mê.Hoa Hồng luôn là biểu tượng của tình yêu và sự đam mê.
                        <%--<asp:Label ID="lblQuestionFAQ" runat="server" ForeColor="#333333" Font-Bold="true" Text='<%#Eval("Question") %>'></asp:Label>--%>
                    </a>
                </div>
                </Header>
                <Content>
                    <p style="color: #333333;text-align:left; font-size: 12px; margin-bottom: 10px;">
                    <asp:Label ID="Label6" runat="server" ForeColor="Green" Font-Bold="true" Text="Trả lời: "></asp:Label>
                    Hoa Hồng luôn là biểu tượng của tình yêu và sự đam mê. 
                    Theo truyền thuyết, nữ thần Ái tình của Hy Lạp đã tặng một bông hồng cho Eros, vị thần Ái tình. 
                    Ngày nay, những bông hồng có thể truyền đạt những ẩn ý tình cảm khác nhau.
                    <%--<%#Eval("Answer") %>--%>
                    </p>
                </Content>
            </asp:AccordionPane>
            
            <asp:AccordionPane ID="AccordionPane4" runat="server">
                <Header>
                <div style="text-align:left; font-size: 12px; margin-bottom: 10px;">
                    <a style="text-decoration: none;" href="#">
                        <asp:Image ID="Image4" runat="server" ImageUrl="images/Question-icon.jpg" Width="30px" Height="30px" />
                        <asp:Label ID="Label7" runat="server" Text="Câu hỏi: " ForeColor="#941921" Font-Bold="true"></asp:Label>
                        Hoa Hồng luôn là biểu tượng của tình yêu và sự đam mê.Hoa Hồng luôn là biểu tượng của tình yêu và sự đam mê.
                        <%--<asp:Label ID="lblQuestionFAQ" runat="server" ForeColor="#333333" Font-Bold="true" Text='<%#Eval("Question") %>'></asp:Label>--%>
                    </a>
                </div>
                </Header>
                <Content>
                    <p style="color: #333333;text-align:left; font-size: 12px; margin-bottom: 10px;">
                    <asp:Label ID="Label8" runat="server" ForeColor="Green" Font-Bold="true" Text="Trả lời: "></asp:Label>
                    Hoa Hồng luôn là biểu tượng của tình yêu và sự đam mê. 
                    Theo truyền thuyết, nữ thần Ái tình của Hy Lạp đã tặng một bông hồng cho Eros, vị thần Ái tình. 
                    Ngày nay, những bông hồng có thể truyền đạt những ẩn ý tình cảm khác nhau.
                    <%--<%#Eval("Answer") %>--%>
                    </p>
                </Content>
            </asp:AccordionPane>
            <%--            </ItemTemplate>
         </asp:DataList>--%>
            </Panes>
        </asp:Accordion>
    </div>
</asp:Content>

