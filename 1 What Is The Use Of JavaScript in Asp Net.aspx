<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_1_WhatIsTheUseOfJavaScriptInAspNet.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">
        /*1. Ders What is the use of JavaScript in Asp Net
		Derste söylediği kadarıyla JavaSript'in kullanım amacı Client bilgisayarını kullanarak yapabileceğimiz bir işi için gereksiz yere Server'ın çalıştırılmasını engellemek. JavaScript, Html ve Css'i hareketlendirmek içinde kullanılabilir. Fakat bu beni ilgilendirmez.
		
        javaScript kullanmanın avantajları
        1. Client ile Server arasında yapılacak gereksiz yolculukları Client'da engellenmesini sağlar.
        2. JavaScript Client bilgisayarında çalıştığı için Server'ı yormamış oluruz.
        3. JavaScript kullanarak, sayfanın sadece belirli bölümlerinin Server'a gönderebiliriz.(Ajax)
        4. JavaScript kullanarak, sayfanın elementlerini hareketlendirebiliriz.
		
		getElementById(): Parametre olarak aldığı id değeri ile HTML Tag'ını Javascript alanına getirmemizi sağlar. 
        Validation işlemi yapan bir function oluşturduk. Fakat JavaScript'de Function oluştururken, dönüş türü belirleyemiyoruz. Oluşturduğumuz function'da return'e verilirse method onu alıyoruz. Bu methodu bir button'un ClientClick Event'i ile tetikledik. Methodun dönüş değeri False ise Event sayfayı Server'a postalanmasın istiyoruz. Bu yüzden method'dan aldığımız değeri dönmemiz gerekiyor. Fakat nereye dönüyoruz anlamadım. __EVENTVALIDATION adında bir Tag var sanırım buna
        */
        /*2. Ders Why do we need both client side and server side validation
        JavaScript Client bilgisayarında çalıştığı için çalışması engellenebilir. Bu durumda yapılası gereken iş atlanır. Kullanıcı JavaScript'i kapatmasa bile Fiddler kullanarak, JavaScript'i açabilir. Bu yüzden Server Side Validation gereklidir.
        */
        /*3. Ders Disadvantages of JavaScript
        1. Security: JavaScript Client'da çalıştığı için Client bilgisayarındaki bilgilerin çalınması için kullanılabilir. Bu yüzden insanlar javaScript'i kapatabilir.
        2. Browser Compatibility: JavaScript koduna her tarayıcı aynı muameleyi yapmaz. Bu işlevselliğin ve kullanıcı arayüzünün tarayıcıdan tarayıcıya değişiklik göstermesine neden olabilir. Bu yüzden tüm tarayıcılar üzerinde test yapamak gerekir. Fakat bir JavaScript kütüphanesi olan Jquery'de bu durum gerçek bir sorun değildir.

        1. Örnek: InnerText Property'i IE ve Chrome'da çalışır fakat Firefox'da çalışmaz. Yazdığımız function'ın tüm tarayıcılarda çalışmasını istiyorsak, InnerText yerine textContent Property'sini kullanmalıyız.
        2. Örnek: C#'da yaptığımız gibi Control Id'i kullanarak, HTML TAG'ını JavaScript'e çekebiliriz. Fakat bu kod Internet Explorer'da çalışmaz. Bu yüzden HTML TAG'ını getElementById() methodu ile almalıyız.
        */
        /*4.Ders How to debug javascript in visual studio
          C# kodunu debug eder gibi javaScript kodunuda debug edebiliriz. Fakat sayfayı Internet Explorer'da çalıştırmamız gerekiyor. QuickWatch ve AddWatch pencerelerini bir değişkendeki değerin uygulama çalışırken nasıl değiştiğini görmek için kullanabiliriz. Immediate Window'u da kullanabilir.
        */
        function ValidateForm() {
            var ret = true;
            if (document.getElementById("txtFirstName").value == "") {
                ret = false;
                document.getElementById("lblFirstName").innerText = "First Name is required";
            }
            else {
                document.getElementById("lblFirstName").innerText = "";
            }
            if (document.getElementById("txtLastName").value == "") {
                ret = false;
                document.getElementById("lblLastName").innerText = "Last Name is required";
            }
            else {
                document.getElementById("lblLastName").innerText = "";
            }
            if (document.getElementById("txtEmail").value == "") {
                ret = false;
                document.getElementById("lblEmail").innerText = "Email is required";
            }
            else {
                document.getElementById("lblEmail").innerText = "";
            }
            return ret;
        }
        function ddlGenderSelectionChanged() {
            alert('You selected ' + ddlGender.value);
        }
        function ddlGenderSelectionChanged1() {
            alert('You selected ' + document.getElementById('ddlGender').value);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    First Name
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:Label ID="lblFirstName" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Last Name
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:Label ID="lblLastName" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Select Gender
                </td>
                <td>
                    <select id="ddlGender" onchange="ddlGenderSelectionChanged()">
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:Label ID="lblEmail" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Button" OnClick="btnSubmit_Click"
                        OnClientClick="return ValidateForm()" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
