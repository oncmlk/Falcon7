public class Wednesday {
 public static void listSum(list<integer> listInt){
     integer listSize =listInt.size();
     integer sum=0;
     for(Integer i= 0; i< listSize; i++){
         sum += listInt[i];
         //sum+= listInt.get(i);
         //sum = sum +listInt[i];
     }
     system.debug(listInt + ' listenin elemanlerinin toplami= '+sum);
     listInt.sort();
     system.debug(listInt);
     system.debug('En kucuk eleman = '+ listInt[0]);
     system.debug('En buyuk elemen =' +listInt[listSize-1]);
 }


    public static  void tasKagitMakas(string tkm) {
        integer randomNum = Math.round(Math.random()*2);
        string computer ='';
        if (randomNum ==0) {
           computer ='tas';
        }else if (randomNum==1){
            computer= 'kagit';
        }else{
            computer = 'makas';
        }
       string me = tkm.toLowerCase().trim();
       //else if ((me == 'tas' && computer == 'makas') || (me == 'kagit' && computer == 'tas') || (me == 'makas' && computer == 'kagit')) {
       if(me=='tas'|| me=='kagit'|| me=='makas'){
         if(computer==me){
             system.debug ('Beraberlik..');
         }else if (me=='tas' && computer == 'makas'){
             system.debug('Ben kazandim..');
         }else if(me=='kagit' && computer=='tas'){
             system.debug('Ben kazandim..');
         }else if(me=='makas'&& computer=='kagit'){
             system.debug('Ben kazandim..');
         }else{
             system.debug('Bilgisayar kazandi');
         }

       }else{
           system.debug('Hatali bir kelime girdiniz...Lutfen tekrar deneyin.. ');
       }
    }
}
