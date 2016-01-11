<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropped items.aspx.cs" Inherits="WebApplication1.dropped_items" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dropped Items</title>
    <link rel="stylesheet" type="text/css" href="dropped files.css"> <!-- linked the styles file -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style type="text/css">
body{background-image: url("office-bg.jpg");
  margin: 0 auto;}
 h2,h4{
   text-shadow: 2px 2px 8px #FF0000;
 } 

    .style1
    {
        width: 945px
    }

  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table id="home">
        <tr>
            <td colspan="2" class="left">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="myButton" Height="40px" 
                    PostBackUrl="~/back office.aspx" Text="Back Office" Width="159px" />
                <b>Search:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Search" Width="156px"></asp:TextBox>
                </td>
        </tr>

            
</table>
	
	<div id="main-df">
	<h2 class="left">You can see dropped files here</h2>
	<div id="table-login">
		<p><h4>The files have been sorted in alphabetical order. Click the button bellow to see the list.</h4></p>
	</div>
</div>
			<div id="main-df2" >
				<table>
					<tr>
						<td class="style1" >
							&nbsp;</td>
					</tr>
				</table>
			    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" Height="373px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    style="margin-left: 0px" Width="945px">
                    <Columns>
                        <asp:TemplateField HeaderText="File">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    CommandArgument='<%# Eval("File") %>' CommandName="Download" 
                                    Text='<%# Eval("File") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Size" HeaderText="Size in KiloBytes" />
                        <asp:BoundField DataField="Type" HeaderText="File Type" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
			</div>
	
    </div>
    </form>
</body>
</html>
