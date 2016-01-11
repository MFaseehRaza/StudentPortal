<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="styles-login.css" /> <!-- linked the styles file -->
<style type="text/css">
    input[type=text] {
  -webkit-transition: ease-in-out, width .35s ease-in-out;
  transition: ease-in-out,width .35s ease-in-out;
}
input[type=text]:focus {
  width: 250px;
}
    .style1
    {
        width: 433px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table id="home">
            <tr>
                <td colspan="2" class="left">
                    <asp:Button ID="Button1" runat="server" CssClass="myButton" 
                        PostBackUrl="~/welcome.aspx" Text="Home" />
                </td>
            </tr>
</table>
	<div id="main">
		<h1>Student Portal</h1>
	<h2 class="center">Login</h2>
	<div id = "login-login" >
		<table>
			<tr >
				<td class="center" ><b>Username: </b></td><td class="style1">
                <asp:TextBox ID="txt_user" runat="server" Width="200px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_user" ErrorMessage="*Entry cannot be empty." 
                    style="color: #FF3300; font-size: x-small;"></asp:RequiredFieldValidator>
                </td>
			</tr>
			<tr>
				<td class="center" ><b>Password:</b> </td><td class="style1" >
                <asp:TextBox ID="txt_pass" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_pass" ErrorMessage="*Entry cannot be empty." 
                    style="color: #FF3300; font-size: x-small;"></asp:RequiredFieldValidator>
                </td>
			</tr>
			<tr>
				<td  colspan="2" class="center">&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_login" runat="server" CssClass="myButton" 
                          Text="Login" />
                    <br />
                    
                </td>
                <tr>
                <td colspan="2" align="left">
                <asp:Label ID="lbl_error" runat="server" ForeColor="Red" 
                        style="font-size: small"></asp:Label>
                </td>
                </tr>
                
			</tr>
			<tr>
				<td colspan="2" style="text-align:center">
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Forgot Password</asp:LinkButton>
                </td>
			</tr>
		</table>
		<p class="center"><b>Developed by M. Faseeh Raza</b></p>
	</div>
	</div>
    </div>
    </form>
</body>
</html>
