<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Van phong pham</title>
</head>
<body>
    <form id="form1" runat="server">
    <embed title="" src="vpp/images/banner.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" wmode="transparent" type="application/x-shockwave-flash" height="200" width="1000"/>
    <div>
        <asp:Label ID="test" runat="server"></asp:Label>
        <asp:Button runat="server" ID="Download" onclick="Download_Click" Text="Download bao gia"/>
       
    </div>
    </form>
</body>
</html>
