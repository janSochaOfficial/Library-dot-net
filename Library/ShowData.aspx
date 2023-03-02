<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowData.aspx.cs" Inherits="Library.ShowData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="styles/global.css" rel="stylesheet" type="text/css" />
    <link href="styles/showData.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" visible="True">
        <div>
            <asp:Label ID="lbInfo" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:ButtonField CommandName="EditRow" HeaderText="Edytuj" ShowHeader="True" Text="Edytuj" />
                <asp:ButtonField ButtonType="Button" CommandName="Del" HeaderText="Usuń" ShowHeader="True" Text="Usuń" />
            </Columns>
        </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/addRecord.aspx" Text="Dodaj rekord"></asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/search.aspx">Wyszukaj</asp:HyperLink>
    </form>
</body>
</html>
