<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="Library.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="styles/global.css" rel="stylesheet" type="text/css" />
    <link href="styles/form-site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" action="ShowData.aspx" method="get">
        <div>
            <asp:Label ID="lbH" runat="server" Text="Wyszukiwanie rekordów" CssClass="title"></asp:Label>
            <div class="input-pair">
                <asp:Label ID="lbAuthors" runat="server" Text="Authors"></asp:Label>
                <asp:TextBox ID="tbAuthors" runat="server"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbTitle" runat="server" Text="Title"></asp:Label>
                <asp:TextBox ID="tbTitle" runat="server"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbRealese" runat="server" Text="Relase"></asp:Label>
                <asp:TextBox ID="tbRealese" runat="server"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbIsbm" runat="server" Text="ISBM"></asp:Label>
                <asp:TextBox ID="tbIsbm" runat="server"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbFormat" runat="server" Text="Format"></asp:Label>
                <asp:TextBox ID="tbFormat" runat="server" MaxLength="3"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbPages" runat="server" Text="Pages"></asp:Label>
                <asp:TextBox ID="tbPages" runat="server"></asp:TextBox>
            </div>
            <div class="input-pair">
                <asp:Label ID="lbDescription" runat="server" Text="Description"></asp:Label>
                <asp:TextBox ID="tbDescription" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
            </div>
            <asp:Button ID="btnSearch" runat="server" Text="Szukaj" OnClick="btnSearch_Click" />
        </div>
    </form>
    <asp:HyperLink NavigateUrl="~/ShowData.aspx" runat="server" CssClass="btn back-btn">Powrót</asp:HyperLink>
</body>
</html>
