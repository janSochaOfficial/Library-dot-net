<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connection.aspx.cs" Inherits="Library.Connection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="styles/global.css" rel="stylesheet" type="text/css" />
    <link href="styles/form-site.css" rel="stylesheet" type="text/css" />
    <link href="styles/connection.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbTitle" runat="server" Text="Łączenie z bazą danych" CssClass="title"></asp:Label>
            <div class="input-pair">
                <asp:Label ID="lbServer" runat="server" Text="nazwa serwera"></asp:Label>
                <asp:TextBox ID="tbServer" runat="server"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbDatabase" runat="server" Text="Baza danych"></asp:Label>
                <asp:TextBox ID="tbDatabase" runat="server"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbUser" runat="server" Text="nazwa użytkownika"></asp:Label>
                <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbPassword" runat="server" Text="hasło"></asp:Label>
                <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btConnect" runat="server" Text="Połącz" OnClick="btConnect_Click" />
            <asp:Label ID="lbError" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
