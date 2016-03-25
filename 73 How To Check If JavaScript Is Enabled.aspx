<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_73_HowToCheckIfJavaScriptIsEnabled.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <noscript>
        <style type="text/css">
            .rootDiv
            {
                display: none;
            }
        </style>
        <h1>
            It seems that you have disabled JavaScript. Please enable JavaScript</h1>
    </noscript>
    <div class="rootDiv">
        <table>
            <tr>
                <td>
                    Name
                </td>
                <td>
                    <input id="Text1" type="text" onfocus="validateifEmpty('Text1')" onblur="validateifEmpty('Text1')"
                        onkeyup="validateifEmpty('Text1')" />
                </td>
            </tr>
            <tr>
                <td>
                    Gender
                </td>
                <td>
                    <input id="Text2" type="text" onfocus="validateifEmpty('Text2')" onblur="validateifEmpty('Text2')"
                        onkeyup="validateifEmpty('Text2')" />
                </td>
            </tr>
        </table>
    </div>
    </form>
    <script type="text/javascript">
        /*73.Ders How To Check If JavaScript Is Enabled
        noscript element'i tarayıcı JavaScript'i desteklemediğinde veya Javascript kapatıldığında çalışır. Bu element içinde mesajı yazdırabiliriz. Fakat bu diğer element'lerin görüntülenmesini engellemez. Bu yüzden noscript alanı içinde css oluşturup root div'e bu css i veriyoruz. No script çalıştığında css div'e uygulanıyor ve görüntü kayboluyor.
        */
        function validateifEmpty(controlId) {
            var control = document.getElementById(controlId);
            if (control.value == "") {
                control.style.backgroundColor = "red";
            }
            else {
                control.style.backgroundColor = "white";
            }
        }
    </script>
</body>
</html>
