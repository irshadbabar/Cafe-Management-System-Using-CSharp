<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CafeManagementSystem.login" Theme="Library-Skin" %>

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
  <h1 style="text-align:center; color:white">  Welcome To Cafe Management System </h1> 
  <asp:Label ID="lblError" runat="server" Visible="False" ForeColor="White"></asp:Label>
  <form id="form1" runat="server">
    <div class="w3-container"> 	
  	<fieldset>
  	    <legend style="text-align:left">Login Panel</legend>
  		<div style="text-align:left">	
  			<div class="inputField">
  				<label for="userId" style="color:white" class="w3-label"> User Name: 
                <br />
                <asp:TextBox ID="txtUserName" runat="server" placeholder="John"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="*" ForeColor="White" ToolTip="User Name Required"></asp:RequiredFieldValidator>
                </label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="Invalid User Name" ForeColor="White" SetFocusOnError="True" ToolTip="User Name Must be start with Letter (4-50) characters" ValidationExpression="^[a-zA-Z](_(?!(\.|_))|\.(?!(_|\.))|( )|[a-zA-Z0-9]){2,50}[a-zA-Z0-9]$"></asp:RegularExpressionValidator>
                <br>
  			</div>
  			<div class="inputField">	
  				<label for="userId" style="color:white" class="w3-label"> Password: 
                    <br />
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
  				    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*" ForeColor="White" ToolTip="Password is Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Invalid Password" ForeColor="White" ToolTip="Password Must have One LowerCae,One UpperCase and digits and Range (8-15)" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,15}$"></asp:RegularExpressionValidator>
                    <br />
  				</label>
  				<br />
  			</div>
  			<div class="inputField" id = "submitField">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" CausesValidation="False" />
  			</div>
  		</div>
  	</fieldset>
 </div>
</form>
</body>
</html>
