<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

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
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table id="login">
            
            <tc>
                <td colspan="2" class="left"><a href="C:\Users\Muhammad Faseeh Raza\Desktop\ASP.NET-Training\ASP.NET Training\login.html" class="myButton"><b>Login</b></a></td>
            </tc>
            <tc>
                <td><b>Search: <b><input type="text" name="search" color="white">
                </td>
            </tc>
</table>
<div id="main-bar">
    <h1>WELCOME USER</h1>
</div>
<div id="main-w">
    <ul class="a">
        <b>

    <li><a href="C:\Users\Muhammad Faseeh Raza\Desktop\ASP.NET-Training\ASP.NET Training\drop files.html">Click here to drop files</a></li><br>

    <li><a href="C:\Users\Muhammad Faseeh Raza\Desktop\ASP.NET-Training\ASP.NET Training\download files.html" type="button" data-toggle="dropdown">Click here to Download files</a></li><br>
    <li><a href="C:\Users\Muhammad Faseeh Raza\Desktop\ASP.NET-Training\ASP.NET Training\request.html">Click here to make a request</a></li><br>
    <li><p>Press this button for feedback</p></li>
</b>
</ul>

<div id="feedback">

<table>
            <tr>
                <td colspan="2" class="left"><a href="C:\Users\Muhammad Faseeh Raza\Desktop\ASP.NET-Training\ASP.NET Training\feedback.html" class="myButton"><b>Feedback</b></a></td>
            </tr>
</table>
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