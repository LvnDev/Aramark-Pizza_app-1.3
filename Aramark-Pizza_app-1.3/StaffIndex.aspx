<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffIndex.aspx.cs" Inherits="Aramark_Pizza_app_1._3.StaffIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <asp:Image runat="server" ImageUrl="~/images/Aramark_Logo.png" />
            <br />
            <h2>Staff Page</h2>
            <asp:Label runat="server" Text="You are logged in as: "></asp:Label>
            <asp:Label ID="fnLbl" runat="server" Text="{No Name}"></asp:Label>
            <asp:Label ID="userLbl" runat="server" Text="{No Username}"></asp:Label>
        </div>
        <div style="text-align:right;">
        <asp:Button ID="staffLogoutBtn" runat="server" Text="Logout" OnClick="staffLogoutBtn_Click"/>
        </div>
        <h3>Orders List</h3>
        <!--SQL DATA SHEET BELOW -->
        <asp:GridView ID="Orders" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="OrdersDataSource" Width="879px" OnSelectedIndexChanged="Orders_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
                <asp:BoundField DataField="CustID" HeaderText="CustID" SortExpression="CustID" />
                <asp:BoundField DataField="Pepperoni" HeaderText="Pepperoni" SortExpression="Pepperoni" />
                <asp:BoundField DataField="Margherita" HeaderText="Margherita" SortExpression="Margherita" />
                <asp:BoundField DataField="PaymentOption" HeaderText="PaymentOption" SortExpression="PaymentOption" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>

        <asp:SqlDataSource ID="OrdersDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [OrderId] = @original_OrderId AND (([CustID] = @original_CustID) OR ([CustID] IS NULL AND @original_CustID IS NULL)) AND (([Pepperoni] = @original_Pepperoni) OR ([Pepperoni] IS NULL AND @original_Pepperoni IS NULL)) AND (([Margherita] = @original_Margherita) OR ([Margherita] IS NULL AND @original_Margherita IS NULL)) AND (([PaymentOption] = @original_PaymentOption) OR ([PaymentOption] IS NULL AND @original_PaymentOption IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL))" InsertCommand="INSERT INTO [Orders] ([CustID], [Pepperoni], [Margherita], [PaymentOption], [Total]) VALUES (@CustID, @Pepperoni, @Margherita, @PaymentOption, @Total)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Orders] ORDER BY [OrderId]" UpdateCommand="UPDATE [Orders] SET [CustID] = @CustID, [Pepperoni] = @Pepperoni, [Margherita] = @Margherita, [PaymentOption] = @PaymentOption, [Total] = @Total WHERE [OrderId] = @original_OrderId AND (([CustID] = @original_CustID) OR ([CustID] IS NULL AND @original_CustID IS NULL)) AND (([Pepperoni] = @original_Pepperoni) OR ([Pepperoni] IS NULL AND @original_Pepperoni IS NULL)) AND (([Margherita] = @original_Margherita) OR ([Margherita] IS NULL AND @original_Margherita IS NULL)) AND (([PaymentOption] = @original_PaymentOption) OR ([PaymentOption] IS NULL AND @original_PaymentOption IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_OrderId" Type="Int32" />
                <asp:Parameter Name="original_CustID" Type="Int32" />
                <asp:Parameter Name="original_Pepperoni" Type="Int32" />
                <asp:Parameter Name="original_Margherita" Type="Int32" />
                <asp:Parameter Name="original_PaymentOption" Type="String" />
                <asp:Parameter Name="original_Total" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustID" Type="Int32" />
                <asp:Parameter Name="Pepperoni" Type="Int32" />
                <asp:Parameter Name="Margherita" Type="Int32" />
                <asp:Parameter Name="PaymentOption" Type="String" />
                <asp:Parameter Name="Total" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustID" Type="Int32" />
                <asp:Parameter Name="Pepperoni" Type="Int32" />
                <asp:Parameter Name="Margherita" Type="Int32" />
                <asp:Parameter Name="PaymentOption" Type="String" />
                <asp:Parameter Name="Total" Type="Decimal" />
                <asp:Parameter Name="original_OrderId" Type="Int32" />
                <asp:Parameter Name="original_CustID" Type="Int32" />
                <asp:Parameter Name="original_Pepperoni" Type="Int32" />
                <asp:Parameter Name="original_Margherita" Type="Int32" />
                <asp:Parameter Name="original_PaymentOption" Type="String" />
                <asp:Parameter Name="original_Total" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <!-- SQL DATA SHEET ABOVE -->
        <br />
        <asp:Label runat="server" Text="Selected Customer: "></asp:Label>
        &nbsp;
        <asp:Label runat="server" Text="ID: "></asp:Label>
        <asp:Label ID="custIDlbl" runat="server"></asp:Label>
&nbsp;
        <asp:Label runat="server" Text="| Full Name: "></asp:Label>
        <asp:Label ID="custNamelbl" runat="server"></asp:Label>
        <br />
        <h5>Edit Tools</h5>
        <asp:Button ID="sqlDelBtn" runat="server" Text="Delete" BackColor="#CC0000" ForeColor="White" Height="40px" Width="85px" OnClick="sqlDelBtn_Click" />
    </form>
</body>
</html>
