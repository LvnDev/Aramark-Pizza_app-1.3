<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Aramark_Pizza_app_1._3.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Sign Up</h1>
        <asp:Label runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="SUsernameTxtbox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="SPasswordTxtbox" runat="server" Type="password"></asp:TextBox>
        <br />
        <br />
        <asp:Label runat="server" Text="Full Name"></asp:Label>
        <asp:TextBox ID="SFullname" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="SignupBtn" runat="server" Text="Signup" OnClick="SignupBtn_Click" />
        <br />
        <asp:Label ID="errorLbl" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Have a account?"></asp:Label>
        <br />
        <asp:Button ID="RedirectLoginButton" runat="server" Text="Login!" OnClientClick="RedirectLoginButton_Click" OnClick="RedirectLoginButton_Click1" />
    </form>
</body>
</html>
