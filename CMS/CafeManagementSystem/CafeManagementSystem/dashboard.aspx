<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="CafeManagementSystem.dashboard"  %>

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
      .alignLeftTable{
          margin-left:20px;
      }
      .alignRightTable{
          margin-right:20px;
      }
    </style>
<link type="text/css" rel="stylesheet" href="CMS-CSS/w3.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CafeManagementSystem</title>
</head>
<body>
    <form runat="server">
        <h2 style="text-align:center; color:white">Welcome To Cafe </h2>
        <h3 style="text-align:center; color:white">Place Your Order And Get Your Food At Your Door</h3> 
        <asp:Label ID="lblTest" runat="server"></asp:Label>
        <div class=" w3-black">
            <asp:Label CssClass="w3-label" style="text-align:justify;" ID="lblLoggedUserName" runat="server" Visible="False" ForeColor="White" ></asp:Label> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="btnLogout" runat="server" CssClass="w3-btn w3-round-large w3-black w3-hover-white" Text="LogOut" style="text-align:justify" OnClick="btnLogout_Click" />
            <asp:Button ID="btnPlaceOrder" runat="server" CssClass="w3-btn w3-round-large w3-black w3-hover-white" Text="Place Order" style="text-align:justify" OnClick="btnPlaceOrder_Click" />              
        </div>
        <br />
        <br />
        <div> 
            <asp:GridView CssClass="alignLeftTable" HorizontalAlign="Left" ID="grdFoodItems" runat="server" AutoGenerateColumns="False"
                BorderColor="Gray"
                BorderStyle="Solid"
                BorderWidth="1px"
                CellPadding="4"
                ForeColor="#333333"
                GridLines="None"
                Width="600px" 
                OnSelectedIndexChanged="grdFoodItems_SelectedIndexChanged">

                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle HorizontalAlign="Left" />
                <HeaderStyle BackColor="#008ed5" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#00FF99" />
            <Columns>
                <asp:BoundField DataField="itemName" HeaderText="Dish Name" ItemStyle-HorizontalAlign="Left" />
                <asp:BoundField DataField="Ingredients" HeaderText="Ingredients" ItemStyle-HorizontalAlign="Left" />
                <asp:BoundField DataField="itemCategory" HeaderText="Category" ItemStyle-HorizontalAlign="Left" />
                <asp:BoundField DataField="itemPrice" HeaderText="Price" ItemStyle-HorizontalAlign="Left" />
                <asp:BoundField DataField="imageName" HeaderText="Image" ItemStyle-HorizontalAlign="Left" />                
                <asp:CommandField ControlStyle-BackColor="#F7F6F3" ControlStyle-ForeColor="blue" ControlStyle-CssClass="w3-btn w3-round-large w3-hover-blue-grey" ButtonType="Button" HeaderText="Action" ShowSelectButton="True" SelectText="Order" />
            </Columns>
            </asp:GridView>
         <asp:GridView CssClass="alignRightTable" ID="grdCartItems" HorizontalAlign="Right" runat="server" AutoGenerateColumns="False"
                BorderColor="Gray"
                BorderStyle="Solid"
                BorderWidth="1px"
                CellPadding="4"
                ForeColor="#333333"
                GridLines="None"
                Width="600px"
                OnSelectedIndexChanged="grdCartItems_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle HorizontalAlign="Left" />
                <HeaderStyle BackColor="#008ed5" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#00FF99" />
            <Columns>
                <asp:BoundField DataField="itemName" HeaderText="Dish Name" ItemStyle-HorizontalAlign="Left" />
                <asp:BoundField DataField="itemQty" HeaderText="Quantity" ItemStyle-HorizontalAlign="Left" />
                <asp:BoundField DataField="itemPrice"  HeaderText="Price" ItemStyle-HorizontalAlign="Left" />
                <asp:CommandField ControlStyle-BackColor="#F7F6F3" ControlStyle-ForeColor="blue" ControlStyle-CssClass="w3-btn w3-round-large w3-hover-blue-grey" ButtonType="Button" HeaderText="Action" ShowSelectButton="True" SelectText="Cancel" />
            </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
