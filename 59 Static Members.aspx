<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_59_StaticMembers.WebForm1" %>

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
        /*59 Static Members
        Nesne programlayabileceğimiz dillerde nesnelerin Static üyeleri olur. JavaScript'de de var. Static üyeleri, tüm nesne örneklerinde aynı olması gereken durumları belirlemek için ve bir nesne örneğinye yapılan işin diğeri üzerinde etki etmesi için kullanabiliriz. Yani object oluştururken hak, hukuk gibi değerleri taşıyan Field'lar static tanımlamalıyız. Değer değiştikten sonra tüm nesne örnekleri bundan etkilenir.
        JavaScript'de this anahtarı nesnenin Public Instance üyesini oluşturmak için kullanılır. This yerine Object adını kullanırsak, Object'e Public Static üye eklemiş oluruz.
        
        */
        function Circle(radius) {
            Circle.pI = 3.141;
            this.radius = radius;
            this.CalculateArea = function myfunction() {
                return Circle.pI * this.radius * this.radius;
            }
        }
        var circle = new Circle(5);
        document.write("Area = " + circle.CalculateArea());

        function Shape(shapeName) 
        {
            this.ShapeName = shapeName;
            Shape.Count = ++Shape.Count || 1;

            Shape.ShowCount = function () {
                return Shape.Count;
            }
        }
        var shape1 = new Shape("Circle");
        var shape2 = new Shape("Rectangle");
        var shape3 = new Shape("Triangle");
        document.write("Shape Count " + Shape.ShowCount());
    </script>
</body>
</html>
