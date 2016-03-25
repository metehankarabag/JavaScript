<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_61_OverridingJavaScriptFunctions.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="EmployeeScript.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <script type="text/javascript">
        /*61.Ders Overriding JavaScript Functions
        Prototype'in bir özelliğinin method Override'a izin vermesi olduğunu söyledi ama bence o kadar önemli değil. Nesneye This anahtarı ile eklediğimiz Function'a da nesne örneği düzeyinde override yapabiliriz. Nesneye eklediğimiz method'a da aynı işi yapabiliriz. Önemli olan bir nokta ise tüm bu işlemleri Built-in Function'lara da uygulayabiliriz.JavaScript ilginç bir esnekliğe sahip.
        */
        getEmployeeFullDetails();
        function getEmployeeFullDetails() { //Client methodu

            Employee.prototype.getName = function () { // nesne Function'ını kullanmadan önce yeni bir Function veriyoruz ve uygulamasını yazıyoruz.
                return this.name.toUpperCase();
            }
            var e1 = new Employee("Metehan");
            //e1.getName = function () {
            //    return "sadasdasda";
            //}
            var e2 = new Employee("Mehmet");

            document.write("e1.name = " + e1.getName() + "<br/>");
            document.write("e2 .name = " + e2.getName() + "<br/>");

        }
        var alert = function (msg) {
            document.write(msg);
        }

        alert("Metehan");
        window.alert(" Karabağ");

    </script>
    </form>
</body>
</html>
