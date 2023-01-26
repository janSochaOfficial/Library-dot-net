<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addRecord.aspx.cs" Inherits="Library.addRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="addForm" runat="server">
        <div>
            <asp:Label ID="lbAuthors" runat="server" Text="Authors"></asp:Label>
            <asp:TextBox ID="tbAuthors" runat="server"></asp:TextBox>
            <asp:Label ID="lbTitle" runat="server" Text="Title"></asp:Label>
            <asp:TextBox ID="tbTitle" runat="server"></asp:TextBox>
            <asp:Label ID="lbRealese" runat="server" Text="Relase"></asp:Label>
            <asp:TextBox ID="tbRealese" runat="server"></asp:TextBox>
            <asp:Label ID="lbIsbm" runat="server" Text="ISBM"></asp:Label>
            <asp:TextBox ID="tbIsbm" runat="server"></asp:TextBox>
            <asp:Label ID="lbFormat" runat="server" Text="Format"></asp:Label>
            <asp:TextBox ID="tbFormat" runat="server" MaxLength="3"></asp:TextBox>
            <asp:Label ID="lbPages" runat="server" Text="Pages"></asp:Label>
            <asp:TextBox ID="tbPages" runat="server"></asp:TextBox>
            <asp:Label ID="lbDescription" runat="server" Text="Description"></asp:Label>
            <asp:TextBox ID="tbDescription" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
            <asp:Button ID="btnAdd" runat="server" Text="Button" OnClick="btnAdd_Click" />
        </div>
        
    </form>
</body>
</html>
