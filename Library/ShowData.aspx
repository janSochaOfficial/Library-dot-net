<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowData.aspx.cs" Inherits="Library.ShowData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbInfo" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:ButtonField CommandName="EditRow" HeaderText="Edytuj" ShowHeader="True" Text="Edytuj" />
                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Usuń" ShowHeader="True" Text="Usuń" />
            </Columns>
        </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/addRecord.aspx">Dodaj rekord</asp:HyperLink>
    </form>
</body>
</html>
