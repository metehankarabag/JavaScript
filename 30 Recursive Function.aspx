<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_30_RecursiveFunction.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        /*30 Recursive Function
        Recursive Function tanımında kendini çalıştıran methoddur. Bu yüzden Recursive Function'larda döngü oluşur. Bu döngü bozabilecek bir durum oluşturmassak, sonsuz döngü oluşur.
        */
        function factoriel(n) 
        {
            if (n == 0 || n == 1) {
                return 1;
            }
            return n * factoriel(n - 1);// method her tetiklendiğinde n'e gelen yeni değer eski değer ile kullanılan operatore öğre işleme sokuluyor. Yani operatörün sağı işleme hiç girmiyor.
        }
        document.write(factoriel(5));
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
