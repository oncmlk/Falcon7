public class coin {

    public integer hesap(string str, integer fiyat) {


         List<String> coin_names = new List<String>{'BTC','ETC','ABC'};
        List<Integer> dolar = new List<Integer>{10,20,30};


        map<string,integer> Eslestirme = new map<string,integer>();

        Eslestirme.put(coin_names[0], dolar[0]);
        Eslestirme.put(coin_names[1], dolar[1]);
        Eslestirme.put(coin_names[2], dolar[2]);



       system.debug(Eslestirme);
        integer a = Eslestirme.get('BTC');
    //    System.debug('BTC nin karsiligi  ' + a);
        integer b = Eslestirme.get('ETC');
    //    System.debug('ETC nin karsiligi  ' + b);
        integer c = Eslestirme.get('ABC');
    //    System.debug('ABC nin karsiligi  ' + c); */


integer toplam = 0;
IF (str=='BTC')
 {
    toplam = fiyat * a;
    

 } 
 else IF (str=='ETC')
 {
    toplam = fiyat * b;
    

 } 
 else IF (str=='ABC')
 {
    toplam = fiyat * c;
    

 } 
 else 
 {
    System.debug('para birimi taninmadi');

 }

return toplam;


    }
}
