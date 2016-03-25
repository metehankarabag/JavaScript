<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_22_ArrayFilterMethod.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*22. Ders Array Filter Method
        filter() methodu yeni bir array nesnesi döner. Bu array, method uygulandığı Array'ın method parametresindeki işlemden geçen üyeleri ile doldurulur. Method parametre olarak oluşturduğumuz methodun adını veriyoruz. Method boolen dönmeli. Sanırım parametreler Op3 parametre bekleyen bir method istiyorsanırım. 

        Array bir elemantan 2 tane içeriyorsa ve birini elemeyi istiyorsak, indexOf methodunu kullanırız. Bu method ilk eşleşmenin değerini döner. filter() methoduna parmaetre olarak verdiğimiz anonymous methodun index parametresi ise geçerli element'in index'ini döner. bu index değerleri farklı ise demekki bir elemetten 2 tane var.
        */
        var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

        //        function isEven(value, index, array) {
        //            return value % 2 == 0;
        //        }
        document.write(array.filter(function (value, index, array) {
            return value % 2 == 0;
        }));

        var fiterDuplicatedElmenets = ["Sam", "Mark", "Tim", "Sam"];
        var kimse = fiterDuplicatedElmenets.filter(function (value, index, array) {
            return array.indexOf(value) == index;
        });
        document.write(kimse);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
</body>
</html>
