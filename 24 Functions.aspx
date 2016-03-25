<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_24_Functions.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*24. Ders Functions
        Yazdığımız işlemi bir den fazla kez çalıştırmayı istiyorsak, işlemi function içinde yazıp, function'ı istediğimiz kadar kullanabiliriz. Function'un beklediği parametre girilmesse, parametre undefined değeri alır. Beklenenden fazla değer girilirse, fazla değerler görmezden gelinir. Hiç bir şey dönmeyen methodun sonucuda undefined olur.
        */
        function addNumbers(firstNumber, secondNumber) {
            var sum = firstNumber + secondNumber();
        }
        var result = addNumbers(1, 2);
        document.write(result);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
</body>
</html>
