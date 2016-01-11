<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <title>Welcome</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- linked the styles file -->
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
    list-style-type: circle;
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
    .style1
    {
        text-align: right;
        text-shadow: 2px 2px 8px #FF0000;
    }

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table id="login">
            
            <tc>
                <td colspan="2" class="left">
                    <asp:Button ID="Button2" runat="server" CssClass="myButton" Text="Login" 
                        PostBackUrl="~/login.aspx" />
            </td>
            </tc>
            <tc>
                <td><b>Search:&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="29px" TextMode="Search" 
                        Width="167px"></asp:TextBox>
                </td>
            </tc>
</table>
<div id="main-bar">
    <h1 class="style1" ><strong style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp; WELCOME 
        to Student Portal</strong><br />
    </h1>
</div>
<div id="main-w">
    <ul class="a">
        <b>

    <li><a href="drop%20files.aspx">Click here to drop files</a></li><br>

    <li><a href="download%20files.aspx" type="button" data-toggle="dropdown">Click here to Download files</a></li><br>
    <li><a href="request.aspx">Click here to make a request</a></li><br>
    <li><p>Press this button for feedback</p></li>
</b>
</ul>

<div id="feedback">

      <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="myButton" 
        Height="38px" Text="Feedback" Width="127px" onclick="Button1_Click" 
          PostBackUrl="~/feedback.aspx" />
        
</div>
</div>
<div id="main-w">
    <h2><b>About Us</b></h2><br>
    <p>This is a platform where you can come and drop/find your course related files. You can download, search and even make a request for some material all in one place. No need to go and search the Google to find the stuff, name it and we'll do that for you and informm you via email. No need to look for half of documents on dropbox or G-Drive etc. you can look for all that right here. The site is currently under construction. We request you drop as much relevant course material as possible to help us grow our data-base.</p>
</div>

    </div>
    </form>
</body>
</html>
