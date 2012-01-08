<%@ Page Language="C#" MasterPageFile="UserMasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="vpp_register" Title="Untitled Page"  ErrorPage="errorpage.aspx"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cpld_crumb_navigator" Runat="Server">
    <div class="crumb_navigation">
        Bạn đang ở: <span class="current">trang đăng ký tài khoản</span>
    </div> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="plhd_Content" Runat="Server">
    <div class="center_title_bar">Đăng ký tài khoản mới</div>
	<div class="prod_box_big">
        	<div class="top_prod_box_big"></div>
            <div class="center_prod_box_big">      
              	<div class="contact_form_map">
                    
                   <form name="register" action="#">          
                    <div class="form_row">
                        <label class="contact">
                        <strong> 
                            <asp:Label ID="lblUserNameRegister" runat="server" Text="Tài khoản"></asp:Label>
                            </strong>
                        <asp:Label ID="Label3" runat="server" Text="(*)" ForeColor="Red"></asp:Label>
                        </label>
                        
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="contact_input" ValidationGroup="group1"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ControlToValidate="txtUserName" runat="server" 
                            ID="RqValidator1" ErrorMessage="Input username" ValidationGroup="group1" >*</asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="Rq_ValidatorCalloutExtender" runat="server" 
                            Enabled="True" TargetControlID="RqValidator1">
                        </asp:ValidatorCalloutExtender>
                    </div>  


                    <div class="form_row">
                        <label class="contact">
                        <strong> 
                            <asp:Label ID="lblPasswordRegister" runat="server" Text="Mật khẩu:"></asp:Label>
                            </strong>
                        <asp:Label ID="Label4" runat="server" Text="(*)" ForeColor="Red"></asp:Label>
                        </label>
                        
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="contact_input" TextMode="Password"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ControlToValidate="txtPassword" runat="server" 
                            ID="RequiredFieldValidator1" ErrorMessage="Input password" ValidationGroup="group1" >*
                        </asp:RequiredFieldValidator>
                      
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                        </asp:ValidatorCalloutExtender>
                        
                        <asp:PasswordStrength ID="PasswordStrength2" runat="server" TargetControlID="txtPassword"
                            DisplayPosition="BelowLeft"
                            StrengthIndicatorType="BarIndicator"
                            PreferredPasswordLength="12"
                            HelpStatusLabelID="TextBox2_HelpLabel"
                            StrengthStyles="
                                    BarIndicator_txtPassword_weak;
                                    BarIndicator_txtPassword_average;
                                    BarIndicator_txtPassword_good"
                            BarBorderCssClass="BarBorder_txtPassword"
                            
                            MinimumNumericCharacters="1"
                            MinimumSymbolCharacters="0"
                            TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
                            RequiresUpperAndLowerCaseCharacters="false" />
                    </div>
                    <div class="form_row">
                        <label class="contact">
                        <strong> 
                            <asp:Label ID="lblReType" runat="server" Text="Xác nhận mật khẩu:"></asp:Label>
                        </strong>
                        </label>
                        
                        <asp:TextBox ID="txtReType" runat="server" CssClass="contact_input" TextMode="Password"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ControlToValidate="txtReType" runat="server" 
                            ID="RequiredFieldValidator6" ErrorMessage="Re-type password" Text="*" ValidationGroup="group1" >
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtReType" 
                            ControlToCompare="txtPassword" ErrorMessage="Re-type not match..." Display="None" ValidationGroup="group1">
                        </asp:CompareValidator>
                        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" 
                            runat="server" Enabled="True" TargetControlID="CompareValidator1">
                        </asp:ValidatorCalloutExtender>
                      
                    </div>    
                    
                    <div class="form_row">
                        <label class="contact">
                        <strong> 
                            <asp:Label ID="lblFullNameRegister" runat="server" Text="Tên:"></asp:Label>
                            </strong>
                        <asp:Label ID="Label5" runat="server" Text="(*)" ForeColor="Red"></asp:Label>
                        </label>
                        
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="contact_input"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ControlToValidate="txtFullName" runat="server" 
                            ID="RequiredFieldValidator2" ErrorMessage="Input fullname" ValidationGroup="group1" >*
                        </asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                        </asp:ValidatorCalloutExtender>
                    </div> 
                    
                    <div class="form_row">
                        <label class="contact">
                        <strong> 
                            <asp:Label ID="lblBirthDayRegister" runat="server" Text="Ngày sinh:"></asp:Label>
                        </strong>
                        </label>
                        
                        <%--<asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="contact_input"></asp:TextBox>
                        &nbsp;
                        <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" Format="MM/dd/yyyy" 
                                Enabled="True" TargetControlID="txtDateOfBirth">
                        </asp:CalendarExtender>
                        <asp:RequiredFieldValidator ControlToValidate="txtDateOfBirth" runat="server" 
                            ID="RequiredFieldValidator5" ErrorMessage="Input date of birth" 
                            ValidationGroup="group1" >*
                        </asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                        </asp:ValidatorCalloutExtender>--%>
                        <asp:TextBox ID="txtDateOfBirth" runat="server" Width="130px" Height="20" MaxLength="1" style="text-align:justify" ValidationGroup="MKE" />
                        <asp:ImageButton ID="ImgBntCalc" runat="server" ImageUrl="../images/gui/Calendar_scheduleHS.png" CausesValidation="False" />
                        <asp:MaskedEditExtender ID="MaskedEditExtender5" runat="server"
                            TargetControlID="txtDateOfBirth"
                            Mask="99/99/9999"
                            MessageValidatorTip="true"
                            OnFocusCssClass="MaskedEditFocus"
                            OnInvalidCssClass="MaskedEditError"
                            MaskType="Date"
                            DisplayMoney="Left"
                            AcceptNegative="Left"
                            ErrorTooltipEnabled="True" />
                        <asp:MaskedEditValidator ID="MaskedEditValidator5" runat="server"
                            ControlExtender="MaskedEditExtender5"
                            ControlToValidate="txtDateOfBirth"
                            InvalidValueMessage="Ngày không hợp lệ"
                            Display="Dynamic"
                            InvalidValueBlurredMessage="Ngày không hợp lệ"
                            ValidationGroup="MKE" />
                         <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDateOfBirth" PopupButtonID="ImgBntCalc" />
                        
                    </div>
                    
                    <div class="form_row">
                        <label class="contact">
                        <strong> 
                            <asp:Label ID="lblGenderRegister" runat="server" Text="Giới tính:"></asp:Label>
                        </strong>
                        </label>
                        <asp:RadioButton ID="rbnMaleRegister" runat="server" Text=" Nam" 
                            GroupName="gender" Checked="True"/>&nbsp;&nbsp;
                        
                        <asp:RadioButton ID="rbnFemaleRegister" runat="server" Text=" Nữ" GroupName="gender"/>
                    </div>

                    <div class="form_row">
                        <label class="contact">
                        <strong> 
                            <asp:Label ID="lblAddressRegister" runat="server" Text="Địa chỉ:"></asp:Label>
                            </strong>
                        <asp:Label ID="Label6" runat="server" Text="(*)" ForeColor="Red"></asp:Label>
                        </label>
                        
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="contact_input" TextMode="MultiLine" Columns="25" Rows="3"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ControlToValidate="txtAddress" runat="server" 
                            ID="RequiredFieldValidator3" ErrorMessage="Input address" ValidationGroup="group1" >*
                        </asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                        </asp:ValidatorCalloutExtender>
                    </div> 
                    
                    <div class="form_row">
                        <label class="contact">
                        <strong> 
                            <asp:Label ID="lblPhoneRegister" runat="server" Text="Điện thoại:"></asp:Label>
                            </strong>
                        <asp:Label ID="Label7" runat="server" Text="(*)" ForeColor="Red"></asp:Label>
                        </label>
                        
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="contact_input"></asp:TextBox>
                        &nbsp;
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ValidationGroup="group1"
                                ErrorMessage="Input phone number" ControlToValidate="txtPhone">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPhone" runat="server" SetFocusOnError="true"
                                ErrorMessage="Invalid phone number" ValidationExpression="\d+" ControlToValidate="txtPhone" ValidationGroup="group1">*</asp:RegularExpressionValidator>
                            <asp:ValidatorCalloutExtender ID="vcePhone" 
                                runat="server" Enabled="True" TargetControlID="rfvPhone" PopupPosition="TopLeft">
                            </asp:ValidatorCalloutExtender>
                            <asp:ValidatorCalloutExtender ID="vcePhone2" 
                                runat="server" Enabled="True" TargetControlID="revPhone" PopupPosition="TopLeft">
                            </asp:ValidatorCalloutExtender>
                    </div> 
                    
                    <div class="form_row">
                        <label class="contact">
                        <strong> 
                            <asp:Label ID="lblEmailRegister" runat="server" Text="Email:"></asp:Label>
                            
                        </strong>
                        <asp:Label ID="Label11" runat="server" Text="(*)" ForeColor="Red"></asp:Label>
                        </label>
                        
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="contact_input"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ControlToValidate="txtEmail" runat="server" 
                            ID="RequiredFieldValidator4" ErrorMessage="Input your email" ValidationGroup="group1" >*
                        </asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
                        </asp:ValidatorCalloutExtender>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                            runat="server" ErrorMessage="Email is not valid" Text=" *" 
                            ControlToValidate="txtEmail" SetFocusOnError="true" ValidationGroup="group1" 
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>
                    </div>  
                            
                    <div class="form_row">
                        <label class="contact">
                        </label>
                        <div class="terms">
                            <asp:CheckBox ID="chbTermCondition" Checked="true" runat="server" Text=" Tôi đồng ý với các điều khoản sử dụng" />
                        </div>
                    </div> 

                    <div class="form_row">
                        <asp:LinkButton ID="btnRegister" CssClass="contact" runat="server" Text="Đăng ký" 
                            onclick="btnRegister_Click" ValidationGroup="group1" />
                    </div>  
                    <br />
                    
                </form>     
                    
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
                <asp:Label ID="Label2" Font-Bold="true" runat="server" Text="Điều khoản sử dụng tài khoản"></asp:Label>
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
                <asp:Panel runat="server" ScrollBars="Auto" Width="520">
                    Quy định liên quan đến thành viên Điều 1 : Đăng ký thành viên Thành viên đăng ký tài khoản trong www.vatgia.com là người đã đăng ký tài khoản sử dụng theo các bước quy định của công ty Cổ phần vật giá Việt Nam (Dưới đây viết tắt là công ty), và được công ty chấp nhận sự đăng ký đó. Điều 2 : Bản quy định Tất cả các thành viên khi đăng ký, và sau khi đi đăng ký đều phải tuân thủ những quy định này Điều 3 : Thay đổi quy định Công ty chúng tôi có thể thay đổi quy định theo các chính sách của công ty. Khi có thay đổi, chúng tôi sẽ đăng tải lên www.vatgia.com, và sau khi đăng lên coi như quy định đó có hiệu lực. Sau khi quy định thay đổi, nếu thành viên sử dụng www.vatgia.com thì chúng tôi coi thành viên đã chấp nhận tất cả các quy định mới. Điều 4 : Tư cách thành viên, và các bước đăng ký tài khoản sử dụng Tư cách thành viên :Thành viên sau khi đồng ý quy định này và kết thúc đăng ký tài khoản sử dụng trên www.vatgia.com được coi là thành viên của www.vatgia.com. Thành viên chỉ đăng ký tài khoản sử dụng cho bản thân, không được đăng ký hộ cho người khác. Chúng tôi có thể từ chối việc đăng ký làm thành viên của những thành viên đã từng bị hủy bỏ tư cách thành viên trên www.vatgia.com. Bước đăng ký tài khoản :Thành viên phải đọc rõ các lưu ý, và điền chính xác nội dung thông tin cần thiết vào bản đăng ký mẫu. Điều 5 : Thay đổi thông tin đăng ký Sau khi đăng ký các thành viên có thể thay đổi thông tin đã đăng ký theo các bước đã quy định. Chúng tôi không chịu bất kỳ trách nhiệm gì về những phát sinh liên quan đến việc thay đổi thông tin của các thành viên. Điều 6 : Quản lý tài khoản và mật khẩu Thành viên sau khi đăng ký phải có trách nhiệm tự quản lý tên tài khoản và mật khẩu. Thành viên phải có nghĩa vụ thay đổi mật khẩu định kỳ, công ty chúng tôi không chịu trách nhiệm về những tổn hại phát sinh nếu thành viên mất mật khẩu do không thay đổi. Thành viên phải có trách nhiệm tự bảo quản về tài khoản và mật khẩu của mình, nếu thành viên không quản lý tốt để người thứ ba lấy được thông tin, chúng tôi không chịu trách nhiệm về bất ký những tổn thất phát sinh do việc để mất thông tin trên gây ra. Thành viên không được cho người khác mượn sử dụng, bán, chuyển nhượng lại tài khoản và mật khẩu. Nếu trong một thời gian nhất định chúng tôi thấy rằng tài khoản và mật khẩu của thành viên không được sử dụng, chúng tôi có thể tạm ngưng việc sử dụng tài khoản đó. Trong trường hợp khẩn cấp, chúng tôi có thể xóa tài khoản và mật khẩu của thành viên mà không cần được thành viên chấp thuận. Và chúng tôi cũng không chịu trách nhiệm về sự tổn hại phát sinh từ việc thành viên không quản lý được tài khoản của mình. Điều 7 : Sử dụng thông tin đăng ký Thông tin do các thành viên đăng ký lên www.vatgia.com sẽ thuộc quyền sở hữu của công ty Cổ phần vật giá Việt Nam, được quản lý và sử dụng theo các chính sách về bảo vệ thông tin cá nhân của công ty. Một phần thông tin của các thành viên sẽ được sử dụng làm số liệu thống kê ở mức độ sẽ không phân biệt được từng cá nhân. Trong trường hợp nếu chúng tôi sử dụng thông tin của các thành viên ở mức độ cao hơn thì chúng tôi sẽ thông báo với thành viên đó. Khi thành viên có hành vi gây tổn hại đến các thành viên khác hoặc người thứ ba, chúng tôi có thể cung cấp thông tin cá nhân của thành viên đó cho 
                </asp:Panel>
            </div>
            </div>
            <div class="bottom_prod_box_big"></div>                                
            </div>
        </asp:Panel>
        </div>
        <%--</ContentTemplate> 
        </asp:UpdatePanel>--%>
</asp:Content>

