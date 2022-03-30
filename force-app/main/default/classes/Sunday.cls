public class Sunday {
    public static void printEleman(List<Integer> mylist){
        system.debug('Listemin elemanlari :  '+mylist);
        for (integer item : myList){
            system.debug(item);
        }
        
    }

    public static void voidDemo(){
        system.debug('Ben Void metoduyum..');
        integer x = 5;
        integer y = 6;
        integer z = x + y;
    }
    public static string returnDemoStr(){
        system.debug('Ben string metoduyum..');
        return 'Ben bir  string metoduyum';

    }
    public static integer returnDemoInt(){
        system.debug('Ben integer metoduyum..');
        integer a = 5;
        return a;
}
/*StRING bir isim listesini parametre 
olarak alan bir metot yazin.Bu metot isimlere tek tek hosgeldin
 mesaji yazdirsi.apexte listeyi siz olusturun ve 5 isim alsin*/

public static void printName(List<string> nameList){
    if (!nameList.isEmpty()){
        for(string nm : nameList){
            system.debug(nm);
        }
    }else {
        System.debug('Tanimli bir liste gonderin...islem yapamazsiniz');
    }
}
  //listeyi tersten siralama
  public static void printReverse(List<String> nmList){
    if (!nmList.isEmpty()){
        integer sz = nmList.size();
        for(Integer i = sz-1 ; i>=0; i--){
            //system.debug(nmList[i]);
            system.debug(nmList.get(i));
        }
    }else {
        system.debug('Tanimli bir liste gonderin..islem yapamazsiniz ');
    }

  }

}