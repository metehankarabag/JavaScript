<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_39_EventObject.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div">
        <input id="btn" type="button" value="button" />
    </div>
    </form>
    <script type="text/javascript">
        /*39.Ders Event Object
         Bir Event gerçekleştiğinde, Event ile ilgili Data Event object'e aktarılır. Örneğin Event gerçekleştiğinde, mouse'un koordinatlarını alabiliriz. Event'i gerçekleştiren Html'e hangi mouse butonu ile tıklandığına ulaşabiliriz.
         Not: target Property'si i.e8 ve öncesinde çalışmıyor. Bunun yerine srcElement Property'si var. Property'i event nesnesinde anlınamıyorsa, undefined dönüyor. Bunu if'de kullanmış.
        */
        btn.addEventListener("click", getEventDetails);

        
        function getEventDetails(event) {
            var sourceElement;
            if (event.srcElement) {
                sourceElement = event.srcElement;
            }
            else {
                sourceElement = event.target;
            }
            document.getElementById("div").innerHTML = "Event = " + event.type + "<br/> X = " + event.clientX + "<br/> Y = " + event.clientY + "<br/> Target Type  = " + sourceElement.type + "<br/>Tag Name = " + sourceElement.tagName;
        }
    </script>
</body>
</html>
