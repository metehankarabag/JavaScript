<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_55_GlobalNamespacePollution.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="TeamA.js" type="text/javascript"></script>
    <script src="TeamB.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="divv">
    </div>
    </form>
    <script type="text/javascript">
        /*55.Ders Global Namespace Pollution
        JavaScript'de method overloading diye bir şey yok. Fakat bir alanda aynı isimde 2 method tanımladığımızda,hata almayız. Bunun yerine son yüklenen function ilk yüklenenin üzerine yazılır. Farklı Script dosyalarında bulunsa bile adı aynı olan function'lar Window alanına yükleneceği için son yüklenen Script dosyası geçerli olur.
        */
        /*56 Namespaces
         JavaScript'de NameSpcae yok fakat NameSpace oluşturmak için Object kullanabiliriz.
         PragimTech nesnesi oluşturduk. Bu nesneye farklı Script dosyalarından TeamA ve TeamB nesneleri ekledik ve 2 tane Customer nesnesi yükledik.
         Pragim nesnesi Global Namespace olan window nesnesine eklenecek
         Pragim Object'i içinde bir birinden farklı 2 object var ve bu object'leri içinde aynı isimde 2 method var. Fakat methodların tam adına baktığımızda isimler farklı oluyor.

         TeamA Script'inde oluşturulann Pragim nesnesini TeamB'de kullanabilmemiz için Pragim nesnesine Pragim nesnesini atıyoruz. Fakat daha önce bir nesne oluşturulmamış olabileceği için bu durumda || ile {} nesne oluşturuyoruz. Aynı durum TeamA ve B nesneleri içinde geçerli.

        */
        //document.getElementById("divv").innerHTML = new customer("Metehan", "Karabağ").getFullName();

        alert(window.PragimTech.TeamA.customer("Metehan", "Karabağ").getFullName());
        alert(window.PragimTech.TeamA.customer("Metehan","M", "Karabağ").getFullName());

    </script>
</body>
</html>
