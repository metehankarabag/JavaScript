<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_65_ObjectReflection.WebForm1" %>

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
        /*65.Ders Object Reflection
        Nesnelerin Meta Data'sına(yapısına) ulaşmak için kullanılır. 
        */
        var Employee = function (firstName, lastName, gender, email) {
            this.firstName = firstName;
            this.lastName = lastName;
            this.gender = gender;
            this.email = email;

            Employee.prototype.getFullName = function () {
                return this.firstName;
            }
            Employee.prototype.getEmail = function () {
                return this.email;
            }
            Employee.prototype.getGender = function () {
                return this.gender;
            }

            var employee = new Employee("Metehan", "Karabağ", "Erkek", "metehankarabag1992@gmail.com");

            for (var property in employee) {
                if (typeof employee[property] == "function") { //Function'ları istiyorsak, bunu kullanabiliriz.
                    document.write(property + " : " + employee[property] + "<br/>");
                }
            }

            var PermanentEmployee = function (annualSalary) {  //Üstteki kodu türeyen object'e uyguladığımızda base object'inde üyelerine ulaşabiliriz.
                this.annualSalary = annualSalary;
            }
            PermanentEmployee.prototype = new Employee("Metehan", "Karabağ", "Erkek", "metehankarabag1992@gmail.com");

            var pe = new PermanentEmployee(50000);

            for (var property in pe) {
                //if (pe.hasOwnProperty(property)) Sadece türeyen type'a ait üyeleri alamayı istiyorsak, kullanabiliriz. Üye Object'e aitse true değilse False döner.
                document.write(property + " : " + pe[property] + "<br/>");

            }

        }
    </script>
</body>
</html>
