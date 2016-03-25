<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_72_HowToCheckIfCookiesAreEnabled.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="msg">
    
    </div>
    </form>
    <script type="text/javascript">
        /*72.Ders How To Check If Cookies Are Enabled
        cookieEnabled Property'si bir çok tarayıcı tarafından desteklenen ve cookie açıksa, true değilse false dönen bir property'dir. Fakat tarayıcıların eski versiyonları bu property'i desteklemiyor olabilir bu durum için test Cookie yazammız gerekir. Bu Property'nin desteklenmediği tarayıcılarda undefined alacağımız için if ile bu durumu kontrol ediyoruz.
        */
        function cookiesEnabled() {
            var areCookieEnabled = (navigator.cookieEnabled) ? true : false;
            if (typeof navigator.cookieEnabled == "undefined" && !areCookieEnabled)//areCookieEnabled undefined için false döner. if'den geçmesi için true lazım.
             {
                document.cookie = "mytestCookie";
                areCookieEnabled = document.cookie.indexOf("mytestCookie") != -1 ? true : false;
            }
            return areCookieEnabled;
        }
        if (cookiesEnabled()) {
            document.getElementsById("msg").innerHTML = "Cookies are enabled";
        }
        else {
            document.getElementsById("msg").innerHTML = "Cookies are disabled";
        }
    </script>
</body>
</html>
