<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_8_JavaScriptBasics.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*8. Ders JavaScript Basics
        1. JavaScript'ün büyük küçük harf duyarlılığı vardır. Yani method, property even handler, variable name kullanırken dikkat etmeliyiz.
        2. JavaScript'de 3 farklı veri türü var. Number(int, float, vs..), string("sdasd", 'sdasd'), boolen
           C#'da her tür farklı bir anahtarla temsil edilir. JavaScript'de ise her zaman var anahtarı kullanılır. Değişkene verilen değer göre, değişkenin türü otomatik olarak belirlenir. C#'da bir tür değişkene başka bir türde veri atayamayız. Fakat JavaScript'de atabiliriz. Çünkü JavaScript Dynamically Typed language'dir. Yani değişkenin veri türü, script'in çalışma anında otomatik olarak belirlenir. Yani değişkene o an int değer verilmişse, değişken int türünü alır başka bir an string değer verilmişse string türünü alır.
          C#'daki gibi bir string ile int'i birleştirebiliriz. Aynı zamanda string int değere çevirilebiliyorsa, - * / işlemlerinide yapabiliriz.
        */
        var a = 10;
        alert(a);
        a = "Alert";
        alert(a);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            
    </div>
    </form>
</body>
</html>
