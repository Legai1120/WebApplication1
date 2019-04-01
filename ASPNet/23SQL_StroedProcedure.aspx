﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="23SQL_StroedProcedure.aspx.cs" Inherits="ASPNet._23SQL_StroedProcedure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ 
                ConnectionStrings:教務系統ConnectionString %>" 
                SelectCommand="學生選課明細" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>

            <hr />
            輸入姓名關鍵字:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="查詢" />
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ 
                ConnectionStrings:教務系統ConnectionString %>" 
                SelectCommand="學生查詢" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter Name="name" ControlID="txtName" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>            
            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2"></asp:GridView>
            <hr />
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:教務系統ConnectionString %>" 
                 SelectCommand="table_query" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter Name="tableName" ControlID="DropDownList1" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:教務系統ConnectionString %>" 
                 SelectCommand="select TABLE_NAME from INFORMATION_SCHEMA.TABLES where TABLE_TYPE='base table'" ></asp:SqlDataSource>
                
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource4" DataTextField="TABLE_NAME" 
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
            <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource3" 
                AutoGenerateDeleteButton="true" AutoGenerateEditButton="true"></asp:GridView>

            <hr />

            產品編號:<asp:TextBox ID="txtPID" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="檢查可用性" />
            <asp:GridView ID="GridView4" runat="server" DataSourceID="SqlDataSource5"></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ 
                ConnectionStrings:MySystemConnectionString1 %>" 
                SelectCommand="check_productID" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter  Name="productID" ControlID="txtPID" Type="String"/>
                </SelectParameters>

            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>