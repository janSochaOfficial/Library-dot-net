<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="Library.userLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="input-pair">
                <asp:Label ID="lbUser" runat="server" Text="Nazwa użytkownika"></asp:Label>
                <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbPassword" runat="server" Text="hasło"></asp:Label>
                <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
            </div>
            <asp:Label ID="lbInfo" runat="server" Text=""></asp:Label>

            <asp:Button ID="btnSubmit" runat="server" Text="Loguj" OnClick="btnSubmit_Click" />

            <p>
                Nie masz konta?
                <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="~/userRegister.aspx">Stwórz je!</asp:HyperLink>    
            </p>
            

        </div>
        
    </form>
</body>
</html>
