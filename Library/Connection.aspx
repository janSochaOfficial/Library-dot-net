<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connection.aspx.cs" Inherits="Library.Connection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lbTitle" runat="server" Text="Łączenie z bazą danych" CssClass="Titile"></asp:Label>
        <div class="input-pair">
            <asp:Label ID="lbServer" runat="server" Text="nazwa serwera"></asp:Label>
            <asp:TextBox ID="tbServer" runat="server"></asp:TextBox>
        </div>
        <div class="input-pair">
            <asp:Label ID="lbDatabase" runat="server" Text="Baza danych"></asp:Label>
            <asp:TextBox ID="tbDatabase" runat="server"></asp:TextBox>
        </div>
        <div class="input-pair">
            <asp:Label ID="lbUser" runat="server" Text="nazwa urzytkownika"></asp:Label>
            <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
        </div>
        <div class="input-pair">
            <asp:Label ID="lbPassword" runat="server" Text="hasło"></asp:Label>
            <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btConnect" runat="server" Text="Połącz" OnClick="btConnect_Click" />
        <asp:Label ID="lbError" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
