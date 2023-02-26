<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userRegister.aspx.cs" Inherits="Library.userRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="styles/global.css" rel="stylesheet" type="text/css" />
    <link href="styles/form-site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbTitle" runat="server" Text="Rejestracja" CssClass="title"></asp:Label>
            <div class="input-pair">
                <asp:Label ID="lbEmail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbUser" runat="server" Text="Nazwa użytkownika"></asp:Label>
                <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbPassword" runat="server" Text="hasło"></asp:Label>
                <asp:TextBox ID="tbPassword" runat="server" passwordChar="*"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbPasswdConfirm" runat="server" Text="Powtórz hasło"></asp:Label>
                <asp:TextBox ID="tbPasswdConfirm" runat="server" passwordChar="*"></asp:TextBox>
            </div>
            <asp:Label ID="lbInfo" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnRegister" runat="server" Text="Zajerestruj się!" OnClick="btnRegister_Click" />
        </div>
    </form>
</body>
</html>
