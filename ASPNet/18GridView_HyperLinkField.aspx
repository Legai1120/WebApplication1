<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="18GridView_HyperLinkField.aspx.cs" Inherits="ASPNet._18GriView_HyperLinkField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="width: 1280px">
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MySystemConnectionString1 %>" 
                SelectCommand="SELECT * FROM [Members]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="Account" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Account" HeaderText="Account" ReadOnly="true" SortExpression="Account" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:HyperLinkField DataTextFormatString="詳細資料" DataTextField="Account" 
                        DataNavigateUrlFormatString="18GridView_HyperLinkField2.aspx?id={0}&n={1}" DataNavigateUrlFields="Account,Name" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
