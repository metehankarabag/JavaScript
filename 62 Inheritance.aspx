<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_62_Inheritance.WebForm1" %>

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
        /*62.Ders Inheritance
        JavaScript'de Class'lar yok. Nesne oluşturmak için Function'ları kullanıyoruz ve nesneler bir birlerinde türüyor. JavaScript'de bu türeme işini yapabilmemiz için Prototype Property'sini kullanıyoruz. Property'e base Type olmasının istediğimiz object'i veren Constructor methodu vermemiz yeter. Artık Prototype'ın uygulandığı nesne örneğinden Prototype'a verdiğimiz nesneye ait üyelere direk ulaşabiliriz. 
        */
        function Employee(name) {
            this.name = name;
        }
        Employee.prototype.getName = function () { //Base Type'ın Function'ı
            return this.name;
        }

        function PermanentEmployee(annualSalary) {
            this.annualSalary = annualSalary;
        }


        PermanentEmployee.prototype = new Employee("Metehan"); 
        var pe = new PermanentEmployee(50000);

        document.write(pe.getName()); //Base Type'ın Function'ını Derived Type'da kullandık.
    </script>
</body>
</html>
