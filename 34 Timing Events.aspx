<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_34_TimingEvents.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*34. Ders Timing Events
        Yazdığımız kodun belirli zaman aralıklarında çalıştırılmasını istiyorsak, JavaScript'de timing Event kullanırız. Global Window nesnesinin setInterval(func, delay) ve setTimeOut(func,Delay) methodlarını bu işi geçekleştirmek için kullanacağız. 
        setInterval(): Belirlenen aralıkla, belirlenen Function'ı çalıştırır. Delay parametresi methodun çalıştırılmasını geçiktirmek için kullanılan parametredir. Milisaniye türünden değer alır. 
        setTimeOut(): Delay parametresi ile belirlenen zaman dolduktan sonra methodu çalıştırır. Delay belirlenenden daha fazla olabilir. Yani beklenecek en az süreyi belirler.

        Window nesnesinin clearInterval(indervalID) methodu setInterval() methodu kullanarak tekrar tekrak çalıştırdığımız methodun çalışmasını durdurmak için kullanılır. Hangi interval nesnesindeki methodun durdurulacağını belirlemek için ise setInterval() methodunun döndüğü değeri kullanıyoruz. Aynı mantıkla clearTimeout()
        Not: Bu methodlar içinde bulunludları methodu tetikliyorsa, birinci parametreye direk methodu veremiyoruz. Fakat bir Anonymous method içinde verebiliriz.
        */
        function getCurrentDateTime() {
            document.getElementById("timeDiv").innerHTML = new Date();

        }
        function startClock() {

            intervalID = setInterval(getCurrentDateTime, 1000);
        }
        function stopClock() {
            clearInterval(intervalID);
        }
        getCurrentDateTime();
    </script>
    
    <script type="text/javascript">
        function startTimer(controlId) {
            var control = document.getElementById(controlId);
            var seconds = control.value - 1;
            if (seconds == 0) {
                control.value = "Done";
                return;
            }
            else {
                control.value = seconds;
            }
            timeOutId = setTimeout(function () { startTimer('txtBox');}, 1000);
        }
        function stopTimer() {
            clearTimeout(timeOutId);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="timeDiv"> </div>
    <br />
    <input id="txtBox" type="text" value="10" />
    <br />
    <input id="strtClock" type="button" value="Start Clock" onclick="startClock(),startTimer('timeDiv')" />
    <br />
    <input id="StpClock" type="button" value="Stop Clock" onclick="stopClock(),stopTimer()"/>

    </form>
</body>
</html>
