<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_6_InlineVsExternalJavascript.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="ExternalJavaScript.js">
        /*6 Inline vs external javascript
          External JavaScipt'in faydaları.
          1. Maintainability: Dosya içindeki kodu bir çok sayfada kullanmayı istiyorsak, sayfalara dosyayı referans olarak eklememiz yeterlidir. Kodda bir değişiklik yaptığmızda tüm sayfalar bu değişiklikten etkilenir.
          2. Seperations Of Concern: Html, Css ve JavaScript'in aynı anda bir dosyada olması karmaşaya yol açabilir. Bu yüzden tüm bu işleri ayrı yerlerde oluşturmak işimizi kolaylaştırır.
          3. Performance: External JavaScript File tarayıcıya yüklendikten sonra, Cache'e alınır. Bu yüzden aynı sayfa tekrar yüklendiğinde dosyanın yüklenmesine gerek kalmaz.
        */
        /*7. Ders Where should the script tag be placed in html
		Yazdığımız JavaScript kodu bir HTML Tag'ın kendisini veya değerini alarak çalışıyorsa, Script HTML'den sonra yazılmalıdır. Çünkü HTML oluşturulmadan Script'de kullanılamaz ve önce yazılan önce oluşturulur.
        External JavaScript kullanırken: tarayıcı Html'i çözmeye başlar. Parser başka bir dosya referansı kullanan <script> tagı ile karışılaştığında, perser Html'i çözme işlemini durdurur ve tarayıcı Script dosyasını indirme isteği gerçekleştirir. İndirme işlemi gerçekleşene kadar parser kalan HTML'i çözmez. Yani bu tarz Script'i çok fazla kullanan sayfanın yüklenmesi zaman alır. Çünkü Http 1.1'de aynı anda sadece 2 JavaScript dosyası indirilebilir.(Parser ilk script Tag'ından aldığı dosyayı indirene kadar, Html'i işlemeyi durduyorsa ,2. script Tag'ını nasıl okuyor da aynı anda indirme oluyor?) Bu yüzden </body>'den hemen önce Script'leri eklemek sayfa yüklenmesini hızlandıdır.

        Not: Modern tarayıcıları kullanıyorsak, script elementine async ve defer attribute'larını kullanarak script dosyası indirilirken, Html'i işlemeye devam etmenin sorun olmayacağını söylemiş oluruz.
        */
        document.getElementById("TextBox1").style.backgroundColor = "red";
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <input id="Button1" type="button" value="Check Number" onclick="IsEven()" />
    </div>
    </form>
</body>
</html>
