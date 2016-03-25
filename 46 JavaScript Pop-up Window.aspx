<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_46_JavaScriptPopupWindow.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="Button1" type="button" value="Open popup" onclick="openPopup()"/>
        <input id="Button2" type="button" value="Close popup" onclick="closePopup()"/>
    </div>
    </form>
    <script type="text/javascript">
        /*46.Ders JavaScript Pop-up Window
        Pop-up penceresi için window.open() methodunu kullanabiliriz. Method 4 optional parametrelidir. 
        1. parametre Url
        2. parametre Name: Pencerenin nasıl açılacağını belirlemek için kullanılır. -> _blank, _parent, _self, _top, Name
        3. parmetre Features: Sayfanın özelliğini belirlemek için kullanabileceğimiz bir sürü seçenek var. Birden fazla özellik kullanacaksak, virgülle ayırmamız gerekiyor.
        4. parametre Replace: Tarayıcı geçmişine yeni bir girdiğinin eklenmesini yada geçerli sayfa girdisinin değiştirmesini sağlar. (true(değiştirir), false(yenisini oluştrur)) Pop up sadece geçerli sayfa üzerinde açılmışsa, çalışır. 
        Not: 3. parametrede kullanabileceğimiz özelliklerden scrollbars, resizable Chrome'da çalışmıyor.
        */
        var myWindow;
        function openPopup() {
            myWindow = window.open('http://google.com', 'My Window', 'height=300,width=300,top=100, left=100,scrollbars=no,resizable=no');
        }
        function closePopup() {
            myWindow.close();
        }
    </script>
</body>
</html>
