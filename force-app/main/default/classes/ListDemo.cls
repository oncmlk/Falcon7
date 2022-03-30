public class ListDemo {
    /*public static string candidatesList(integer i) {
        //1. creating empty list of string
        List<string> listCandidates = new list<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug(listCandidates);
        string returnString = '';
        if (i < listCandidates.size()) {
            returnString = listCandidates[i];
        } else {
            returnString = 'No Value Found. Stay in limits.';
        }
        return returnString;
    }


    
    public static void randomIntegerList() {
        List<integer> listInteger = new list<integer>();
        integer i = 15;
        listInteger.add(10);
        listInteger.add(i);
        listInteger.add(21);
        listInteger.add(i);
        listInteger.add(i);

        integer index3Value = listInteger.get(3);
        //OR
        integer index3value2 = listInteger[3];

        system.debug('index 3 value is ' + index3Value);
        system.debug('list of integers ' + listInteger);
    }*/
    public static void iterateIntegerList(){
        List<integer>listInteger =new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(88);
        for (integer eachInteger : listInteger){
            system.debug(eachInteger);
        }
    }

   /* public static void allCats(){
        Cat falconsCat = new Cat ( 'fluffykins', 'white');
        Cat melikesCat = new Cat ('Simba',' Brown');
        Cat alisCat =new Cat ('Smokey', 'Gray');
   
        List <Cat> cats = new List<Cat>();
        cats.add(falconsCat);
        cats.add(melikesCat);
        cats.add(alisCat);
        cats.add(melikesCat);
        cats.add(melikesCat);
   
        system.debug('all cats are ' +cats);
        if (!cats.isEmpty()) {
          cat  catAt3 =cats[3];
          system.debug('Cat is 3 is ' + catAt3);
        }
   
       }*/

       
}