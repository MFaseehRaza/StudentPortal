<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dictionary.aspx.cs" Inherits="WebApplication1.dictionary" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
            font-size: 10px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="dictionary">
            <tr>
                <th>
                    File Name
                </th>
                <th>
                    Delete
                </th>
            </tr>
            <asp:Label ID="lbl_files" runat="server" Text="Label"></asp:Label>
        </table>
    </div>

    
    </form>
</body>
</html>
