<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="CafeManagementSystem.AdminDashboard" %>

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
<script type="text/javascript">
    function deleteConfirm() {
        var result = confirm('Do you want to Remove Item ' + ' ?');
        if (result) {
            return true;
        }
        else {
            return false;
        }
    }
</script>
<link type="text/css" rel="stylesheet" href="CMS-CSS/w3.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CafeManagementSystem</title>
</head>
<body>
    <form id="frmMenuItems" runat="server">
        <h2 style="text-align:center; color:white">Welcome To Cafe Management Admin Dashoard</h2> 
        <div class=" w3-black">
            <asp:Label CssClass="w3-label" style="text-align:justify;" ID="lblLoggedUserName" runat="server" Visible="False" ForeColor="White" ></asp:Label> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ValidationGroup="btnLogout" ID="btnLogout" runat="server" CssClass="w3-btn w3-round-large w3-black w3-hover-white" Text="LogOut" style="text-align:justify" OnClick="btnLogout_Click" />              
        </div>
        <br />
        <br />
        <div>
            <asp:Label ID="lbl1" runat="server"></asp:Label>
            <asp:Label ID="Label1" Visible="false" ForeColor="White" runat="server" Text="Label"></asp:Label>
            <asp:GridView ID="grdMenuItems" runat="server" 
                ForeColor="White" HorizontalAlign="Center" CellPadding="10" GridLines="Horizontal"
                AutoGenerateColumns="False" ShowFooter="true" DataKeyNames="rNo"
                BorderColor="Yellow"
                BorderStyle="Solid"
                BorderWidth="1px"
                OnRowEditing="grdMenuItems_RowEditing" OnRowUpdating="grdMenuItems_RowUpdating"
                OnRowCancelingEdit="grdMenuItems_RowCancelingEdit" OnRowDeleting="grdMenuItems_RowDeleting"
                OnRowCommand="grdMenuItems_RowCommand"
                
                >
                 <HeaderStyle BackColor="#008ed5" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#999966" ForeColor="White" />
           
            <Columns>
                <asp:TemplateField HeaderText="S.No">
                    <ItemTemplate>
                        <asp:Label ID="lblRowID" Text='<%#DataBinder.Eval(Container.DataItem , "rNo") %>' runat="server">
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Food Items">
                    <ItemTemplate>
                        <asp:Label runat="server">Item Name</asp:Label>
                        <asp:TextBox ForeColor="" CssClass="w3-hover-green w3-border-blue w3-round-large" ReadOnly="true" ID="txtItemName" MaxLength="50" runat="server" Text='<%# DataBinder.Eval(Container.DataItem , "itemName") %>'></asp:TextBox>
                        
                        <asp:Label runat="server">Item Ingredients</asp:Label>
                        <asp:TextBox CssClass="w3-hover-green w3-border-blue w3-round-large" ReadOnly="true" ID="txtDescription" MaxLength="255" runat="server" Text='<%#DataBinder.Eval(Container.DataItem , "Ingredients") %>'></asp:TextBox>

                        <asp:Label runat="server">Item Image Name</asp:Label>
                        <asp:TextBox CssClass="w3-hover-green w3-border-blue w3-round-large" ReadOnly="true" ID="txtImageUrl" MaxLength="50" runat="server" Text='<%#DataBinder.Eval(Container.DataItem , "imageName") %>'></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label runat="server">Item Price</asp:Label>
                        <asp:TextBox CssClass="w3-hover-green w3-border-blue w3-round-large" ReadOnly="true" ID="itemPrice" runat="server" Text='<%#DataBinder.Eval(Container.DataItem , "itemPrice") %>'></asp:TextBox>
                        <asp:Label runat="server">Item Category</asp:Label>
                        <asp:DropDownList ReadOnly="true" ID="ddlItemCategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category_name" DataValueField="Id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost\SQLEXPRESS;Initial Catalog=CafeManagementDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [ItemCategory]"></asp:SqlDataSource>                        
                    </ItemTemplate>

                    <FooterTemplate >
                        <asp:Label runat="server">Item Name</asp:Label>
                        <asp:TextBox CssClass="w3-hover-green w3-border-blue w3-round-large" ID="txtItemName" MaxLength="50" runat="server" Text=""></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtItemName" runat="server" ErrorMessage="*" Display="Dynamic" ForeColor="#336600" SetFocusOnError="True" ToolTip="Menu Item Name is Required"></asp:RequiredFieldValidator>
                        <asp:Label runat="server">Item Ingredients</asp:Label>
                        <asp:TextBox CssClass="w3-hover-green w3-border-blue w3-round-large" ID="txtDescription" MaxLength="255" runat="server" Text=""></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtDescription" runat="server" ErrorMessage="*" Display="Dynamic" ForeColor="#336600" SetFocusOnError="True" ToolTip="Menu Item Ingredients Details is Required"></asp:RequiredFieldValidator>
                        <asp:Label runat="server">Item Image Name</asp:Label>
                        <asp:TextBox CssClass="w3-hover-green w3-border-blue w3-round-large" ID="txtImageUrl" MaxLength="50" runat="server" Text=""></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtImageUrl" runat="server" ErrorMessage="*" Display="Dynamic" ForeColor="#336600" SetFocusOnError="True" ToolTip="Menu Item Image Name is Required"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label CssClass="alignLeftTable" runat="server">Item Price</asp:Label>
                        <asp:TextBox CssClass="w3-hover-green w3-border-blue w3-round-large" ID="itemPrice" runat="server" Text=""></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ValidatorItemPrice" ControlToValidate="itemPrice" runat="server" ErrorMessage="*" Display="Dynamic" ForeColor="#336600" SetFocusOnError="True" ToolTip="Menu Item Price is Required"></asp:RequiredFieldValidator>                      
                        <asp:Label runat="server">Item Category</asp:Label>
                        <asp:DropDownList ID="ddlItemCategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category_name" DataValueField="Id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost\SQLEXPRESS;Initial Catalog=CafeManagementDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [ItemCategory]"></asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="ddlItemCategory" runat="server" ErrorMessage="*" Display="Dynamic" ForeColor="#336600" SetFocusOnError="True" ToolTip="Menu Item Category is Required"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    
                    <EditItemTemplate>

                        <asp:Label runat="server">Item Name</asp:Label>
                        <asp:TextBox BackColor="#c0c0c0" CssClass="w3-hover-green w3-border-blue w3-round-large" ID="txtItemName" MaxLength="50" runat="server" Text='<%# DataBinder.Eval(Container.DataItem , "itemName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtItemName" runat="server" ErrorMessage="*" Display="Dynamic" ForeColor="#336600" SetFocusOnError="True" ToolTip="Menu Item Name is Required"></asp:RequiredFieldValidator>
                        
                        <asp:Label runat="server">Item Ingredients</asp:Label>
                        <asp:TextBox CssClass="w3-hover-green w3-border-blue w3-round-large" ID="txtDescription" MaxLength="255" runat="server" Text='<%#DataBinder.Eval(Container.DataItem , "Ingredients") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtDescription" runat="server" ErrorMessage="*" Display="Dynamic" ForeColor="#336600" SetFocusOnError="True" ToolTip="Menu Item Ingredients Details is Required"></asp:RequiredFieldValidator>
                        
                        <asp:Label runat="server">Item Image Name</asp:Label>
                        <asp:TextBox CssClass="w3-hover-green w3-border-blue w3-round-large" ID="txtImageUrl" MaxLength="50" runat="server" Text='<%#DataBinder.Eval(Container.DataItem , "imageName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtImageUrl" runat="server" ErrorMessage="*" Display="Dynamic" ForeColor="#336600" SetFocusOnError="True" ToolTip="Menu Item Image Name is Required"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label runat="server">Item Price</asp:Label>
                        <asp:TextBox CssClass="w3-hover-green w3-border-blue w3-round-large" ID="itemPrice" runat="server" Text='<%#DataBinder.Eval(Container.DataItem , "itemPrice") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ValidatorItemPrice" ControlToValidate="itemPrice" runat="server" ErrorMessage="*" Display="Dynamic" ForeColor="#336600" SetFocusOnError="True" ToolTip="Menu Item Price is Required"></asp:RequiredFieldValidator>
                        
                        <asp:Label runat="server">Item Category</asp:Label>
                        <asp:DropDownList ID="ddlItemCategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category_name" DataValueField="Id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost\SQLEXPRESS;Initial Catalog=CafeManagementDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [ItemCategory]"></asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="ddlItemCategory" runat="server" ErrorMessage="*" Display="Dynamic" ForeColor="#336600" SetFocusOnError="True" ToolTip="Menu Item Category is Required"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                </asp:TemplateField>
                 
                <%--<asp:CommandField ShowEditButton="true"/>
                <asp:CommandField ShowDeleteButton="true" />--%>
                <asp:TemplateField HeaderText="Commands">
                    <EditItemTemplate>
                        <asp:Button CssClass="w3-btn w3-round-large w3-blue w3-hover-white" ID="ButtonUpdate" ValidationGroup="ValidUpdate" runat="server" CommandName="Update"  Text="Update"  />
                        <asp:Button CssClass="w3-btn w3-round-large w3-blue w3-hover-white" ID="ButtonCancel" CausesValidation="false" runat="server" CommandName="Cancel"  Text="Cancel" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button CssClass="w3-btn w3-round-large w3-blue w3-hover-white" ID="ButtonEdit" CausesValidation="false" runat="server" CommandName="Edit"  Text="Edit"  />
                        <asp:Button CssClass="w3-btn w3-round-large w3-blue w3-hover-white" ID="ButtonDelete" CausesValidation="false" runat="server" CommandName="Delete"  Text="Delete" OnClientClick="return deleteConfirm()"  />
                    </ItemTemplate>
               <FooterTemplate>
                   <asp:Button CssClass="w3-btn w3-round-large w3-blue w3-hover-white" ID="ButtonAdd" ValidationGroup="ValidAdd" runat="server" CommandName="AddNew"  Text="Add New Item"  />
               </FooterTemplate>     
               </asp:TemplateField>
            </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
