<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Aramark_Pizza_app_1._3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Login</h1>
        <asp:Label runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="LUsernameTxtbox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="LPasswordTxtbox" runat="server" Type="password"></asp:TextBox>
        <br />
        <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
        <br />
        <br />
        <asp:Label runat="server" Text="Don't have an account?"></asp:Label>
        <br />
        <asp:Button ID="RedirectSignupButton" runat="server" Text="SignUp!" />
    </form>
</body>
</html>
