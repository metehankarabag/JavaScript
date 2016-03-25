<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_38_AddEventListenerAndRemoveEventListener.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="btn" type="button" value="button" />
        <input type="button" value="Remove Event Handler" onclick="removeHandlers" />
    </div>
    </form>
    <script type="text/javascript">
        /*38.Ders AddEventListener And RemoveEventListener
        Geçen derslerde bir Tag'a Event Handler eklemek için Html Attribute'unu ve Dom Property'lerini kullanmıştık. Bu derste addEventListener() ve removeEventListener() methodlarını kullanacağız. Methodlar Event'in ekleneceği Tag'a uygulanır ve 3 parametre bekler. 1. parametre Tag'ın Event'ını, 2. parametre hangi Function'ın çalıştırılacağını, 3. sonra görecez(Optional).
        Not:Explorer'da aşağıdaki gibi direk Tag adını kullandığımızda undefined hatası alırıyoruz.
        Not: AddEventListener() methodunu birden fazla kez kullanarak, bir Event Attribute'una birden fazla function verebiliriz. (Sanırım methodların çalıştırılma sırasını belirleyemiyoruz.). Dom Property'leri ile bu olmuyordu. 

        attactEvent() ve detachEvent() methodları event eklemek için kullanabileceğim methodlardır ve sadece Explorer 8 ve öncesinde çalışır. 2 parametreli aşağıdaki gibi. Tek fark addEventListener'da sadece Event adı yeterlidir(click), fakat bu methodlarda ise Event adı önüne on eklememiz gerekir.
        */
        btn.addEventListener("mouseover", onMouseOver);
        btn.addEventListener("mouseout", onMouseOut);

        function onMouseOver() {
            this.style.background = "red";
            this.style.color = "yellow";
        };
        function onMouseOut() {
            this.style.background = "Black";
            this.style.color = "White";
        };
        function removeHandlers() {

            btn.removeEventListener("mouseover", onMouseOver);
            btn.removeEventListener("mouseout", onMouseOut);
        }

    </script>
</body>
</html>
