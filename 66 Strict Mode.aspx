<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_66_StrictMode.WebForm1" %>

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
        /*66.Ders Strict Mode
         "use strict"; yazdıktan sonra geçerli alan için hata oluşturulmadan kullanılan field'lar hata verir. Ayrıca JavaSricpt'de Read-only bir Property'e değer atamaya çalıştığımızda, uygulama akışı bozulmayacak şekilde bir hata verir. Bu durumda uygulamanın hata ile kesilmesini istiyorsak, "use strict" bu işi yapar.
         strict mode javaScript'in slient error'larını daha kolay bulmak için kullanılır. strict Mode ile yapabileceğimiz işlerin anlatıldığı bir msdn link'i var videoda 
        */
        myString = "This is a string <br/>";
        function myfunction() {
            "use strict";
            otherString = "This is another string";
            document.write(otherString);
        }
        myfunction();
    </script>
</body>
</html>
