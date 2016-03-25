<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_27_Closures.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*27. Ders Closures
        Closure' bir function içinde tanımlanmış Function'a denir.(Nesned Function). Dış Function'daki Variable'lara ve global Variable'lara erişebilir. Closure dış function'ın parametrelerinide kullanabilir. Dış Function'ın iç function sonucunu dönmesini istiyorsak, yapamız gereken şey dış function'ın return anahtarında Closure'ı çalışırmak. Methodu çalıştırmak yerine return'e methodun adını değişken adı gibi girersek, sonuç olarak methodun tanımını alırız. Yani dış function'ı çalıştırdığımızda sonuc olarak method alırız. bu methodu attığımız değişken method olarak kullanılabilir. Method içindeki methodu döndüğü için iç methodun sonucunu direk almayı istiyorsak methodu methoAdi(parametreler)(içMethodParametreleri) şeklinde kullanabiliriz.
        */
        function addNumber(firstNumber, secondNumber) {
            var returnValue = "Return is";
            function Add() {
                return returnValue + (firstNumber + secondNumber);
            }
            return add();
        }
        var Result = addNumber(10, 20);
        document.write(Result);
    </script>
    <script type="text/javascript">
        /*28. Ders Closure example
        Click Count uygulaması yapacağız.
        Global bir değişken oluşturup butonun onClik event'inde kullandığımız alert() methoduna değişkeni parametre olarak verip her tıklamada değeri arttırabiliriz. Fakat Global Variable'ları sayfadaki tüm script'ler ve methodlar kullanabileceği için yanlışlıkla değer başka bir yerde değiştirilebilir. Bu yüzden değişken bir method içinde tanımladık. Fakat bunu yaptığımızda değer sürekli 1 görünüyor. Çünkü method her çalıştırıldığınde değişken 0 değerini alıyor. Bu işi Closure kullanarak çözeceğiz. Closure ve dış function Named Function'da olabilir Anonymous Function'da olabilir.2 function'ıda Anonymous Function olarak oluşuturup, dış Function'ı Self Invoking Function yaptık. Bu method Inner Function Expression(tanımını) dönüyor.Yani method çalıştığında iç Function'ı bir methoda alabiliriz ve dış method bir kez çalışıp değişkeni otomatik olarak doldurur. Artık yapmamız gereken tek şey değişkene attığımız iç methodu alert() methodunda çalıştırmak.
        */
        (function () {

            var clickCount = 0;

            return function () {
                ++clickCount;
            }
        })();
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="Button1" type="button" value="Click Me" onclick="alert(++clickCount);" />
    </div>
    </form>
</body>
</html>
