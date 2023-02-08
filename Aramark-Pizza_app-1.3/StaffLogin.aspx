<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="Aramark_Pizza_app_1._3.StaffLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <asp:Image runat="server" ImageUrl="~/images/Aramark_Logo.png" />
            <h2>Staff Login</h2>
            <asp:Label runat="server" Text="Username "></asp:Label>
            <asp:TextBox ID="userTxtbox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" Text="Password "></asp:Label>
            <asp:TextBox ID="passTxtbox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="loginBtn" runat="server" Text="login" OnClick="loginBtn_Click" />
            <p>If you forgot your password. please contact ICT department or Kitchen Manager.</p>
        </div>

    </form>
</body>
</html>
