<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_71_UpdateAndDeleteCookies.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
    <script type="text/javascript">
        /*71 Update And Delete Cookies
        Tek bir Cookie birden fazla string'i biz ekleyemiyoruz. Birden fazla Cookie nesnesi tek bir string'de key/Value çiftlerini birleştirebiliyor. Bu Cookie'lerden birini güncellemeyi istiyorsak, aynı key ismini kullanarak başka bir Cookie oluşturmamız yeterlidir. Cookie'i silmek için ise max-age Attribute'una -1 değeri verdiğimizde bu Cookie'i hemen sil anlamına gelir. Fakat bu Attribute'u internet Explorer desteklemiyor. Bu tarayıcılar içinde expires Attribute'una geçmiş bir zamanda tarih vermeliyiz.

        2 soru var.
        Cookie boyutu kaç en fazla ne kadar olabilir ve bir domain aynı anda en fazla kaç tane Cookie tutabilir.
        Bu durum tarayıcıya göre belirleniyor ve bunu test eden bir site var. -> http://browsercookielimits.squawky.net sayfadaki test butonuna tıkladıktan bir kaç dk sonra sonuçları alabiliyoruz.
        */
        function setCookei() {
            document.cookie = "color=green;max-age=3600";
        }
        function getCookie() {
            if (document.cookie.length != 0) {
                var nameValueArray = document.cookie.split("=");
                alert("Name = " + nameValueArray[0] + " Value = " + nameValueArray[1]);
            }
        }
    </script>
</body>
</html>
