<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_74_WindowLocation.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*74.Ders Window Location
        Window nesnesinin Location Property'sini geçerli sayfa hakkında bilgi almak için kullanabiliriz. Bu Property'i geçerli sayfayı başka bir sayfa yönlendirmek içinde kullanabiliriz.  Geçen derste javaScript'in açık olup olmadığını noscript elementi ile anlamıştık. Bu derstede Location Property'si ile yapacağız. Location Property'sine değer olarak yönlendirmeyi istediğimiz sayfanın relative bölümünü veriyoruz. JavaSrcipt açıksa, sayfa otomatik olarak gerçek sayfaya yönlendirilir. Değişde bu sayfada kalır ve bu sayfada uyarı mesajını gösterebiliriz.

        JavaScript kullanılmadan da işlevsellik istiyorsak, bir JavaScript gerektiren birden JavaScript gerektirmeyen sayfa oluşturup, Location property'sini bu sayfada kullanabiliriz.

        */
        document.write("window.location.href = " + window.location.href + " <br/>");
        document.write("window.location.hostname = " + window.location.hostname + " <br/>");
        document.write("window.location.pathname = " + window.location.pathname + " <br/>");
        document.write("window.location.protocol = " + window.location.protocol + " <br/>");

        //window.location = "/WebForm2.aspx"; 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>
            It seems that you have disabled JavaScript. Please enable JavaScript</h1>
    </div>
    </form>
</body>
</html>
