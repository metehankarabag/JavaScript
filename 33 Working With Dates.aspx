<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_33_WorkingWithDates.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*33.Ders Working with dates
        JavaScript'de Date Field'ı oluşturmak için Date kurucusu kullanılır. Kurucunun 3 overload'ı var.
        1. Boş kurucu geçerli zamanı verir. 
        2. Tek parametreli String formatinda tarih ister. -> "January 13, 1980 11:20:00"
        3. Zamanın her parcasını int parametre olarak alır. Sanırım en fazla  7 parametreli oluyor. -> yıl, month, day, hours, minutes, seconds, miliseconds

        Date nesnesinin metodları 
        getFullYear(): yıl değerinin tamamını döner.
        getMonth(): 0'dan 11'e kadar bir değer döner.
        getDate(): 1'den 31'e kadar geçerli aydan bir değer döner.
        getDay() 0'den 6'a kadar geçerli haftanın değerini döner.
        getHours(): 0,23
        getMinutes():0,59
        getSeconds():0,59
        getMilliseconds(): 0,999

        Geçerli ayın adını istiyorsak, tüm ay isimlerini barındıran bir dizi oluşturup dize verdiğimiz index değeri ile geçerli ayın değerini alabiliriz. Çünkü ikiside 0 dan başlıyor.
        Yazdırılmasını istediğimiz Data Formatını değiştirmeyi istiyorsak, Date nesnesinin methodlarından aldığımı değerleri kullanarak görüntülenme şeklini değiştiren bir method oluşturmalıyız ve method yeni formatı string olarak dönmeli. 
        */
        var d = new Date();
        d = new Date("January 13, 1980 11:20:00");
        d = new Date(1980,0,13,11,20,0,0);
        document.write(d);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
