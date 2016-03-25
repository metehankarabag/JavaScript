<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_64_Polymorphism.WebForm1" %>

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
        /*64.Ders Polymorphism
        Polymorphism'imi bir nesnenin birden çok şekilde davranmasını istiyorsak kullanabiliriz. Aşağıda türeyen Class'ın hepsi aynı zamanda base Class türünde yani base'den  baktığımızda base'in bir methodu farklı farklı işler yapıyor.
        */
        var Shape = function () { }
        Shape.prototype.draw = function () {
            return "I am a generic shape ";
        }
        var Circle = function () { }
        Circle.prototype = Object.crete(Shape.prototype); //Shape'i base object olarak ayarladık.
        Circle.prototype.draw = function () {
            return "I am a circle";
        }

        var Square = function () { }
        Square.prototype = Object.crete(Shape.prototype);
        Square.prototype.draw = function () {
            return "I am a square";
        }

        var Traingle = function () { }
        Traingle.prototype = Object.crete(Shape.prototype);

        var shapes = [new Shape(), new Square(), new Circle(), new Traingle()]; // Traingle base nesnenin methoduna override uygulamadı ama Triangle aynı zamanda base türünde olduğu için methodu kullanabildi.
        shapes.forEach(function (shape) {
            document.write(shape.draw() + "<br/>");
        });

    </script>
</body>
</html>
