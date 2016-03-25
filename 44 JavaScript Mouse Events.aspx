<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_44_JavaScriptMouseEvents.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="Button1" type="button" value="Single, Double or Right Click" onmousedown="logEvent(event)" onmouseup="logEvent(event)"
            ondblclick="logEvent(event)" onclick="logEvent(event)" onmouseover="logEvent(event)"
            onmouseout="logEvent(event)" oncontextmenu="logEvent(event)" />
        <input id="Button2" type="button" value="Clear" onclick="clearText()" />
        <br />
        <textarea id="TxtArea" cols="20" rows="10"></textarea>
    </div>
    </form>
    <script type="text/javascript">
        /*44.Ders JavaScript Mouse Events
        Mouse Events
        ->MouseOver: Mouse bir Tag'ın üstüne geldiğinde -> Mouseout: Mouse Element üzerinden gittiğinde
        ->MouseUp: Mouse geçerli elementi serbest bıraktığında
        ->MouseDown: Mouse ile geçerli elemente basıldığında
        ->MouseClick: MouseDown ve Up Event'leri gerçekleştikten sonra
        ->ContextManu: Sağ tıklandığında tetiklenir.
        */
        function logEvent(event) {
            event = event || window.event;
            document.getElementById("TxtArea").value += event.type + "\r\n";

        }
        function clearText() {
            document.getElementById("TxtArea").value = "";
        }
    </script>
</body>
</html>
