<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request details.aspx.cs" Inherits="WebApplication1.request_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Request Details</title>
    <link rel="stylesheet" type="text/css" href="styles-request details.css"> <!-- linked the styles file -->
<style type="text/css">
    input[type=text] {
  -webkit-transition: ease-in-out, width .35s ease-in-out;
  transition: ease-in-out,width .35s ease-in-out;
}
    .style1
    {
        width: 101%;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table id="home">
        <tr>
            <td colspan="2" class="left">
                <asp:Button ID="Button1" runat="server" CssClass="myButton" Height="40px" 
                    PostBackUrl="~/back office.aspx" Text="Back Office" Width="162px" />
            </td>
            <td><b>Search:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Search"></asp:TextBox>
                </td>
        </tr>

            
</table>
	
	<div id="main-df">
	<h2 class="left">Request</h2>
	
	<div id = "login-login" >
		<table>
			<tr >
				<td width="50%">Name:</td><td> 
                <asp:TextBox ID="name_rd" runat="server"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td width="50%">Email:</td><td> 
                <asp:TextBox ID="email_rd" runat="server"></asp:TextBox>
                </td>
			</tr>
			<tr>
				<td width="50%" >File Name(s):</td><td> 
                <asp:TextBox ID="filename_rd" runat="server"></asp:TextBox>
                </td>
			</tr>
			<tr><td colspan="2"></td></tr>
			</table>
			</div>
			<div id="login-login">			
		
		<table>
				<tr >
				<td class="style1">Other:</td>
			</tr>
			<tr ><td height="50%" class="style1" >
                <asp:TextBox ID="other_rd" runat="server" Height="174px" TextMode="MultiLine" 
                    Width="322px"></asp:TextBox>
                <br />
                <asp:Button ID="btn_delete" runat="server" CssClass="myButton" 
                    onclick="btn_delete_Click" Text="Delete" 
                    ToolTip="Press to delete this request" />
                <asp:Label ID="lbl_msg" runat="server" ForeColor="Red" 
                    style="font-weight: 700; font-size: x-large"></asp:Label>
                </td></tr>
			
		</table>
		<p class="center"><b>Developed by M. Faseeh Raza<b></p>
	
	</div>
			
	</div>
    </div>
    </form>
</body>
</html>
