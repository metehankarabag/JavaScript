<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_53_JavaScriptAndObjectOrientedProgramming.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*53.Ders JavaScript And Object Oriented Programming
        JavaScript Oriented bir dildir. Object Orianted dillerin 4 pillar'ı vardır. -> Interitance, Encapsulation, Abstraction, Polymorphism.(Hepsini göreceğiz.)
        JavaScript'de 2 Object türüvar 1. Build-in 2 Custom. C#'da Custom Object oluşturmak için Class'ları kullanırız. Fakat JavaScript'de Class diye bişey olmadığı için Function'ları kullanacağız. JavaScript'de Custom Object oluşturmanın 2 yolu var.
        1. Constructor Function: normal Function
        2. Literal Notation
        farklar
        -> 1. 'de değer ataması = ile 2.'de : ile yapılıyor.
        -> 1.'de ; optional 2.'de , required
        -> 1.'de methodu her kullandığımızda farklı bir nesne oluşturacağımız için bir nesnenin tüm değerlerini kullanmayı istiyorsak, method sonucunu bir değişkene atmalıyız. Fakat 2.'de oluşturlmuş bir nesne her zaman olduğu için nesnenin direk değerlerini kullanabiliriz.
        */
        function Employee(firstName, lastName) {
            this.firstName = firstName;
            this.lastName = lastName;
            this.getFullName = function () {
                return this.firstName + " " + this.lastName;
            }
        }
        var employee = new Employee("Metehan", "Karabağ");
        
        var employeeObject =
        {
            firstName: "",
            lastName: "",
            getFullName: function () {
                return firstName + " " + lastName;
            }
        }

        document.write("First Name " + employee.firstName + "<br/>");
        document.write("Last Name " + employee.lastName + "<br/>");
        document.write("Full Name " + employee.getFullName() + "<br/>");

        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
</body>
</html>
