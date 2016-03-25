<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_41_ImageGalleryWithThumbnails.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .myClass
        {
            width: 100px;
            height: 100px;
            border: 3px solid grey;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <img src="Images/Chrysanthemum.jpg" width="540px" height="540px" style="border: 3px solid grey" id="mainImage" />
    <br />
    <div id="myDiv" onclick="changeImage(event)">
        <img class="myClass" src="Images/Chrysanthemum.jpg" />
        <img class="myClass" src="Images/Desert.jpg" />
        <img class="myClass" src="Images/Hydrangeas.jpg" />
        <img class="myClass" src="Images/Lighthouse.jpg" />
        <img class="myClass" src="Images/Penguins.jpg" />
    </div>
    <script type="text/javascript">
        /*41 Image Gallery With Thumbnails
        küçük resimlere tıklayarak büyük halini göstermeyi istiyoruz. Bu işi yapabilmemiz için bir function oluşturup, function'ı tüm küçük resimleri gösteren img Tag'ların onclick Event'ına vermeliyiz. Fakat Event Bubbling'den yaralanarak daha kolay yapabiliriz. Tüm img Tag'larını bir Tag altında toplayıp, sadece bu Tag'ı onclick Event'ını kullanabilriz. Event'ın event object nesnesinin target Property'sini kullanarak tıklama işleminin tetiklendiği Tag'a ulaşabiliriz.
        */
        var images = document.getElementById("myDiv").getElementsByTagName("img");

        for (var i = 0; i < images.length; i++) {
            images[i].onmouseover = function () {
                this.style.cursor = "crosshair"; //Neden de Hand Chrome'da ve Firefox'da ilk seferde çalışmıyor ama Explorer'da çalışıyor.
                this.style.borderColor = "red";
            }

            images[i].onmouseout = function () {
                this.style.cursor = "pointer";
                this.style.borderColor = "grey";
            }
        }

        function changeImage(event) {
            event = event || window.event;
            var targetElement = event.target || event.srcElement;
            if (targetElement.tagName == "IMG") {
                document.getElementById("mainImage").src = targetElement.getAttribute("src");
            }
        }
    </script>
    </form>
    
</body>
</html>
