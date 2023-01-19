﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Aramark_Pizza_app_1._3.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome!</h1>
        <asp:Label ID="FullNameLable" runat="server" Text=""></asp:Label>
        <asp:ImageButton ID="cartBtn" runat="server" ImageAlign="Right" ImageUrl="images/cart.png" Height="50px" />
        <br />
        <br />
        <asp:Label runat="server" Text="Please click the images to add items"></asp:Label>
        <br />
        <asp:Label runat="server" Text="Pizza:"></asp:Label>
        <br />
        <asp:Label runat="server" Text="Pepperoni"></asp:Label>
        <br />
        <asp:ImageButton ID="pepperoniBtn" runat="server" ImageUrl="images/Pepperoni_Pizza.jpg" Height="150" OnClick="pepperoniBtn_Click" />
        <br />
        <br />
        <asp:Label  runat="server" Text="Margerita"></asp:Label>
        <br />
        <asp:ImageButton ID="margeritaBtn" runat="server" ImageUrl="images/margerita_pizza.jpg" Height="150"/>
        <br />
        <br />
        <br />
        <asp:Label ID="Sumlable" runat="server" Text="Price: £0.00"></asp:Label>
    </form>
</body>
</html>
