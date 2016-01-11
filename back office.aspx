<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="back office.aspx.cs" Inherits="WebApplication1.back_office" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Back Office</title>
    <link rel="stylesheet" type="text/css" href="styles-signin.css"> <!-- linked the styles file -->
<style>
ul.a a:link {
    color: white;
    background-color: transparent;
    text-decoration: none;
}
ul.a a:visited {
    color: white;
    background-color: transparent;
    text-decoration: none;
}
ul.a a:hover {
    color: white;
    background-color: transparent;
    text-decoration: underline;
    font-size: 24px;
}
ul.a a:active {
    color: yellow;
    background-color: transparent;
    text-decoration: underline;
}

ul{
    list-style-type: circle 5px;
    color: white;
}
input[type=text] {
  width: 100px;
  -webkit-transition: ease-in-out, width .35s ease-in-out;
  transition: ease-in-out,width .35s ease-in-out;
}
input[type=text]:focus {
  width: 250px;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table id="home">
        <tr>
            <td colspan="2" class="left">
                <asp:Button ID="Button1" runat="server" CssClass="myButton" Text="Logout" 
                    onclick="Button1_Click" 
                    onclientclick="confirm('Are you sure you want to leave?')" />
            </td>
            <td><b>Search:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Search"></asp:TextBox>
                </td>
        </tr>

            
</table>

<div id="main-bar">
	<h1>Hey there Admin</h1>
</div>

<div id="main-w">
	<ul class="a">
        <b>

	<li><a href="dropped%20items.aspx">Click here to view droped files</a></li><br>

	<li><a href="database.aspx">Click here to view database</a></li><br>
	<li><a href="view%20requests.aspx">Click here to view requests</a></li><br>
    <li><a href="view%20feedback.aspx" b>View feedbacks</b></a></li>
</b>
</ul>


</div>
    </div>
    </form>
</body>
</html>
