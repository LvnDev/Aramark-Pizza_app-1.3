<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Aramark_Pizza_app_1._3.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Payment</h1>
    <br />
        <asp:Label runat="server" Text="Customer ID: "></asp:Label>
        <asp:Label ID="customerIDLbl" runat="server" Text="000000"></asp:Label>
    <br />
        <br />
        <br />
    <asp:Image runat="server" ImageUrl="~/images/Pepperoni_Pizza.jpg" Height="50px" />
    <asp:Label runat="server" Text="Pepperoni: "></asp:Label>
        <asp:Label ID="payment_Pcount" runat="server" Text="0"></asp:Label>
        <br />
        <br />
    <asp:Image runat="server" ImageUrl="~/images/margerita_pizza.jpg" Height="50px" Width="70px" />
        <asp:Label  runat="server" Text="Margherita:  "></asp:Label>
        <asp:Label ID="Payment_Mcount" runat="server" Text="0"></asp:Label>
        <br />
        <br />
        <asp:Label  runat="server" Text="Total: "></asp:Label>
        <asp:Label ID="totalPaymentLbl" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <p>Payment Option</p>
        <asp:RadioButton ID="cardRadioBtn" runat="server" GroupName="PaymentOptions" Text="Card" />
        <asp:RadioButton ID="cashRadioBtn" runat="server" GroupName="PaymentOptions" Text="Cash" />
        <br />
        <br />
        <asp:Button ID="payBtn" runat="server" Text="Pay" OnClick="payBtn_Click" />
        <br />
    </form>
</body>
</html>
