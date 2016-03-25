<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_12_SubstringExample.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*
        */
        function GetEmailAndDomainPartOfaEmail() {
            var email = document.getElementById("txtEmail").value;

            var emailPart = email.substring(0, email.indexOf("@"));
            var domainPart = email.substring(email.indexOf("@") + 1);

            document.getElementById("txtEmailPart").value = emailPart;
            document.getElementById("txtDomainPart").value = domainPart;
        }
        function GetTopLevelDomain() {
            var url = document.getElementById("txtUrl").value;
            var topLevelDomain = url.substring(url.lastIndexOf("."));
            document.getElementById("txtTopLevelDomain").value = topLevelDomain;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="tblEmail" style="float: left">
            <tr>
                <td>
                    Email Address
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Email Part
                </td>
                <td>
                    <asp:TextBox ID="txtEmailPart" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Domain Part
                </td>
                <td>
                    <asp:TextBox ID="txtDomainPart" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <input id="Button1" type="button" value="Get Email & Domain Part" onclick="GetEmailAndDomainPartOfaEmail()" />
                </td>
            </tr>
        </table>
        <table id="tblUrl">
            <tr>
                <td>
                    Website Url
                </td>
                <td>
                    <asp:TextBox ID="txtUrl" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Top Level Domain
                </td>
                <td>
                    <asp:TextBox ID="txtTopLevelDomain" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <input id="Button2" type="button" value="Get top level domain" />
                </td>
            </tr>
        </table>
    </div>
    </div>
    </form>
</body>
</html>
