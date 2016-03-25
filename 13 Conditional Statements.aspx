<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_13_ConditionalStatements.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var userInput = Number(("Please ender a number", ""));
        if (userInput == 1) {
            alert("Your number is one");

        }
        else if (userInput == 2) {
            alert("Your number is two");

        }
        else if (userInput == 3) {
            alert("Your number is three");

        }
        else {
            alert("Your number is not between 1 & 3");
        }


        switch (userInput) {
            case 1:
                alert("Your number is one");
                break;
            case 2:
                alert("Your number is two");
                break;
            case 3:
                alert("Your number is three");
                break;
            default:
                alert("Your number is not between 1 & 3");
                break;
        }

        var message = userInput % 2 == 0 ? "Your number is even" : "Your Number is odd";
        userInput % 2 == 0 ? (alert("Your number is even"), alert("Your number is " + userInput)) : (alert("Your number is odd"), alert("Your number is " + userInput));
        userInput == 1 ? "January" : userInput == 2 ? "February" : userInput == 3 ? "March" : "Unknown month number"
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
</body>
</html>
