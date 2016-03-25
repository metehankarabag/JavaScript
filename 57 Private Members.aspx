<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_57_PrivateMembers.WebForm1" %>

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
        /*57.Ders Private Members
        Nesne programlayabileceğimiz dillerin hepsinde class'ların private ve public üyeleri olabilir. JavaScript'de nesne programlayabileceğimiz bir dil olduğu için JavaScript'de de var. JavaScript'de object oluşturmak için Function kullanıyoruz. 
        Public Field oluşturmak için this anahtarını, private field Field oluşturmak için var anahatarını kullanırız.(anahtar kullanmadan da oluyor)
        Public Function oluşturmak için ise Nesnenin prototype Property'sini kullanıyoruz. Private function oluşturmak için var anahatarını kullanabilir veya direk function'ı yazabiliriz.

        Privileged Function oluşturmak için This anahtarını kullanıyoruz. Privileged Function oluşturma nedenimiz Public Function'ın Private Function'ı direk çalıştıramamasıdır. Privileged Function Private değişken ve methodlara erişebilir. Public Function'larda Privileged Function'lara erişebilir. Ayrıca Privileged Function'lara da Constructor Function dışından erişebiliriz.

        */
        function Employee(firstName, lastName) {
            this.firstName = firstName; //Public
            this.lastName = lastName; //Public

            var privateFullName; //Private

            //function getFullName() { //Private }
            var GetFullName = function () { //Private
                privateFullName = firstName + " " + lastName;
                return privateFullName;
            }
            this.privilegedGetFullName = function () {
                return GetFullName();
            }
            Employee.prototype.PublicGetFullName = function () {
                return this.privilegedGetFullName();

            }

            var employee = new Employee("Metehan", "Karabağ");
            document.writeln(employee.PublicGetFullName());
            document.writeln(employee.privilegedGetFullName());
            //document.writeln(employee.GetFullName());

        }
    </script>
</body>
</html>
