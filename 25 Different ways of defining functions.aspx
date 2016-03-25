<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_25_DifferentWaysOfDefiningFunctions.Properties.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*25. Ders Different ways of defining functions
        Oluşturduğumuz function'ı kullanırken, script'in en altına da yazsak, en üstüne de yazsak, function'ı kullanırken hata almayız. Çünkü javascript çalışma zamanında function tanımlarını varsayılan olarak en üste alır. Buna Function Hoisting deniyormuş.
        Bir anonymous method tanımını bir değişkene atabiliriz, değişken methodu temsil eder. Method bir değişkende barındırıldığı için methodu ancak değişken tanımından sonra kullanabiliriz. Normal bir function tanımını da bir değişkene atabiliriz. Fakat methodu kendi adını ile kullanmayı istiyorsak, bunu sadece method tanımı içinde yapabiliriz. Recursive Function oluşturmak için kullanılır.

        */
        var add = function (firstNum, secondNum) {
            return firstNum + secondNum;
        }
        add(10, 20);

        var factorial = function computeFactorial(num) {
            if (num <= 1) {
                return 1;
            }
            return num * computeFactorial(num - 1);
        }
        factorial(5);

        var result = (function computeFactorial(num) { // heme çalıştırıp değerini değişkene atıyoruz.
            if (num <= 1) {
                return 1;
            }
            return num * computeFactorial(num - 1);
        } (5));

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
</body>
</html>
