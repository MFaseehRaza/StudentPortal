<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view feedback.aspx.cs" Inherits="WebApplication1.feedback_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Feedback</title>
    <link rel="stylesheet" type="text/css" href="styles-view requests.css"> <!-- linked the styles file -->
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
    .style2
    {
        width: 218px;
        color: #FFFFFF;
    }
    .style3
    {
        width: 28px;
        color: #FFFFFF;
    }
    .style4
    {
        width: 233px;
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

<div id="main-bar">
	<h1>Feedbacks</h1>
</div>

<div id="main-w">
	<ul class="a">
        <b>
            <p><h3>The feedbacks are listed below. Click on any to view the details.</h3></p>
            <br />
        <div>
        <table border="1">
            <tr>
                <th class="style3">ID</th>
                <th class="style2">Name</th>
                <th class="style4">Email</th>
            </tr>
                <asp:Label ID="lbl_data" runat="server" Text=""></asp:Label>
        </table>
        </div>
        </b>
        </ul>
</div>
    </div>
    </form>
</body>
</html>
