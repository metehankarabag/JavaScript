<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_36_Events.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="btn" type="button" value="Click me" onmouseover="changeColorOnMouseOver()" onmouseout="this.style.background='black'; this.style.color='white'"/>
        <input id="btn1" type="submit" value="submit" onclick="confirmOnSubmit()" />
        <input id="txt" type="text" onkeyup="validateRequiredField(txt)" onblur="validateRequiredField(txt)"/>
    </div>
    </form>
    <script type="text/javascript">
        /*36 Events
        Event tarayıcı bir iş gerçekleştiğinde gönderilen bir sinyaldir. Bir Event gerçekleştiğinde kullanıcının yaptığı işleme karşılık olarak JavaScript kodu veya Function'ı çalıştırabiliriz. Yapmamız gereken şey kodu veya Function'ı Event ile ilişkilendirmek. Event'e cevan veren function'a Event Handler denir.
        Bir Event ile Function'ı ilişkilendirmenin 3 yolu var.
        1. Tag Event Property'leri
        2. Dom object Property'leri 
        3. Özel methodlar.

        Not: confirm() methodu form'u server'a postalama isteğinden önce kullanıcıdan onay istememizi sağlar. True yada False döner.
        Not: Event handler method bir değer dönüyorsa, değeri tarayıcıya gönderebilmemiz içi Event Attribute'unda return Key word'ünü kullanıyoruz.

        onkeyup Event'i tarayıcıda her key'e basıldığında çalışır.
        onblur Event'i bir Tag focus'u her kaybettiğinde çalışır.
        */
        function changeColorOnMouseOver() {
            var btn = document.getElementById("btn");
            btn.style.background = "red";
            btn.style.color = "yellow";
        }
        function confirmOnSubmit() {

            if (confirm("Are you sure you want to submit")) {
                alert("You selected OK");
                return true;
            }
            else {
                alert("You selected Cancel");
                return false;
            }
        }
        function validateRequiredField(controlId) {
            var control = document.getElementById(controlId);
            control.style.color = "white";
            if (control.value == "") {
                control.style.background = "red";
            }
            else {
                control.style.background = "green";
            }
        }
    </script>
</body>
</html>
