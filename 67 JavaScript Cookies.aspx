<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_67_JavaScriptCookies.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <select id="Select1" onchange="setColorCookie()">
            <option value="Select Color">Select Color</option>
            <option value="red">Red</option>
            <option value="green">Green</option>
            <option value="blue">Blue</option>
        </select>
    </div>
    </form>
    <script type="text/javascript">
        /*67.Ders JavaScript Cookies
        Http Stateless bir Protocol'dür. Yani Web Server client istediğini işledikten sonra, isteğin yapıldığı client ile ilgili hiç bir şeyi hatırlamayacak.

        Cookie'ler, Client bilgisayarında tutulan ve name-value ikilisinden oluşan küçük text dosyalarıdır. Varsayılan olarak tarayıcı kapandığında silinir. Tarayıcı kapandığında oluşturulan Cookie'nin silinmesini istemiyorsak, expires veya max-age Property'lerini kullanmalıyız. Client bilgisayarında Cookie oluşturmak için Document nesnesinin Cookie property'sini kullanacağız. Yazılmış Cookie'i okumak için de aynı Property'i kullanırız.
        */
        function setColorCookie() {
            var selectedColor = document.getElementById("Select1").value;
            if (selectedColor != "Select Color") {
                document.bgColor = selectedColor;
                document.cookie = "color=" + selectedColor + ";expires=Fri, 5 Aug 2016 01:00:00 UTC;";
            }
        }
        window.onload() = function () {
            if (document.cookie.length != 0) // Cookie silinebileceği için bu kontrolü yapıyoruz.
                var nameValueArray = document.cookie.split("=");
            document.bgColor = nameValueArray[1];
            document.getElementById("Select1").value = nameValueArray[1];
        }
    </script>
</body>
</html>
