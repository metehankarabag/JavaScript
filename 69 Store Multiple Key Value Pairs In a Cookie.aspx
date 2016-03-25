<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_69_StoreMultipleKeyValuePairsInaCookie.WebForm1" %>

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
        /*69.Ders Store Multiple Key Value Pairs In a Cookie
        Cookie oluştururken birden fazla Key/Value çiftinden oluşan bir cookie string'i yazabiliyoruz. Fakat bir Cookie sadece bir Key Value Peir tutabildiği için alırken sadece ilk çifti alabiliyoruz. Bu sorunu çözmenin 2 yolu var.
        1. Bir object oluşturup, object'i Json formatına çevirdikten sonra, Json formatındaki object'i cookie ekleyebiliriz. Json'u Mvc'de gördük, yanlış hatırlamıyorsam, nesnenin metadata'sındaki tüm üyeleri değerleri ile string formatında sunuyor.(property=value,vs..). Oluşturulan JsonString'i tek bir nesne olduğu için Cookie'e alabiliyoruz. Fakat içinde nesne property'lerini key/value çifti olarak barındırdığı için tüm değerlere alabiliriz. Çiftlere ulaşmak için yapmamız gereken tek şey JSON object'in Parse() methodunu kullanmak. Bu method Json nesnesini object'e çeviriyor ve bu object içinde oluşuturlacak property'leri biliyoruz.

        2. yol birden fazla Cookie oluşturmak.
        */
        function setCookie() {
            //var cookieString = "name=" +  document.getElementById("txtName").value +
            //                   ";email=" + document.getElementById("txtEmail").value +
            //                   ";gender=" + document.getElementById("txtGender").value;

            //document.cookie = cookieString;
            var customObject = {};
            customObject.name = document.getElementById("txtName").value;
            customObject.email = document.getElementById("txtEmail").value;
            customObject.gender = document.getElementById("txtGender").value;
            var jsonString = JSON.stringify(customObject);
            document.cookie = "cookieObject=" + jsonString;
        }
        function getCookie() {
            var nameValueArray = document.cookie.split("=");
            var customObject = JSON.parse(nameValueArray[1]); //JsonString'i aldık, object'e çevirik.
            document.getElementById("txtName").value = customObject.name;
            document.getElementById("txtEmail").value = customObject.email;
            document.getElementById("txtGender").value = customObject.gender;
        }
        function clearTextBoxes() {
            document.getElementById("txtName").value = "";
            document.getElementById("txtEmail").value = "";
            document.getElementById("txtGender").value = "";
        }
    </script>
</body>
</html>
