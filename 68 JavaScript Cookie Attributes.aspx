<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_68_JavaScriptCookieAttributes.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="button" onclick="setCookie()" value="Set Cookie"/>
    <input type="button" onclick="getCookie()" value="Get Cookie"/>
    </div>
    </form>
    <script type="text/javascript">
        /*68.Ders JavaScript Cookie Attributes
        expires ,max-age: Cookie'nin ne kadar saklanacağını belirler. exrires kullanırken tarihi string formatın da belirleriz. max-age kullanırken saniye olarak belirleriz. Exprie kesin bir tarih belirlerken, max-age geçerli zamana göre bir zaman belirler. Internet Explorer max-age'i desteklemiyor. Bu yüzden 2 sinide kullanmalıyız.
        domain: Değer olarak sitenin domain'ini veriyoruz. Cookie bu domain'de ve alt domain'lerinde geçerli olur. Değer olarak alt domain'lerden birini verirsek, üst domain bunu kullanamaz.
        path: Cookie'i oluşturan sayfa ile aynı klasörde bulunan sayfalar. Bu klasörün alt klasöründeki sayfalar Cookie kullanabilir. Fakat üst klasöründeki sayfalar okuyamaz. Bu property'e değer olarak root yolunu verirsek, oluşturulan Cookie tüm uygulama kullanabilir. -> "path=/" tüm uygulamanın Cookie'i kullanabileceği anlamına gelir.
        secure: Cookie'nin sadece Https protokolü ile kullanılabilmesini sağlar. Bu Cookie'nin her zaman şifreli olduğu anlamına gelir.
        */
        function setCookie() {
            //document.cookie = "color=red;expires=Fri, 5 Aug 2016 01:00:00 UTC";
            document.cookie = "color=red;max-age=" + (60 * 60 * 24 * 30) + ";path=/";
        }
        function getCookie() {
            if (document.cookie.length != 0) {
                var nameValueArray = document.cookie.split("=");
                alert("Name = " + nameValueArray[0] + " Value = " + nameValueArray[1]);
            }
            else {
                alert("Cookie not found");
            }
        }
    </script>
</body>
</html>
