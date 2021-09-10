<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ControlWeb1._0.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;<asp:Label ID="Ctrl" runat="server" BorderStyle="Dashed" Text="Test Border"></asp:Label>
            <br />
            <br />
&nbsp;<asp:CheckBoxList ID="chklst" runat="server">
            </asp:CheckBoxList>
            <br />
&nbsp;<br />
            <br />
            <br />
            <br />
            <asp:Button ID="cmdOK" runat="server" Text="Button" OnClick="cmdOK_Click" />
        
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
            <br />
        
        </div>
    </form>
</body>
</html>
