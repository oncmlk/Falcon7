public class SetDemo2 {
    public static set<string> upperCaseSet(set<string> ss){
       Set<String>returnSet = new Set<string>();

       system.debug('ss set '+ss);
      
       for(string eachStr : ss){
           system.debug(eachStr);
           string tempStr = eachStr.toUpperCase();
           returnSet.add(tempStr);
       }
      
            return returnSet;
    }
}
/*Sanki kurabiyeleri(buradaki şehirler)
 bir kapta (burada ss set değişkeni) 
fırında hazırlamaya gönderiyoruz.
Sonra her cookie'yi kontrol ediyoruz
 (burada şehir ismini büyük harfe çeviriyoruz)
  ve hazırlandıktan sonra (burada returnSet değişkeni)
 farklı konteynere yerleştiriyoruz*/