<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_58_Properties.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
    <script type="text/javascript">
        /*58 Properties
        Encapsulation, tahminimce yapılan işin kolaylığının anlaşılmaması için kullanılan ve Enkapsuleyşşşın diye okunan havalı bir ingilizce kelimedir. Aynı zamanda nesne programlayabileceğimiz dillerin pillar'ından biridir. Property'ler, Encapsulation sağlar. Yani nesneye kontrollü veri giriş çıkışı sağlama işidir.
        JavaScript'de Property oluşturabilmemiz için Object nesnesinin defineProperty() Function'ını kullanmalıyız. Function 3 parametre bekliyor. 1. parametre Property'nin ait olacağı nesne 2. parametre property adı 3. parametre get ve set methodları için alan.
        */

        function Employee(name, age) 
        {
            var _name = name;
            var _age = age;
            Object.defineProperty(this, "age", 
            {
                get: function () 
                {
                    return _age;
                },

                set: function (value) {
                    if (value > 1 || value < 100) {
                        alert("Invalid age");
                    }
                    else {
                        _age = value;
                    }

                }
            })

            Object.defineProperty(this, "name", 
            {
                get: function myfunction() {
                    return _name;
                }
            })
        }

        var employee = new Employee("Metehan", "23");
        employee.age = 1000;
        employee.name = "asdasdas";

        alert(employee.age + " " + employee.name);

    </script>
</body>
</html>
