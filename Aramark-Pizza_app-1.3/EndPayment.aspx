<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EndPayment.aspx.cs" Inherits="Aramark_Pizza_app_1._3.EndPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <h1>Thank you for ordering!</h1>
            <p>Please vist us in the canteen to collect your order!</p>
            <asp:Label ID="orderNumlbl" runat="server" Text="Order Number: "></asp:Label>
            <br />
            <asp:Label ID="custNumlbl" runat="server" Text="Customer ID:"></asp:Label>
            <br />
            <br />
            <asp:Button ID="LogoutBtn" runat="server" Text="Log out" OnClick="LogoutBtn_Click" />
            <br />
            <br />
            <asp:Image runat="server" ImageUrl="~/images/Aramark_Logo.png" />
        </div>
    </form>
</body>
</html>
