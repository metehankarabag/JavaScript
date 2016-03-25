<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_9_ConvertingStringsToNumbers.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*9. Ders Converting Strings To Numbers
        Element'lerden javaScript'e aldığımız değerler C#'daki gibi string türünde olur. Yani matamatiksel işlemler yapamadan önce türü değiştirmeliyiz. Türü değiştirmek için parseInt() methodunu kullanabiliriz. Fakat değer bu method string'i int'e çevirdiği için ondalık kısımlar varsa kaybolur. bu durumda parseFloat() methodunu kullanabiliriz.
        Kullanıcı int yerine text girerse, toplama işleminin sonucunu NaN olarak görürürz. NaN, Not a Number anlamındadır. Girilen değerin geçerli bir sayısal değer olup olmadığını anlamak için isNaN() methodunu kullanabiliriz.
        Not: Script'in çalışmasını istemediğimiz durumlar için return komutunu kullanabiliriz.
        */
        function Add() {

            var firstNumber = document.getElementById("TextBox1").value;
            var secondNumber = document.getElementById("TextBox2").value;

            if (firstNumber == "") {
                alert('First number is Required');
                return;
            }
            if (secondNumber == "") {
                alert('Second number is Required');
                return;

            }

            firstNumber = parseInt(firstNumber);
            secondNumber = parseInt(secondNumber);

            if (isNaN(firstNumber)) {
                alert('Please enter a valid number in fist number textbox');
                return;
            }
            if (isNaN(secondNumber)) {
                alert('Please enter a valid number in second number textbox');
                return;
            }
            document.getElementById("TextBox3").value = firstNumber + secondNumber;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    First Number
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Second Number
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Result
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <input id="Button1" type="button" value="Add" onclick="Add()" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
