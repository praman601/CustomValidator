<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CustomValidator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <b>Enter a positive even number:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEven" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="txtCustomValidator" runat="server" 
                            ErrorMessage="Not an even Number"
                            ForeColor="Red"
                            ControlToValidate="txtEven" OnServerValidate="txtCustomValidator_ServerValidate"
                            
                            ></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" EnableTheming="False" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblStatus" runat="server"></asp:Label>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
