<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_26_LocalAndGlobalVariables.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*26. Ders Local And Global Variables
          Bir değişken function içinde tanımlanmışsa, sadece function içinde kullanılabilir. Bu değişkenlere Local variable'denir ve sade Local Scope'da kullanılabilir.
          Global değişkenler ise script'e ait değişkenlerdir. Yani bir function içinde olmayan değişkenlerdir. Bu değişkenleri tüm Script'lerde ve function'larda kullanabiliriz. Çalışmaya tanımlandığı yerde başlar ve sayfa kapandığında silinir. Ayrıca bir function içinde tanımlanmamış bir değişken kullanırsak otomatik olarak Global Variable olur. Aynı ismi aynı olan bir Global ve Local değişken tanımlanmışsa, birinde yapılan değişiklik diğerini etkilemez. Yani değer hangi Scope'da yapılırsa, sadece o scope'un değişkeni etkilenir.

          Function Hoisting'i function'lar tanımlarının çalışma zamanında script'in en üstüne taşınmasıdır. Aynı mantıkla Variable Hoisting'de var. Bu da sadece variable'ın tanımının veriable'ın geçerli olduğu Scope'un en üstine alınmadır. Bu durum da Global variable'ı bir Function içinde kullanırsak ve kullandıktan sonra aynı isimle Local Variable oluşturursak Local Variable'ın sadece tanımı methodun en üstüne alınacağı için undefined hatası alırız. Çünkü Local variable kullanılacak ve değeri henüz atanmamış olacak.

          Not: JavaScript'de C# ve java'da olduğu gibi "{}" işaretleri Scope oluşturmaz.
        */
        var greeting = "Hello from Global Variable";
        
        function helloWorld() {
            var greeting = "Hello from Global Variable";
            greeting += "???";

            UndefinedVariable = "Hello metehan"
            document(greeting);
        }
        greeting += "!!!";
        helloWorld();
        document.write(greeting + "<br/>");
        document.write(UndefinedVariable);

        var ErrorVariable = "This is Global Error Variable"
        function ErrorFunction() {
            document.write(ErrorVariable);
            var ErrorVariable = "This is Local Error Variable"; //tanım function'ın üstüne gelir ve write methodu bu değişkeni kullanır fakat değer henüz değişkene atamadığı için hata alırız.
        }

        var num = 100;
        if (num > 10) {
            var otherNum = num;
        }
        document.write(otherNum);

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
