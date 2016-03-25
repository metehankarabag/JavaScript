<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_40_EventBubbling.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .styleClass
        {
            display: table-cell;
            border: 5px solid black;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <%--<div class="styleClass" onclick="alert('DIV Clicked')"> Div Element
    <span class="styleClass" onclick="alert('SPAN Clicked')">Span Element
    <input type="button" value="Click me" onclick="alert('Button Clicked')" />
    </span> 
    </div>--%>
    <div id="DIV1" class="styleClass">
        <div id="DIV2" class="styleClass">
            <div id="DIV3" class="styleClass">
            </div>
        </div>
    </div>
    </form>
    <script type="text/javascript">
        /*40.Ders Event Bubbling
        Event Bubling tarayıcıda bir olayın birden fazla Tag Event'ını tetiklemesidir. Bu durumun sağlanabilmesi için tarayıcıdaki olay, iç Tag'a uygulanmalıdır. Bu olay iç Tag tarafından işlendikten sonra Dış Tag kontrol edilir, dış Tag'da da varsa aynı olay bu tag içinde işlenir. Tarayıcıda olayın gerçekleştiği Tag'da gerekli Event kullanılmasa bile dış Tag'da olayı işleyebiliriyorsa, iç Tag'a tıkladığımızda olayı işlmek için dış Tag'ın Event'ı kullanılır.
        Not: Aşağıdaki Script'de tüm Div element'lerine Click Event'i verdik. İç div'lerdeki gerçekleşen olay Event Bubbling'i sağlıyor. Fakat Event Bubbling'i istemiyorsak, durabiliriz. Bunu sağlamak için Event'in Event nesnesine ait olan cancelBubble Property'sini kullanmalıyız. i.e 9 ve öncesi için stopPropagation() method'unu kullanabiliriz.
        */
        var divElements = document.getElementsByTagName("div");

        for (var i = 0; i < divElements.length; i++) {

            divElements[i].onclick = function (event) {
//              event = event || window.event; //window.event i.e için fakat bunu neden yaptığımızı anlamadım. Sonuç'da Event parametresi doldurulurken belirlenir.
                if (event.stopPropagation) {
                    event.stopPropagation();
                }
                else {
                    event.cancalBubble = true;
                }
                this.style.borderColor = "red";

                alert(this.getAttribute("id") + " border color changed");
            }
        }
    </script>
</body>
</html>