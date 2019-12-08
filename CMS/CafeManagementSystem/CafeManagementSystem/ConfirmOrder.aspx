<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmOrder.aspx.cs" Inherits="CafeManagementSystem.ConfirmOrder" %>

<!DOCTYPE html>
<style type="text/css">
        body {
	
	    background-image: url(/Images/Cafe.jpg); /*You will specify your image path here.*/
	    background-size: cover;
	    background-position: top center !important;
	    background-repeat: no-repeat !important;
	    background-attachment: fixed;
	    color: #00FFFF;
	    text-align:center;
	    width: auto;
	    border: 1px;
	    position: static;
	    font-size: 24px;
    } /*CSS Document */
    </style>
<link type="text/css" rel="stylesheet" href="CMS-CSS/w3.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CafeManagementSystem</title>
</head>
    
<body>
    <form id="form1" runat="server">
        <h3 style="text-align:center">Your Order Details</h3>
    <p style="text-align:right; margin-right:20px;">
        <asp:Button ValidationGroup="Validbtn" BackColor="#F7F6F3" ID="btnBack" CssClass="w3-btn w3-round-large w3-blue-gray w3-hover-white" runat="server" Text="Go Back" OnClick="btnBack_Click" /></p>
        <div>
        <asp:GridView ID="grdCartItems" HorizontalAlign="Center" runat="server" AutoGenerateColumns="False"
                BorderColor="Gray"
                BorderStyle="Solid"
                BorderWidth="1px"
                CellPadding="4"
                ForeColor="#333333"
                GridLines="None"
                Width="600px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle HorizontalAlign="Left" />
                <HeaderStyle BackColor="#008ed5" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#00FF99" />
            <Columns>
                <asp:BoundField DataField="itemName" HeaderText="Dish Name" ItemStyle-HorizontalAlign="Left" />
                <asp:BoundField DataField="itemQty" HeaderText="Quantity" ItemStyle-HorizontalAlign="Left" />
                <asp:BoundField DataField="itemPrice"  HeaderText="Price" ItemStyle-HorizontalAlign="Left" />
            </Columns>
            </asp:GridView>
    </div>
    <br />
    <br />
        <asp:Label ID="Label1" Text="Total Bill To Pay: " runat="server"></asp:Label>
        <asp:Label ID="totAmout" Text="" runat="server"></asp:Label>
        
        <br />
        <br />

        <asp:Label ID="lbladdr" Text="Delivery Address: " runat="server"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="deliveryAddress" Display="Dynamic" ErrorMessage="*" ForeColor="White" ToolTip="Delivery Address is Required"></asp:RequiredFieldValidator>
        <asp:TextBox ID="deliveryAddress" CssClass="w3-hover-green w3-border-blue w3-round-large" runat="server"></asp:TextBox>
        <asp:Button ID="btnCheckOut" CssClass="w3-btn w3-round-large w3-blue-gray w3-hover-white" Text="Check Out" runat="server" OnClick="btnCheckOut_Click" />
    </form>
</body>
</html>
