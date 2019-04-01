<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="10WebForm.aspx.cs" Inherits="ASPNet._10WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" backcolor="#99ff66" forecolor="#ff00ff" Text="不要按我" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" backcolor="#cc3300" ForeColor="#00ccff" Text="按我呀" OnClick="Button2_Click" />

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <asp:RadioButton ID="RadioButton1" runat="server" />

            <asp:CheckBox ID="CheckBox1" runat="server" />

            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

            <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
        </div>
    </form>
</body>
</html>
