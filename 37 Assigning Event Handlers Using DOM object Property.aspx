<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_37_AssigningEventHandlersUsingDOMobjectProperty.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="Button1" type="button" value="button" />
    </div>
    </form>
    <script type="text/javascript">
        /*37. Ders Assigning Event Handlers Using DOM(Document Object Model) object Property
        Hieraşideki yeri -> Window -> Document -> Html. Tarayıcı bir sayfa yüklediğinde, sayfanın Document Object Model'i oluşturur. JavaScript kullanarak DOM nesnelerine ve property'lerine erişebilir ve düzenleyebiliriz. Yani html içindeki tag'ları veya tag property'lerini silebiliriz, ekleyebiliriiz, vs..

        Not: Bir Tag'ın bir Event Attribute'una hem Dom object hemde HTML'de method verirsek, Dom object'de belirlenen method geçerlidir. Yani üzerine yazılır.
        Not: HTml'de bir tag'ın Event Attribute'unu birden fazla Function ile ilişkilendirebiliriz. Fakat Dom Object'de son ilişkilendirdiğimiz method geçerlidir.

        */
        document.getElementById("Button1").onmouseover = onMouseOver;
        function onMouseOver() {
            this.style.background = "red";
            this.style.color = "yellow";
        };
        document.getElementById("Button1").onmouseout = function () {
            this.style.background = "Black";
            this.style.color = "White";
        };

        document.getElementById("Button1").onclick = onClick1
        document.getElementById("Button1").onclick = onClick2;
        function onClick1() {
            alert("onClick1");
        }
        function onClick2() {
            alert("onClick2");
        }
    </script>
</body>
</html>
