<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_60_Prototype.WebForm1" %>

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
        /*60.Ders Prototype
        javaScript'de nesne oluşturmak için Function kullanıyoruz. Nesneye Instance Function eklemek için de Function oluşturuyoruz. Fakat bu durumda nesnenin her örneği için iç Function kopyalanır. Tek bir Function örneğinin tüm nesne örneklerinde kullanılamasını istiyorsak, nesne prototype'ını kullanabiliriz.
        Prototype property'sinin 2 avantajı var. Biri daha az hafıza kullanması diğeri geçerli methoda gerektiğinde override yapabilmemiz.
        */
        function Employee(name) {
            this.name = name;
            this.getName = function () {
                return this.name;
            }
        }

        Employee.prototype.getName = function () {
            return this.name;
        }

        var e1 = new Employee("Metehan");
        //e1.getName = function () { -> Nesne örneğine ekledik Function'ı this anahtarı ile methoda eklediğimiz Function bu anlama gelir. Yani her örnek için bir Function oluşturulur.
        //  return this.name;
        //} 
        var e2 = new Employee("Mehmet");

        document.writeln("e1.name = " + e1.getName());
        document.writeln("e2 .name = " + e2.getName());
    </script>
</body>
</html>
