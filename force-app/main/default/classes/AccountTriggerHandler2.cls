public with sharing class AccountTriggerHandler2 {
  /*  public static void printTriggerAccount(List<Account>tNew, List<Account>tOld, Map<id,Account> tNewMap,Map<id,Account> tOldMap ){
        /*for(Account acc : tNew){
            system.debug(acc.name);
            system.debug(acc.id);
        }
        for(Account acc : told){
            system.debug(acc.name);
            system.debug(acc.id);
   }*/
   //----------------------------------------------------
   //bir update durumunda website degismisse website degisikligi oldu 
   //eskisi buydu,yenisi de bu...
   /*for(Account acc : tNew){
       if (acc.webSite != tOldMap.get(acc.id).webSite){
           system.debug('Website degisikligi oldu.Eski website =>  '+ tOldMap.get(acc.id).webSite + 'Yeni website => '+ acc.webSite);
       }else{
           system.debug('Website ile ilgli bir deskligi yok');
       }
   }*/
//===========================================================================
//9 Mart assigment
 //Part -2 (Trigger Exception – Validation Rules)
    //1. Don’t allow the Account record to save in case if the new
     //Annual revenue value is less than the older one and show the error message as 
     //‘Annual revenue cannot be reduced’ at the Annual Revenue field.
 /*  public static void AnnualRevenueValidate(List<Account> TriggerNew, Map<Id,Account> triggerOldMap){ 
     for(Account AccountRecords : TriggerNew){
         if(AccountRecords.AnnualRevenue < triggerOldMap.get(AccountRecords.id).AnnualRevenue){
             AccountRecords.AnnualRevenue.addError('Annual revenue cannot be reduced');
         }
     }
}

*/

}