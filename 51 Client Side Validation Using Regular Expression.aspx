<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_51_ClientSideValidationUsingRegularExpression.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="txtEmail" type="text" onkeyup="validateEmail()" />
    </div>
    </form>
    <script type="text/javascript">
        /*51.Ders Client Side Validation Using Regular Expression

        */
        function validateEmail() {
            var emailTextBox = document.getElementById("txtEmail"); // Tag'ı alıyoruz. Çünkü Tag üzerinde style ayarı yapacağız.
            var email = emailTextBox.value;
            var emailRegExp = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

            emailTextBox.style.color = "white";
            if (emailRegExp.test(email)) {
                emailTextBox.style.backgroundColor = "green";
            } else {
                emailTextBox.style.backgroundColor = "red";
            }

        }
    </script>
</body>
</html>
