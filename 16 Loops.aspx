<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_16_Loops.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*
        break = Loop'un sonlanmasını sağlar.
        Continue = geçerli döngünün sonlanmasını sağlar. Yani çalıştıktan hemen sonra işlem biter sıradaki döngüye geçer.
        */
        var userChoice = "";
        do {
            var target = Number(prompt("please enter a target number", ""));
            var start = 0;
            while (start <= target) {
                document.write(start + "<br/>");
                start = start + 2;
            }
            do {
                userChoice = prompt("Do you want to continue - Yes or No").toUpperCase();
                if (userChoice != "YES" & userChoice != "NO") {
                    alert("Please enter Yes or No");
                }

            } while (userChoice != "YES" & userChoice != "NO");
        } while (userChoice == "YES");
        for (var i = 0; i <= target; i += 2) {
            document.write("<br/>" + i);
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
