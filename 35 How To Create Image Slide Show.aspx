<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_35_HowToCreateImageSlideshow.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <img id="img1" height="400px" width="400px" src="Images/1.jpg"/>
    <br />
    <input type="button" value="Start" onclick="startSlide()" />
    <input type="button" value="Stop" onclick="stopSlide()"/>
    </div>
    </form>
    <script type="text/javascript">
        function startSlide() {
            intervalID = setInterval(changeImage,1000);
        }
        function stopSlide() {
            clearInterval(intervalID);
        }
        function changeImage() {
            var imageSource = document.getElementById("img1").getAttribute("src");
            var currentImageNumber = imageSource.substring(imageSource.lastIndexOf("/") + 1, imageSource.lastIndexOf("/") + 2);
            if (currentImageNumber == 4) {
                currentImageNumber = 0;
            }
            currentImageNumber = Number(currentImageNumber) + 1;
            document.getElementById("img1").setAttribute("src", "Images/" + currentImageNumber + ".jpg");    
        }
    </script>
</body>
</html>
