<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_43_PreventingBrowserDefaultAction.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div style=" width:300px; height:100px; border: 3px solid black" <%--oncontextmenu="return false"--%>>
    On this div right click is disable
    </div>
    <a href="http://www.pragimtech.com" onclick="preventDefaultAction(event)">Go to PragimTech</a>
    </form>
    <script type="text/javascript">
        /*43 Preventing Browser Default Action
          iki örnek -> 1. Bir link'e tıkladığımızda belirlenen sayfaya gideriz. 2. sağ tıkladığımızda Context Menü açılır. Bunun bir etkisi yok. 
          
          Kullancı JavaScript'i kapattığına sağ tıkla sayfa Context'ini görebiliriz ve kodları kopyalayabilir. Bunu yaparsak sadece göremesini istemediğimizi belirmiş oluyoruz.  oncontextmenu Attribute'una sat tık işlemi için kullanacağımız Event Property'sidir. Sağ tıklama işleminin geçersiz olmasını istiyorsak event Property'sine return false verebiliriz. Event'ı uyguladığımız alanda sağtıklama ile hiç bir şey olmaz. Return False yerine yazdığımız JavaScript kodunuda verebiliriz. Bu durum tüm Event'lar için geçerlidir. Yani özel bişey yok.
        */
        document.oncontextmenu = preventDefaultAction;
        function preventDefaultAction(event) { 
            event = event || window.event;
            if (event.preventDefault) {
                event.preventDefault();
            }
            else {
                event.returnValue = false;//i.e 8 ve öncesi için
            }

        }
    </script>
</body>
</html>
