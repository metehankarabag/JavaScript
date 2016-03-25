<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_42_JavaScriptEventCapturing.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .divStyle
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
        <div id="DIV1" class="divStyle"> DIV1
            <div id="DIV2" class="divStyle"> DIV2
                <div id="DIV3" class="divStyle">DIV3
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        /*42. Ders JavaScript Event Capturing
        addEventListener() methodunun 3. parametresini görmemiştik. Bu parametre Event Bubbling'i Event Capturing'e çevrimek için kullanılır. Event Capturing, Event Bubbling'in tersidir. Yani birden fazla Tag üzerinde tetiklenecek Event ilk önce en dış Tag için işlenir. addEventListener() methodu i.e 8 ve öncesinde kullanılamadığı için Event Capturing bu tarayıcılarda olmaz.
        Event Bubbling'i durdurmak için kullandığımız Event nesnesinin stopPropagation ve cancelBubbling Property'lerini kullanabiliriz. EventCapturing'i durdumak için ise sadece StopPropagation property'sini kullanabiliriz.
        Bir nesned Tag'lara hem Capturing hemde Bubbling uygulamayı istiyorsak, geçerli Event için ilk önce Event Capturing çalışır sonra Event Bubbling çalışır.
        Not: Neredeyse kullanılmaz.
        */
        var divs = document.getElementsByTagName("div");
        for (var i = 0; i < divs.length; i++) {
            divs[i].addEventListener("click", clickHandler, false);
            divs[i].addEventListener("click", clickHandler, true); //True Capturing kullandığımız anlamına geliyor.
        }
        function clickHandler() {
            alert(this.getAttribute("id") + " click event handled");
        }
    </script>
</body>
</html>
