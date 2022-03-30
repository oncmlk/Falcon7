public class Ornek6 {
    public static void sayisiralama(){
        List<integer> listsayilar = new List<integer>{2, 85, 90, 13, 5};
        system.debug('benim olusturdugum sayi dizisi  '+listsayilar );
        listsayilar.add(7);
        system.debug('Eklenen sayim;   ' +listsayilar);
        listsayilar.sort();
       
        system.debug('En kucuk eleman = '+ listsayilar[0]);
        system.debug(listsayilar[1]);
        system.debug(listsayilar.get(1));
        system.debug('En buyuk eleman =' + listsayilar[4]);
        
        system.debug('Yanyana siralama :  '+listsayilar);
        
      /*  for (integer i=0;i<=4;i++)
        {
        system.debug(listsayilar[i]);
        }*/
    }
    
    

  }
    


    

