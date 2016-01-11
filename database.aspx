<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="database.aspx.cs" Inherits="WebApplication1.database" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Database</title>
    <link rel="stylesheet" type="text/css" href="styles-database.css">
    <!-- linked the styles file -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style type="text/css">
h2,h4{
  text-shadow: 2px 2px 8px #FF0000;
}
  
        .dictionary
        {
            margin: 0px;
            padding: 0px;
            width: 100%;
            box-shadow: 10px 10px 5px #888888;
            border: 1px solid #000000;
            -moz-border-radius-bottomleft: 0px;
            -webkit-border-bottom-left-radius: 0px;
            border-bottom-left-radius: 0px;
            -moz-border-radius-bottomright: 0px;
            -webkit-border-bottom-right-radius: 0px;
            border-bottom-right-radius: 0px;
            -moz-border-radius-topright: 0px;
            -webkit-border-top-right-radius: 0px;
            border-top-right-radius: 0px;
            -moz-border-radius-topleft: 0px;
            -webkit-border-top-left-radius: 0px;
            border-top-left-radius: 0px;
        }
        .dictionary table
        {
            border-collapse: collapse;
            border-spacing: 0;
            width: 100%;
            height: 100%;
            margin: 0px;
            padding: 0px;
        }
        .dictionary tr:last-child td:last-child
        {
            -moz-border-radius-bottomright: 0px;
            -webkit-border-bottom-right-radius: 0px;
            border-bottom-right-radius: 0px;
        }
        .dictionary table tr:first-child td:first-child
        {
            -moz-border-radius-topleft: 0px;
            -webkit-border-top-left-radius: 0px;
            border-top-left-radius: 0px;
        }
        .dictionary table tr:first-child td:last-child
        {
            -moz-border-radius-topright: 0px;
            -webkit-border-top-right-radius: 0px;
            border-top-right-radius: 0px;
        }
        .dictionary tr:last-child td:first-child
        {
            -moz-border-radius-bottomleft: 0px;
            -webkit-border-bottom-left-radius: 0px;
            border-bottom-left-radius: 0px;
        }
        .dictionary tr:hover td
        {
        }
        .dictionary tr:nth-child(odd)
        {
            background-color: #ffaa56;
        }
        .dictionary tr:nth-child(even)
        {
            background-color: #ffffff;
        }
        .dictionary td
        {
            vertical-align: middle;
            border: 1px solid #000000;
            border-width: 0px 1px 1px 0px;
            text-align: left;
            padding: 19px;
            font-size: 18px;
            font-family: Arial;
            font-weight: normal;
            color: #000000;
        }
        .dictionary tr:last-child td
        {
            border-width: 0px 1px 0px 0px;
        }
        .dictionary tr td:last-child
        {
            border-width: 0px 0px 1px 0px;
        }
        .dictionary tr:last-child td:last-child
        {
            border-width: 0px 0px 0px 0px;
        }
        .dictionary tr:first-child td
        {
            background: -o-linear-gradient(bottom, #ff7f00 5%, #bf0000 100%);
            background: -webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff7f00), color-stop(1, #bf0000) );
            background: -moz-linear-gradient( center top, #ff7f00 5%, #bf0000 100% );
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff7f00", endColorstr="#bf0000");
            background: -o-linear-gradient(top,#ff7f00,bf0000);
            background-color: #ff7f00;
            border: 0px solid #000000;
            text-align: center;
            border-width: 0px 0px 1px 1px;
            font-size: 14px;
            font-family: Arial;
            font-weight: bold;
            color: #ffffff;
        }
        .dictionary tr:first-child:hover td
        {
            background: -o-linear-gradient(bottom, #ff7f00 5%, #bf0000 100%);
            background: -webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ff7f00), color-stop(1, #bf0000) );
            background: -moz-linear-gradient( center top, #ff7f00 5%, #bf0000 100% );
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#ff7f00", endColorstr="#bf0000");
            background: -o-linear-gradient(top,#ff7f00,bf0000);
            background-color: #ff7f00;
        }
        .dictionary tr:first-child td:first-child
        {
            border-width: 0px 0px 1px 0px;
        }
        .dictionary tr:first-child td:last-child
        {
            border-width: 0px 0px 1px 1px;
        }
        
    

        .style1
        {
            width: 337px;
            font-size: large;
        }
        .style2
        {
            width: 169px;
            font-size: large;
        }
        .style3
        {
            width: 170px;
            font-size: large;
        }
        #field
        {
            width: 900px;
            height: 450px;
            overflow:scroll;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="home">
            <tr>
                <td colspan="2" class="left">
                    <asp:Button ID="Button1" runat="server" CssClass="myButton" Height="40px" PostBackUrl="~/back office.aspx"
                        Text="Back Office" Width="162px" />
                </td>
                <td>
                    <b>Search:&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Search"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div id="main-df">
            <h2 class="left">
                Database</h2>
            <div id="table-login">
                <p>
                    <h4>
                        The files have been sorted in alphabetical order. Click the button bellow to see
                        the list.</h4>
                </p>
            </div>
            <div>
                <table>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="myButton" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                AutoPostBack="True">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="~/Uploads/A">A</asp:ListItem>
                                <asp:ListItem Value="2">B</asp:ListItem>
                                <asp:ListItem Value="3">C</asp:ListItem>
                                <asp:ListItem Value="4">D</asp:ListItem>
                                <asp:ListItem Value="5">E</asp:ListItem>
                                <asp:ListItem Value="6">F</asp:ListItem>
                                <asp:ListItem Value="7">G</asp:ListItem>
                                <asp:ListItem Value="8">H</asp:ListItem>
                                <asp:ListItem Value="9">I</asp:ListItem>
                                <asp:ListItem Value="10">J</asp:ListItem>
                                <asp:ListItem Value="11">K</asp:ListItem>
                                <asp:ListItem Value="12">L</asp:ListItem>
                                <asp:ListItem Value="13">M</asp:ListItem>
                                <asp:ListItem Value="14">N</asp:ListItem>
                                <asp:ListItem Value="15">O</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="lbl_txt" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
            </div>
            <div id="field">
                <table class="dictionary">
            <tr>
                <th class="style1">
                    File Name
                </th>
                <th class="style2">
                    Delete
                </th>
                <th class="style3">
                Save
                </th>
            </tr>
            <asp:Label ID="lbl_files" runat="server" Text="Label"></asp:Label>
        </table>
                <br />
                <br />
            </div>
        </div>
    </div>
   
    </form>
</body>
</html>
