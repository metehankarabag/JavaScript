<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_11_Substrings.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*11. Ders Substrings
        Bir string'in bir bölümünü almak için kullanabileceğimiz 3 method var. substring(), substr(), slice()
        substring() methodu 2 parametre bekliyor. 1. parametre (start) alma işleminin string'in neresinden başlayacağını 2. parametre (end)nerede biteceğini belirler ve 2. parametre optional'dır. 2 parametreyi kullanmassak, son karaktere kadar alınır ve son karakter alınacak string'e eklenmez.
            Not: End index Start index'den büyükse, yani 1. parametre olarak daha büyük bir değer girmişsek, otomatik olarak verdiğimiz değerlerin yeri değiştirilir.

        substr() methodu 2 parametre bekliyor. 1. parametre(start) başlangıç index'i 2. parametre(count) kaç karakter alınacağını belirler ve 2. parametre optional'dır. 2. parametreyi kullanmassak, son karaktere kadar alınır. 2. parametre 0 veya negatif ise Emtpy string alınır.
        Not: bu method IE8 ve öncesindeki tarayıcılarda çalışmıyor.
        slice() methodu 2 parametre bekliyor. 1. parametre(start) başlangıç index'ü için 2. parametre(end) alınacak son karakterin index'ini belirler ve son karakter alınacak string'e eklenmez.
        Not: 2. parametredeki değer birinci parametredekinden küçükse, parametre değerleri otomatik olarak yer değiştirmez.

        indexOf() method string içindeki bir karakterin Index değeri almak için kullanılır. Substring alırken çok kullanışlıdır.
        */
        var str = "JavaScript Tutorial"
        var result = str.sub(0, 10);
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
