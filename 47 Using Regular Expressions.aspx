<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_47_UsingRegularExpressions.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="Text1" type="text" /><br />
        <br />
        <input id="Button1" type="button" value="Process String" onclick="processString()" /><br />
        <br />
        <textarea id="TextArea1" cols="20" rows="2"></textarea>
    </div>
    </form>
    <script type="text/javascript">
        /*47.Ders Using Regular Expressions
        Bir string içinden sadece belirli karakterleri almayı istiyorsak, string'e match() methodunu kullanabiliriz. Methoda parametre olarak almayı istediğimiz karakterleri verecek bir Expression yazmamız gerekiyor. Expression // içinde yazılır. Son /'dan sonra g Global arama anlamına gelir. Bu komut Expression'ın string'deki tüm karakterler üzerinde denenmesini sağlar. Kullanmassak ilk eşleşmeden sonraki karakterlere erişemeyiz. Alınan karakterler bir dizi değişkeninde tutulur ve her karakter yeni bir üye eklenir. Yani Peş peşe gelen ve konuşla uyan karakterler ayrı ayrı dizi üyesi olur. Bir bütün halinde diziye eklemeyiz istiyorsak, + işaretini kullanmalıyız. Dizideki üyeleri yazdırmayı denediğimizde virgülle birlikte yazdırılır. Vrigül işi bozuyorsa, for döndüğü kullanıp tek tek değerleri alabiliriz.
        */
        /*48.Ders Tools for writing regular expressions
        http://www.ultrapico/ExpressoDownload.htm -> Buradaki ExpressoSetup3.msi indirip kur. Yazdığımız Expression'ları test edebileceğimiz bir uygulama veriyor.
        -> \bKelime\b: \b içinde yazılan text aranan string'de tüm kelime olarak aranır. Yani kelimede bir ek varsa almaz.
        -> \d(digit): text'deki tüm sayıları tek tek bulmamzı sağlar. Tek \d 2 basamaklı bir sayıyı tek tek olarak alır. \d\d ise en az 2 basamaklı olan sayıları ikili gruplar halinde alır. Bir sayının 2 şey 2 şer alınması yerine sadece 2 paramaklı sayıları almayı istiyorsak. \d'leri \b'ler içinde yazabiliriz. 30 basamalı bir sayı için bu işlemi yapmak zordur. Aynı işe ulaşmak için \d'den sonra {30} yazabiliriz.(\d{30}).
        -> [0-9]: 0 ile 9 arasındaki rakamları al demek. Bu Expression'ın sonuna {30} ekleresek, 0 ile 9 arasında oluşan arka arkaya 30 karakteri al demek. Bu Expression'ı \b içinde yazarsak, 30 bassamaklı sayıları al demek. Tüm alfabetik karakterleri denetlemek için [a-zA-Z]
        ->(a|b) a veya be

        Tüm Expression karakterleri  -> http://developer.mozzila.org/en/docs/Web/JavaScript/Guide/Reqular_Expressions link'inde var. Üstteki araçda bu kadarterlerin ne anlama geldiğinide görebiliriz.
        http://regxlib.com/ : Bu link'de de bir sürü farklı düzenlenmiş Reqular Exression var. Arama kutusuna aramayı istediğimiz ismi girmemiz yeterlidir.
        */
        /*49.Ders JavaScript strings and regular expressions
         Regular Expressionlar'ı kullanabileceğimiz methodlar. -> match(),replace(), split(),search()
         Expression Modifiers -> g(Global Search), i(Case insensiitive search) m(MultilineSearch)
        */
        /*50.Ders JavaScript RegExp object
         ReqExp nesnesinin methodları
         Expression değişmeyecekse Reqular Expression literal performans açısından tercih edilir. 
         RegExp'in Expression'ı düzdenlemek için kullanabileceğimiz global, ignoreCase ve source Property'leri var. Bu Property'ler true veya false döner. 
         RegExp methodları.
         1. exec(): Expression'ın methoda parametre olarak verilen string'de bir eşleşme bulup bulamayacağını belirler. Bulursa, bulduğu ilk sonucu döner. Bulamassa null döner. Method 2. kez uygulanırsa, 2. eşleşmeyi 3. kez uygulanırsa, 3. eşleşmeyi,... döner.
         2. test(): Expression'ın methoda parametre olarak verilen string'de bir eşleşme bulup bulamayacağını belirler. boolen döner.
         3. toString(): Expression'ı string'e çevirir ve döner.
        */
        function processString() {
            var string = document.getElementById("Text1").value;
            var NumbersfromTheString = string.match(/\d+/g);
            if (NumbersfromTheString != null) {

                for (var i = 0; i < NumbersfromTheString.length; i++) {

                    document.getElementById("TextArea1").value = NumbersfromTheString;
                }
            }
        }
        var sentence = "Tam contract number is 1011011010. His age is 35";
        sentence += "Mark contract number is 8912398912. His age is 45";

        document.write(sentence.match(/\d+/g));
        document.write(sentence.replace(/\d+/g, "XXX"));
        document.write(sentence.split(/\d+/g));
        document.write(sentence.search(/\d+/)); //search methou parametresindeki metnin ilk karakterinin Index değerini gönder. parametrenin tamamı string'de bulunamassa, -1 döner.

        var sentence = "Tam contract number is 1011011010. tom age is 35. TOM is in London";
        document.write(sentence.match(/ToM/gi)); // normalde key sensitive arama yapılır. tüm eşleşmeleri almak için g insensitive arama için i kullandık.

        var regExp = /\d+/g; //Reqular Expression literal 
        regExp = new RegExp("\\d+", "gi"); //RegExp object

        document.write(sentence.replace(regExp, "XXX"));
        document.write("g = " + regExp.global + "<br/>");
        document.write("i = " + regExp.ignoreCase + "<br/>");
        document.write("m = " + regExp.multiline + "<br/>");
        document.write("source = " + regExp.source + "<br/>");

        var result;
        while ((result = regExp.exec(sentence)) != null) {
            document.write(result[0] + "<br/>"); //Demekki her yeni ekleme ilk index'e yapılıyor.

        }
    </script>
</body>
</html>
