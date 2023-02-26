<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerSucces.aspx.cs" Inherits="Library.registerSucces" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Rejestracja Udana!</h1>
            <p>
                Teraz możesz się 
                <asp:HyperLink NavigateUrl="~/userLogin.aspx" runat="server">zalogować</asp:HyperLink>!
            </p>
        </div>
    </form>
</body>
</html>
