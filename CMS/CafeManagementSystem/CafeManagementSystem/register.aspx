<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Theme="Library-Skin" Inherits="CafeManagementSystem.register" %>

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
    .divContent{
        text-align:center ;
        border: 5px solid green ;
        margin:auto ;
    }
    .inputField{

        width: 20%;
	    margin: 8px 0;
	    border-radius: 4px;
	    color: #000000;
	    padding: 8px;
	    font-weight: bold;

    }
</style>
<link type="text/css" rel="stylesheet" href="CMS-CSS/w3.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CafeManagementSystem</title>
</head>
<body>
    <h1 style="color:white">Welcome to Register Your Self to Our Cafe</h1>
    <form id="form1" runat="server">
    <div>
    <asp:Panel CssClass="divContent" HorizontalAlign="Left" Width="753px" ID="Panel1" runat="server" GroupingText="Personal Detail" Height="664px" ForeColor="#333333" Font-Bold="False" BackColor="#C3A374">
        <asp:Label ID="lblExError" runat="server" Visible="False"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl3" runat="server" CssClass="w3-label" ForeColor="White" Text="User Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtUserName" runat="server" CssClass="w3-hover-green inputField" placeholder="John"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="*" ForeColor="White" SetFocusOnError="True" ToolTip="User Name is Required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="Invalid User Name" ForeColor="White" SetFocusOnError="True" ToolTip="User Name Must Be Start with Letter and End With digit and (4-50) character" ValidationExpression="^[a-zA-Z](_(?!(\.|_))|\.(?!(_|\.))|( )|[a-zA-Z0-9]){3,50}[a-zA-Z0-9]$"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl2" runat="server" CssClass="w3-label" ForeColor="White" Text="Password:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtPassword" runat="server" CssClass=" w3-hover-green inputField" placeholder="Password" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*" ForeColor="White" SetFocusOnError="True" ToolTip="Password is Required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Invalid Password" ForeColor="White" ToolTip="Password Must have One LowerCae,One UpperCase and digits and Range (8-15)" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,15}$"></asp:RegularExpressionValidator>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl4" runat="server" CssClass="w3-label" ForeColor="White" Text="Gender:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlUserCategory" runat="server">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlUserCategory" Display="Dynamic" ErrorMessage="*" ForeColor="White" ToolTip="User Category is Required"></asp:RequiredFieldValidator>
        <br />
        <br />
        

        <asp:Panel ID="Panel3" runat="server" Width="699px" GroupingText="Contact Detail" Height="289px" ForeColor="#FFFFCC" BackColor="#C3A374">

            <br />

            &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" CssClass="w3-label" ForeColor="White" Text="E-mail:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" CssClass="w3-hover-green inputField" placeholder="abc@abc.com" runat="server"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Invalid E-mail" ForeColor="White" SetFocusOnError="True" ToolTip="E-mail Must Be (abc@abc.com) format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*" ForeColor="White" SetFocusOnError="True" ToolTip="USer E-mail is Required"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" CssClass="w3-label" ForeColor="White" Text="Phone No:"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPhone" CssClass="w3-hover-green inputField" placeholder="0000-0000000" runat="server"></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="*" ForeColor="White" SetFocusOnError="True" ToolTip="User Phone Number is Required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Invalid Phone Number" ForeColor="White" SetFocusOnError="True" ToolTip="Phone Number Must Be Contain Digits of max length 12" ValidationExpression="^\+?[0-9][0-9\s.-]{7,12}$"></asp:RegularExpressionValidator>
        
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" CssClass="w3-label" ForeColor="White" Text="Address:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddress" runat="server" CssClass="w3-hover-green inputField" placeholder="#1, North Street, ISB - 11 "></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="*" ForeColor="White" SetFocusOnError="True" ToolTip="Customer Address is Required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Invalid Address" ForeColor="White" SetFocusOnError="True" ToolTip="Address Must Be of max length 50 and no special characters are allowed" ValidationExpression="^\+?[#.0-9a-zA-Z\s,-]{5,50}$"></asp:RegularExpressionValidator>
            <br />
        
        </asp:Panel>
        <p style="text-align:center"><asp:Button ID="btnCreateAccount" CssClass="w3-btn w3-white w3-hover-blue w3-round-xlarge" runat="server" Text="Register" OnClick="btnCreateAccount_Click" /></p>
    </asp:Panel>
    </div>
    </form>
</body>
</html>
