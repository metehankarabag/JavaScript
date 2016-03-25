<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_10_Strings.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*
         JavaScript'de string yazmak için tek veya çift tırnak kullanabiliriz. 2 farklı string'i birleştirmek için ise  + veya concat() methodunu kullanabiliriz. Concat() methodu parametre olarak birden fazla string alabilir ve uygulandığı string ile parametre olarak aldığı string'leri birleştirir. Çift tırnak kullanarak oluşturduğumuz string içindeki bir kelimenin tek tıknak içinde görünmesini istiyorsak ' işaretini sorunsuz kullanabiliriz. Fakat tek tırnak içinde belirlediğimiz string'deki bir kelimeyi tek tırnak içinde göstermeyi istiyorsak tırnaklardan önce \ kullanmamız gerekir. içerideki bir kelimeyi çift tırnak içinde göstermeyi istiyorsak aynı mantık geçerlidir.
         toUpperCase() ve toLowerCase() methodları uygulandığı string'in karakterlerini büyütür ve küçültür.
         lenght Property'ini kullanarak string'deki karakter sayısını alabiliriz.
         trim() methodu uygulandığı string'in başındaki ve sonundaki boşlukları siler.
         replace() 2 parametre alır. 1. parametre uygulandığı strin içide değiştirilecek bölümü belirlerken, 2. parametre o bölüme yazılacak yazıyı belirler. Method değişkendeki değeri etkilemez. Bu yüzden yeni durumu bir değişkene atmalıyız. Birinci parametreyi çift tırnak yerine / içinde yazabiliriz. Bunun anlamı methodun uygulandığı string içinde eşleşmenin sağlantığı tüm yerleri 2. parametredeki string ile değiştirdir. /yazı/ sondaki / dan sonra g yazarsak, işlem büyük küçük harf duyarlılığı kazanır, gi yazarsak, duyarlılık olmaz. g eklemessek sadece ilk eşleşme için uygulanıyor.  
        */
        var string1 = "Hello"
        var string2 = "JavaScript"
        var result = string1.concat(" ", string2, " Hello ", "World");
        alert(string2.replace(/a/g,"|"));
        alert(string1.replace("o","o World"));
        alert("There are " + "sadasdas".length + " characters in the string");
        alert("There are " + string2.length + " characters in the string");
        alert(string1.toUpperCase());
        alert(result);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
