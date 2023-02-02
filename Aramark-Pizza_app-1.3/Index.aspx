<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Aramark_Pizza_app_1._3.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome!</h1>
        <asp:Label ID="FullNameLable" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Please click the images to add items"></asp:Label>
        <br />
        <asp:Label runat="server" Text="Pizza:"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Pepperoni:        "></asp:Label>
        <asp:Label ID="pAmountlbl" runat="server" Text="0"></asp:Label>
        <asp:Button ID="pRemoveBtn" runat="server" Text="Remove?" OnClick="pRemoveBtn_Click"/>
        <br />
        <asp:ImageButton ID="pepperoniBtn" runat="server" ImageUrl="images/Pepperoni_Pizza.jpg" Height="150" OnClick="pepperoniBtn_Click" />
        <br />
        <br />
        <asp:Label  runat="server" Text="Margerita:     "></asp:Label>
        <asp:Label ID="mAmountlbl" runat="server" Text="0"></asp:Label>
        <asp:Button ID="mRemoveBtn" runat="server" Text="Remove?" OnClick="mRemoveBtn_Click"/>
        <br />
        <br />
        <asp:ImageButton ID="margeritaBtn" runat="server" ImageUrl="images/margerita_pizza.jpg" Height="150" OnClick="margeritaBtn_Click"/>
        <br />
        <br />
        <br />
        <asp:Label runat="server" Text="Total Pay: "></asp:Label>
        <asp:Label ID="Sumlable" runat="server" Text="£0.00"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
        <br />
        <asp:Button ID="redirectPayment" runat="server" Text="pay?" OnClick="redirectPayment_Click" />
    </form>
</body>
</html>
