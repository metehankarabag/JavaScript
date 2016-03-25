<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_23_CreatingTwoDimensionalArray.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*23. Ders Creating Two Dimensional Array
        Multi Dimensional Array == Array of Array
        */
        var array1 = new Array(3); // size'ı 3 olan array'ı oluşturduk.
        for (var i = 0; i < 3; i++) {
            array1[i] = new Array(3); // her birine size'ı 3 olan array attık.
        }
        var start = 1;
        for (var i = 0; i < 3; i++) {
            for (var j = 0; j < 3; j++) {
                array1[i][j] = start;
                start = start + 1;
            }
        }
        for (var i = 0; i < 3; i++) {
            for (var j = 0; j < 3; j++) {
                document.write(array1[i][j] + "&emsp;");
            }
            document.write("<br/>");
        }
        document.write("<br/>");
        document.write("&emsp;+");
        document.write("<br/>");
        document.write("<br/>");
        var array2 = new Array(3);
        for (var i = 0; i < 3; i++) {
            array2[i] = new Array(3);
        }
        for (var i = 0; i < 3; i++) {
            for (var j = 0; j < 3; j++) {
                start = start - 1; // üstte zaten start değeri 10 oldumuş durumda.
                array2[i][j] = start;

            }
        }
        for (var i = 0; i < 3; i++) {
            for (var j = 0; j < 3; j++) {
                document.write(array2[i][j] + "&emsp;");
            }
            document.write("<br/>");
        }
        document.write("<br/>");
        document.write("&emsp;=");
        document.write("<br/>");
        document.write("<br/>");
        var array3 = new Array(3);
        for (var i = 0; i < 3; i++) {
            array3[i] = new Array(3);
        }
        for (var i = 0; i < 3; i++) {
            for (var j = 0; j < 3; j++) {
                start = start - 1;
                array3[i][j] = array1[i][j] + array2[i][j];

            }
        }
        for (var i = 0; i < 3; i++) {
            for (var j = 0; j < 3; j++) {
                document.write(array3[i][j] + "&emsp;");
            }
            document.write("<br/>");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
</body>
</html>
