<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_54_ObjectLiteralvsObjectConstructor.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
    <script type="text/javascript">
        /*54 Object Literal vs Object Constructor
            Geçen derste yazım farklarını gördük. Bu derste kullanımdaki farklarını göreceğiz.

            Yani employee nesnesini newEmployee değişkenine attığımızda, newEmployee değişkeni üzerinde yaptığımız değişiklik employee nesnesini etkiliyor. Yani Object Literal employee nesnesi c#'da Referance Type gibi çalışıyor.(Sanırım javada tüm atamalar referans Type gibi çalışıyor) Yani Object Literal ile nesne oluşturduğumuzda her zaman tek bir nesne üzerinde çalışırız. 
            Object Constructor'da kullanılan her Constructor method yeni bir nesne oluşturur. ()
        */
        var employee =
        {
            name: "Metehan"
        }
        var newEmployee = employee;
        newEmployee.name = "wqeqweq";
        document.write(employee.name);

        var emp = function () {
            name = "Metehan";
        }
        var emp1 = new employee();
        var newemp1 = new employee();
        newemp1.name = "wqeqweq";
        document.write(emp1.name); 
    </script>
</body>
</html>
