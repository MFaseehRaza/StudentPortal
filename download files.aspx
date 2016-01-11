<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="download files.aspx.cs" Inherits="WebApplication1.download_files" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Download Files</title>
    <link rel="stylesheet" type="text/css" href="styles-down-files.css"> <!-- linked the styles file -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style type="text/css">
        #field
        {
            width: 897px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table id="home">
        <tr>
    	    <td colspan="2" class="left">
                <asp:Button ID="Button1" runat="server" CssClass="myButton" 
                    PostBackUrl="~/welcome.aspx" Text="Home" />
            </td>
        </tr>
	</table>
	
	<div id="main-df">
	<h2 class="left">Download Files</h2>
	<div id="table-login">
		<p><h4>The files have been sorted in alphabetical order. Click the button bellow to see the list.</h4></p>
	</div>
			<div >
				<table>
					<tr>
						<td >
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="myButton" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
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
                                <asp:ListItem Value="16">P</asp:ListItem>
                                <asp:ListItem Value="17">Q</asp:ListItem>
                                <asp:ListItem Value="18">R</asp:ListItem>
                                <asp:ListItem Value="19">S</asp:ListItem>
                                <asp:ListItem Value="20">T</asp:ListItem>
                                <asp:ListItem Value="21">U</asp:ListItem>
                                <asp:ListItem Value="22">V</asp:ListItem>
                                <asp:ListItem Value="23">W</asp:ListItem>
                                <asp:ListItem Value="24">X</asp:ListItem>
                                <asp:ListItem Value="25">Y</asp:ListItem>
                                <asp:ListItem Value="26">Z</asp:ListItem>
                                <asp:ListItem Value="27">OTHER</asp:ListItem>
                                </asp:DropDownList>
                                
                                <asp:Label ID="lbl_txt" runat="server" ForeColor="Red"></asp:Label>
                                
                                </td>
					</tr>
				</table>
			    <br />
                </div>
                <div id="field">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="1" Height="338px" 
                     
                    style="margin-left: 0px" Width="873px" onrowcommand="GridView2_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="File">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    CommandArgument='<%# Eval("File") %>' CommandName="Download" 
                                    Text='<%# Eval("File") %>' onclick="LinkButton1_Click"></asp:LinkButton>
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
                <br />
                <br />
			</div>
	</div>
    </div>
    </form>
</body>
</html>
