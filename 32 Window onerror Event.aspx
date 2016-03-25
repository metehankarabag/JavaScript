<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_32_WindowOnerrorEvent.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /* 32 window onerror event
        Try Catch içinde yazılmamış kod hata verdiğinde onerror Event'ı çalışır. windows'on error property'sine bir method vererek, hata gerçekleştiğinde, hatayı işlemek için bu method kullanılır. Erorr evvent method'a 3 parametre gönderebilir. message(hatayı verir), Url(hatanın gerçekleştiği dosya yolunu verir), line(satırı verir) bu değerleri methodda kullanmayı istiyorsak, method parametresine eklemeliyiz. Methodu Window nesnesinin Property'sine verdiğimiz script hataları için çalışıyor. Bir Html elementinin Property'sine verseydik. Sadece o element'de gerçekleşen hata için çalışırdır.
        */
        window.onerror = function (msg, url, line) {
            alert("Message : " + msg + "\nUrl" + url + "\nline:" + line);
            return true; // Internet Explorer gibi tarayıcıların hata mesajını bastırmak içini true dönüyoruz.
        }

        NonExsitingFunction();
        function imageErrorHandler() {
            alert("There is a problem loading the image");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <img src="NonExistingImage.jpeg" onerror="imageErrorHandler()" />
    </div>
    </form>
</body>
</html>
