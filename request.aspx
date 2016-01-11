<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request.aspx.cs" Inherits="WebApplication1.request" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Request</title>
    <link rel="stylesheet" type="text/css" href="styles-request.css"> <!-- linked the styles file -->
<style type="text/css">
    input[type=text] {
  -webkit-transition: ease-in-out, width .35s ease-in-out;
  transition: ease-in-out,width .35s ease-in-out;
}
    .style1
    {
        width: 103%;
    }
    .style2
    {
        width: 951px;
    }
    .style4
    {
        width: 28%;
    }
    .style5
    {
        width: 354px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table id="home">
            <tr>
                <td colspan="2" class="left">
                    <asp:Button ID="Button2" runat="server" CssClass="myButton" 
                        PostBackUrl="~/welcome.aspx" Text="Home" Width="108px" />
                </td>
            </tr>
</table>
	
	<div id="main-df">
	<h2 class="left">Request</h2>
	<div id="login-login1">
				<table>
					<tr>
						<td class="style2">
							<p style= text-align:left> Entities marked "*" are mandatory.<br> In-case you have more than one files to request just write them in the "File-Name" column separated by commas.<br>Remember to write full names of your files. 
							</p>
						</td>
					</tr>
				</table>
			</div>
	<div id = "login-login" >
		<table>
			<tr >
				<td class="style4">*Name:</td><td class="style5"> 
                <asp:TextBox ID="name_r" runat="server" Width="181px"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
			</tr>
			<tr>
				<td class="style4">*Email:</td><td class="style5"> 
                <asp:TextBox ID="email_r" runat="server" Width="181px"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
			</tr>
			<tr>
				<td class="style4" >*File Name(s):</td><td class="style5"> 
                <asp:TextBox ID="filename_r" runat="server" Width="181px"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
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
                <asp:TextBox ID="other_r" runat="server" Height="141px" TextMode="MultiLine" 
                    Width="342px" MaxLength="100">Please describe the COURSE to which the file is related and other necessary details here.</asp:TextBox>
                </td></tr>
			<tr>
				<td class"right" class="style1">
                    <asp:Button ID="btn_submit_r" runat="server" CssClass="myButton" 
                        PostBackUrl="~/request.aspx" Text="Submit" onclick="btn_submit_r_Click" />
                &nbsp;<asp:Label ID="lbl_msg" runat="server" ForeColor="Green" 
                        style="font-size: large; font-weight: 700"></asp:Label>
                </td>
			</tr>
		</table>
		<p class="center"><b>Developed by M. Faseeh Raza<b></p>
	
	</div>
			
	</div>
    </div>
    </form>
</body>
</html>
