<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_21_ArrayMutators.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*21. Ders Array Mutators
        Uygulandığı arrayın yapısını değiştiren methodlara mutator method'lar denir. -> push, pop, shift, unshift, reserve, sort splice
        Array'ın yapısını değişirmeyen methodlara ise Non-mutator method'lar denir. -> contains, indexOf, vs...

        sort(): Array'daki element'leri varsayılan olarak string'e çevirip sıralar. Array içindeki elementler zaten string'se sorun olmaz. Fakat int ise düzgün sıralayamaz. Çünkü ilk önce birler basamağındaki değeri aynı değerler varsa diğerlerini kontrol eder. Sort() methodu function parametresi bekliyor ve bu parametre optional'dır. Parametreye verdiğimiz method da sıralama işleminin nasıl yapılacağını belirleyebiliriz. Function 2 parametreli olacak ve bu parametrenin değerleri array'dan alınacak. parametre değerlerini bir birinden çıkardığımızda sonuç pozitif'de ilk sayı 2. sayıdan büyük demektir. Yani üyeler çıkarma işleminin sonucuna değerin göre sıralanır. Ters sıralama yapmanın 2 yolu var. 1. sıralanmış nesneye reverse methodunu uygulamak 2. çıkarma işleminde ilk parametre ile 2. parametrenin yerini değiştirmek.
        Splice() method: Bir Array'a element ekler veya siler. 3 parametrelidir. 1. parametre index, 2. deleteCount, 3. item1,...,
        index parametre silinecek veya eklenecek index'i belirler. gereklidir.
        deleteCount: Silinecek element sayısı belirler. gereklidir.
        item1: eklenecek elemanlar. Optional'dır
        */
        var array = ["Sam", "Mark", "David", "Tom"];
        array.sort();
        document.write(array);

        array = [20, 2, 10, 1, 3];
        array.sort(function (a, b) { return a - b}).reverse();
        document.write(array);

        var splice = [1, 2, 5];
        splice.splice(2, 0, 3, 4);
        document.write(splice);
        splice.splice(2, 2);
        document.write(splice);

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
</body>
</html>
