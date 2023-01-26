<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connection.aspx.cs" Inherits="Library.Connection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="btConnect" runat="server" OnClick="btConnect_Click" Text="Button" />
        <p>
            <asp:Label ID="lbInfo" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
