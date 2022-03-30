public  class operationHelper2 {
    
    public static decimal Sum(list <decimal> myList){
        decimal temSum = 0;
        for(decimal eachValue: myList){
            temSum += eachValue;
        }
        return temSum;
    }
     public static decimal Avarege( list <decimal> myList){
     decimal temSum = Sum(myList);
     integer noOfValue = myList.size();
     return temSum/noOfValue;
     }
     public static void Maximum( list <decimal> myList){
         if (!mylist.IsEmpty()) {
            system.debug(myList);
            mylist.sort();
            system.debug(myList);
           system.debug('En kucuk eleman  ' +mylist[0]);
           system.debug('En buyuk eleman '+ mylist[mylist.size()-1]); 
         } else {
          system.debug('Lutfen gecerli liste giriniz...' ) ; 
         }
         
     }
       
     public static decimal Max (list <decimal> myList){
        decimal maxeleman;

         if (!mylist.IsEmpty()) {
             maxeleman =myList[0];
         for (decimal item  : myList) {
          if(item>maxeleman){
              maxeleman=item;
          }   
         } 
             
         } else {
          system.debug('Lutfen gecerli liste giriniz...'); 
         }

         
         return maxeleman;


     }

     public static decimal Min (list <decimal> myList){
         decimal mineleman;
         if (!mylist.IsEmpty()) {
             mineleman =myList[0];
            for (decimal item  : myList) {
                if(item<mineleman){
                    mineleman=item;
                }   
            }
        }
         else {
            system.debug('Lutfen gecerli liste giriniz...'); 
         }
        
        return mineleman;

    }

    public static void reverse(list<decimal> mylist){
    for( Integer i= mylist.size()-1; i>= 0; i--){
            system.debug(mylist[i]);
        }

    }
}  

