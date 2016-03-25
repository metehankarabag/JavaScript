<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_70_SetAndGetMultipleCookies.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
                    Name
                </td>
                <td>
                    <input id="txtName" type="text" />
                </td>
            </tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <input id="txtEmail" type="text" />
                </td>
            </tr>
            <tr>
                <td>
                    Gender
                </td>
                <td>
                    <input id="txtGender" type="text" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="button" value="Set Cookie" onclick="setCookie()" />
                    <input type="button" value="Get Cookie" onclick="getCookie()" />
                    <input type="button" value="Clear" onclick="clearTextBoxes()" />
                </td>
            </tr>
        </table>
    </div>
    </form>
    <script type="text/javascript">
        /*70.Ders Set and Get Multiple Cookies
        Yani bizim tek Cookie yapmaya çalıştığımız iş olmuyor fakat farklı farklı Cookie nesneleri tek bir string olarak birleştirilerek, birden fazla Key/Value çiftini tek bir Cookie'den alabiliyoruz. Cookie'ler tek bir string içinde birleştirilirken birbirlerinden noktalı virgül ve bir boşluk ile ayrılıyor. yani ilk önce Cookie çiftlerini bölmek için split() methoduna parametre olarka "; " değerini veriyoruz. Cookie'leri ayırdıktan sonra işlem aynı
        */
        function setCookie() {
            var customObject = {};
            document.cookie = "txtName=" + document.getElementById("txtName").value;
            document.cookie = "txtEmail=" + document.getElementById("txtEmail").value;
            document.cookie = "txtGender=" + document.getElementById("txtGender").value;


        }
        function getCookie() {
            if (document.cookie.length != 0) {
                var cookiesArray = document.cookie.split("; ");
                for (var i = 0; i < cookiesArray.length; i++) {
                    var nameValueArray = cookiesArray[i].split("=");
                    document.getElementById(nameValueArray[0]).value = nameValueArray[1];

                    //if (nameValueArray[0] == "name") {
                    //    document.getElementById("txtName").value = nameValueArray[1];
                    //}
                    //if (nameValueArray[0] == "name") {
                    //    document.getElementById("txtEmail").value == nameValueArray[1];
                    //}
                    //if (nameValueArray[0] == "name") {
                    //    document.getElementById("txtGender").value = nameValueArray[1];
                    //}


                }
            } else {
                alert("Cookie not found");
            }
        }
        function clearTextBoxes() {
            document.getElementById("txtName").value = "";
            document.getElementById("txtEmail").value = "";
            document.getElementById("txtGender").value = "";
        }
    </script>
</body>
</html>
