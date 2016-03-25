<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_31_ErrorHandling.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*31. Ders Error handling
        JavaScript'de de çalışma zamanı hatalırını önlemek için try/catch kullanılır. İşlenmemiş bir hata çalıştırıldıktan sonra C#'daki gibi çalışmanın durdurulmasına neden olur. Try Catch'e Finally bloğuda ekleyebiliriz. Hata olduğunda Catch çalışmaz fakat Finally bloğu her zaman çalışır. Kullanıcıdan aldığımız bir değer'in hata oluşturmasını istiyorsak C#'daki gibi throw kullanarak custom error oluşturabiliriz.

        Not: Yoruma çevirdiğim throw yazımı bende yazım hatası veriyor ama dersde vermiyor.
        */
        try {
            ThisFunctionIsNotDefined();
            document.write("This line will not be executed");
        } catch (e) {
            document.write("Message = " + e.message + "<br/>");
            document.write("Description = " + e.description + "<br/>");
            document.write("Stack trace = " + e.stack + "<br/>");
        }
        document.write("This line will be executed");

    </script>
    <script type="text/javascript">

        function devide() {
            var numerator = Number(prompt("please enter a numerator"));
            var denominator = Number(prompt("please enter a denominator"));

            try {
                if (denominator == 0) {
                    throw "Divide by zero error";
                    //throw
                    //{
                    //    error: "Divide by zero error",
                    //    message: "Denominator cannot be ZERO",
                    //}
                }
                else {
                    document.write("Result = " + (numerator / denominator));
                }

            }
            catch (e) {
                document.write("Error = " + e + "<br/>");
                //document.write("Error = " + e.error + "<br/>");
                //document.write("Description = " + e.message + "<br/>");
            }
        }
        devide();
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
</body>
</html>
