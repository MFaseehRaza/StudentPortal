<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="WebApplication1.feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback</title>
    <link rel="stylesheet" type="text/css" href="styles-request.css"> <!-- linked the styles file -->
<style type="text/css">
    input[type=text] {
  -webkit-transition: ease-in-out, width .35s ease-in-out;
  transition: ease-in-out,width .35s ease-in-out;
        margin-right: 3px;
        margin-top: 0px;
    }
 /*input[type=text]:focus{
	width:250px;}*/

    .style1
    {
        width: 235px;
    }
    .style3
    {
        width: 129px;
    }
    .style4
    {
        width: 947px;
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
                        PostBackUrl="~/welcome.aspx" Text="Home" />
                </td>
            </tr>
</table>
	
	<div id="main-df">
	<h2 class="left">Feedback</h2>
	<div id="login-login1">
				<table>
					<tr>
						<td class="style4">
							<p style= text-align:left> Entities marked " * " are mandatory.Please make sure you enter valid email adress. We are thankful for your feedback.
							</p>
						</td>
					</tr>
				</table>
			</div>
	<div id = "login-login" >
		<table>
			<tr >
				<td class="style3" >*Name:</td><td> 
                <asp:TextBox ID="name_fb" runat="server"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
			</tr>
			<tr>
				<td class="style3" >*Email:</td><td> 
                <asp:TextBox ID="email_fb" runat="server"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
			</tr>
			
			<tr><td colspan="2"></td></tr>
			</table>
			</div>
			<div id="login-login">			
		
		<table>
				<tr >
				<td colspan="1" class="style1">Feedback:<br />
                    <asp:TextBox ID="other_fb" runat="server" Height="148px" TextMode="MultiLine" 
                        Width="304px">Please describe what you have to say. </asp:TextBox>
                    </td>
			</tr>
			<tr>
				<td class="style1" >
                    <asp:Button ID="btn_submit_fb" runat="server" CssClass="myButton" 
                        PostBackUrl="~/feedback.aspx" Text="Submit" 
                        onclick="btn_submit_fb_Click" />
                    <asp:Label ID="lbl_msg" runat="server" ForeColor="Green" 
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
