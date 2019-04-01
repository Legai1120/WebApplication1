<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HW4.aspx.cs" Inherits="asp_homework4._5.HW4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #tb{
            border:2px solid;
            margin:auto;
            width:450px;
            height:500px;
        }
        #tb tr td:first-child {
            text-align:right;
        }
        #tb tr:last-child td{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="10" ForeColor="Red" DisplayMode="BulletList" ShowMessageBox="true" />
            <table id ="tb">
                <caption>會員資料</caption>
                <tr>
                    <td>帳號:</td>
                    <td>
                        <asp:TextBox ID="tId" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tId" ErrorMessage="帳號為必填欄位" Text="(必填)" ForeColor="Red" Font-Size="10pt" Display="Dynamic"></asp:RequiredFieldValidator>          
                    </td>
                </tr>
                <tr>
                    <td>密碼:</td>
                    <td>
                        <asp:TextBox ID="tPw" runat="server" TextMode="Password" placeholder="8-12碼" MaxLength="12"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tPw" ErrorMessage="密碼為必填欄位" Text="(必填)" ForeColor="Red" Font-Size="10pt" Display="Dynamic"></asp:RequiredFieldValidator>     
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tPw" ValidationExpression="\S{8,12}" ErrorMessage="(格式錯誤)" ForeColor="Red" Font-Size="10pt"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>密碼確認:</td>
                    <td>
                        <asp:TextBox ID="tCPw" runat="server" TextMode="Password" placeholder="請在輸入一次密碼"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tPw" ControlToCompare="tCPw" Operator="Equal" ErrorMessage="(不相同)" Text="(不相同)" ForeColor="Red" Font-Size="10pt"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>身分證字號:</td>
                    <td>
                        <asp:TextBox ID="tIdC" runat="server" placeholder="A123456789"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tIdC" ErrorMessage="身份證字號為必填欄位" Text="(必填)"  ForeColor="Red" Font-Size="10pt" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tIdC" ValidationExpression="[A-Za-z](1|2)\d{8}" ErrorMessage="(格式錯誤)" ForeColor="Red" Font-Size="10pt"></asp:RegularExpressionValidator>
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="(不合法)" Text="(不合法)" OnServerValidate="CustomValidator2_ServerValidate" ForeColor="Red" Font-Size="10pt"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>姓名:</td>
                    <td>
                        <asp:TextBox ID="tName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tName" ErrorMessage="姓名為必填欄位" Text="(必填)" ForeColor="Red" Font-Size="10pt"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>生日:</td>
                    <td>
                        <asp:TextBox ID="tBirthday" runat="server" placeholder="1912-1-1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tBirthday" ErrorMessage="生日為必填欄位" Text="(必填)" ForeColor="Red" Font-Size="10pt" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tBirthday" Operator="DataTypeCheck" Type="Date" ErrorMessage="(格式錯誤)" ForeColor="Red" Font-Size="10pt" ></asp:CompareValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tBirthday" Type="Date" MaximumValue="2019-12-30" MinimumValue="1912-01-01" ErrorMessage="(超出範圍)" ForeColor="Red" Font-Size="10pt" Display="Dynamic"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>E-mail</td>
                    <td>
                        <asp:TextBox ID="tEmail" runat="server" placeholder="ex:abc@abc.com"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tEmail" ValidationExpression="([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)" ErrorMessage="(格式錯誤)" ForeColor="Red" Font-Size="10pt"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>性別:</td>
                    <td>
                        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="男" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="女"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>學歷</td>
                    <td>
                        <asp:DropDownList ID="ddlEdu" runat="server">
                            <asp:ListItem Text="請選擇"></asp:ListItem>
                            <asp:ListItem Text="高中以下"></asp:ListItem>
                            <asp:ListItem Text="專科"></asp:ListItem>
                            <asp:ListItem Text="大學"></asp:ListItem>
                            <asp:ListItem Text="碩士以上"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="ddlEdu" ValueToCompare="請選擇" ErrorMessage="學歷為必選欄位" Text="(必選)" Operator="NotEqual" ForeColor="Red" Font-Size="10pt" ></asp:CompareValidator>
                     </td>
                </tr>
                <tr>
                    <td>興趣</td>
                    <td>
                        <table>
                            <tr>
                                <td rowspan="4">
                                    <asp:ListBox ID="lbInterest1" runat="server" Width="100" Height="150">
                                        <asp:ListItem Text="唱歌"></asp:ListItem>
                                        <asp:ListItem Text="運動"></asp:ListItem>
                                        <asp:ListItem Text="健身"></asp:ListItem>
                                        <asp:ListItem Text="看電影"></asp:ListItem>
                                        <asp:ListItem Text="吃美食"></asp:ListItem>
                                        <asp:ListItem Text="爬山"></asp:ListItem>
                                    </asp:ListBox>
                                </td>
                                <td>
                                    <asp:Button ID="btnAll" runat="server" Text=">>" OnClick="btnAll_Click" CausesValidation="false" />
                                </td>
                                <td rowspan="4">
                                    <asp:ListBox ID="lbInterest2" runat="server" Width="100" Height="150"></asp:ListBox>
                                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="(至少選3種)" Text="(至少選3種)" ForeColor="Red" Font-Size="10pt" Display="Dynamic" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnYes" runat="server" Text=">" OnClick="btnYes_Click" CausesValidation="false" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnNo" runat="server" Text="<" OnClick="btnNo_Click" CausesValidation="false" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnCancel" runat="server" Text="<<"  OnClick="btnCancel_Click" CausesValidation="false"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                 </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="重設表單" />
                        <asp:Button ID="Button2" runat="server" Text="送出資料" OnClick="Button2_Click" />
                    </td>
                    <td></td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
