<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="drop files.aspx.cs" Inherits="WebApplication1.drop_files" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Drop Files</title>
    <link rel="stylesheet" type="text/css" href="styles-df.css" /> <!-- linked the styles file -->
    <style type="text/css">
        .style1
        {
            padding-right: 15px;
            width: 127px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table id="home">
            <tr>
                <td colspan="2" class="left">
                    &nbsp;</td>
            </tr>
</table>
	
	<div id="main-df">
	<h2 class="left">Upload your files here</h2>
	<div id = "table-login" width="860px" height="300px">
		<table>
			<tr>
				<td width="860px" height="100px" class="a">

						<div><p style= "text-align:center; height: 202px;"><br><br><br>Choose files to 
                            upload files below<br><br><br><br><br><br></p>
						</div>

				</td>
			</tr></table> 
	</div>
			<div id="table-login">
				<table>
					<tr>
						<td width="600px">
							 <asp:FileUpload ID="FileUpload1" runat="server" 
            />
							 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                 ControlToValidate="FileUpload1" Display="Dynamic" 
                                 ErrorMessage="*No File Selected" ForeColor="Red"></asp:RequiredFieldValidator>
							<td >
                                <asp:Button ID="btn_upload" runat="server" value="Add" CssClass="myButton" Text="Choose Files" 
                                    Width="148px"  SkinID="btn" />
                        </td>
							</tc>
						<tc>
							<td class="style1">
                                <asp:Button ID="Button2" runat="server" CssClass="myButton" Text="Upload" 
                                    Width="120px" onclick="Button2_Click" />
                        </td>
						</tc>
						</td>
					</tr>
				    <tr>
                        <td>
                            <b>
							<asp:Label ID="lbl_upload" runat="server"></asp:Label>
							</b>
                        </td>
                    </tr>
				</table>
			</div>
	</div>
<p class="color"><b><u>Developed by Muhammad Faseeh Raza</u></p>
    </div>
    </b>
    <p class="color">
							 &nbsp;</p>
    </form>
</body>
</html>
