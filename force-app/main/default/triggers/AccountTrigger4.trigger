trigger AccountTrigger4 on Account (before insert, after insert, before update, after update) {
   /* if (trigger.isBefore){
        system.debug('before insert/update trigger on account object');
  for(account eachAcc : Trigger.new){
      if(trigger.isInsert && eachAcc.Active__c =='Yes') {
          system.debug('before and actve is yes');
          eachAcc.description = 'Account is now actve.Enjoy';
      }
    if (trigger.isUpdate){
        Account oldAcc = trigger.oldMap.get(eachAcc.id);
        Account newAcc = eachAcc;
        if(eachAcc.Active__c =='Yes'  && oldAcc.active__c !=eachAcc.active__c){
            system.debug('before update and active is changed to yes');
            eachAcc.Description ='Account is now active.Enjoy!';
        }
       }
     }
   }
 }
 //==========================================================================
 trigger AccountTrigger4 on Account (before insert, after insert, before update, after update) {
  if (trigger.isBefore) {
      system.debug('before insert/update trigger on account object');
      AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
  }
 if(trigger.isAfter && trigger.isUpdate){
   //call updateVIPForAllContact
 }

}
-----------------------------------------------------
*/


/*trigger AccountTrigger4 on Account (before insert, after insert, before update, after update) {
  if (trigger.isBefore) {
      system.debug('before insert/update trigger on account object');
      AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
  }
  if (trigger.isAfter && trigger.isUpdate) {
      //call updateVIPforAllContacts method.
      AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
  }*/
}