<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_19_Arrays.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        /*Array oluşturmanın 2 yolu var. 
        1. Field'a [] içinde değerleri vermek. C#'da {}
        2. Array Class'ını kurucusunu kullanmak.
		
        push(): Array'ın sonuna bir üye ekler.
        pop(): Array'daki son üyeyi siler ve sildiği elementi döner.
        unshift(): Array'ın başına üye ekler.
        shift(): Array'daki ilk üyeyi siler ve sildiği elementi döner.
        */
        var emptyArray = [];
        var myArray = new Array(10);

        myArray = [10, 20, 30];
        document.write("First element = " + myArray[0] + "<br />");
        document.write("Last element = " + myArray[myArray.length - 1] + "<br />");
        document.write("<br/><br/><br/><br/>");
        var array = [];
        for (var i = 0; i <= 5; i++) {
            array.pop(i * 2);
        }
        for (var i = 0; i <= 5; i++) {
            document.write(array[i] + "<br/>");
        }
        alert(array.length);

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
