<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_29_ArgumentsObject.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*29. Ders Arguments object
        Arguments Object tüm Function'ların Local Variable'ıdır ve Function'lara girilmiş tüm parametreleri içerir. Bu parametrelere kullamak için Arguments Object'e Index uygulayabiliriz. Arguments'in lenght property'si içinde kaç tane function parametresi barındırdığını belirler. Yani java'da methoda fazladan girilen parametrelere arguments object'inden ulaşabiliriz. Argumants object array türüde olmadığı Array'a ait sort) methodu gibi methodları kullanamayız. Fakat Array.prototype.slice.call() methoduna parametre olarak arguments nesnesini vererek nesneyi Array türüne çevirebiliriz. Array yerine [] işaretlerinide kullanabiliriz.
        */
        function printArguments() {
            document.write("Arguments Count =" + arguments.length + "<br/>");
            for (var i = 0; i < arguments.length; i++) {
                document.write("Argument " + i + " = " + arguments[i] + "<br/>");
            }
            document.write("<br/>");
        } 

        printArguments();
        printArguments("A", "B");
        printArguments(100, 200, 300);

        function printArguments() {
            document.write("Arguments Count =" + arguments.length + "<br/>");
            var sum = 0;
            for (var i = 0; i < arguments.length; i++) {
                sum = sum + arguments[i];
            }
            document.write("Sum of all numbers = " + sum);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
</body>
</html>
