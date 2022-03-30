//trigger AccountTrigger2 on Account (before insert, after insert, before update, after update) {
   /* 
   system.debug('trigger 1 called');
    
    if (trigger.isAfter && trigger.isInsert) {
        //newly inserted or updated record.(the one which called this trigger)
        List<account> newAccounts = trigger.new;
        system.debug('size of newAccounts ' + newAccounts.size());
        for (account eachAcc : newAccounts) {
            system.debug('account id = ' + eachAcc.id + ', account name: ' + eachAcc.name);
        }

    }
    //==============================================================
  /*  system.debug('trigger called');
    if(Trigger.isBefore && Trigger.isInsert){
    system.debug('trigger before insert .new=> ' + Trigger.new);
        }
    
    if(Trigger.isAfter && Trigger.isInsert){
        system.debug('trigger after insert .new=> '+ Trigger.new);
    
        }
    List<account>newAccount = trigger.new;
    if(Trigger.isBefore && Trigger.isUpdate){
            system.debug('Trigger before update new=> '+Trigger.new);
            for(account eachAcc : newAccount){
                system.debug('before update lastModifiedDate =>  ' + eachAcc.lastModifiedDate);
            }
        }   
    if(Trigger.isAfter && Trigger.isUpdate){
                system.debug(' Trigger After update new=> ' +Trigger.new);
                for(account eachAcc : newAccount){
                    system.debug('after update lastModifiedDate =>  ' + eachAcc.lastModifiedDate);
                }
            }    
//============================================================
*/

/*trigger AccountTrigger2 on Account (before insert, before update, after insert, after update) {
     system.debug('trigger called');
     List<Account> newAccount = trigger.new;
     if(trigger.isAfter){
         system.debug('trigger.new in isAfter = ' +newAccount);
         system.debug( 'size of newAccounts'   +newAccount.size());
     }



//================================================================
/*system.debug('trigger called');
only.isAfter(means it will be true on after insert,after update)
if(trigger.isAfter){
    system.debug('trigger.new in isAfter = '+ trigger.new);
}*/
//================================================================
/*system.debug('trigger called');
if(Trigger.isBefore && Trigger.isInsert){
system.debug('Before insert trigger  called');
    }

if(Trigger.isAfter && Trigger.isInsert){
    system.debug('After insert trigger called too.');

    }
    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('Before update trigger  called');
            }
        
        if(Trigger.isAfter && Trigger.isUpdate){
            system.debug('After update trigger called too.');
        }  */ 
    //==================================================================
    //2.aksam
    /*system.debug('trigger called');
    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('trigger.old before Insert = ' +trigger.old);
            }
     if(Trigger.isAfter && Trigger.isInsert){
                system.debug('trigger.old after  Insert = ' +trigger.old); 

            }

     if(Trigger.isBefore && Trigger.isUpdate){
                system.debug('trigger.old before Update = ' + trigger.old);
                system.debug('trigger.old before  Update = ' +trigger.new);
                    }
     if(Trigger.isAfter && Trigger.isUpdate){
                        system.debug('trigger.old after  Update = ' + trigger.old); 
                        system.debug('trigger.old after  Update = ' +trigger.new);
                    } */
                    
    //=============================================================================                
   /*if(trigger.isAfter){
    if(trigger.isUpdate){
        for(account oldAcc : trigger.old){
            system.debug('old acc id = ' + oldAcc.id + ' , old accname = ' + oldAcc.Name);
        }
        for(account newAcc :  trigger.new){
            system.debug('new acc id = ' + newacc.id + ' , new accname = '+ newAcc.name);
        }
    }
}*/
//====================================================================
//(derste yapmadi)
/*if(trigger.isAfter){
    system.debug('After trigger of Account objects.');
    List<Account> newAccounts = trigger.new;
    system.debug('size trigger.new in after trigger = ' + trigger.new.size());
    Set<Id> accIdSet = new Set<Id>();
    for(account acc : newAccounts){
        accIdSet.add(acc.Id);
    }
    system.debug('set of acc ids  ' +accIdSet);
    }*/
//===================================================================================
/*Map<id, account> trgNewMap = trigger.NewMap;
Map<id, account> trgOldMap = trigger.OldMap;

  if (trigger.isBefore && trigger.isInsert) {
    system.debug('=====BEFORE INSERT=====');
    system.debug('before insert OLD MAP -> ' + trgOldMap);
    system.debug('before insert NEW MAP -> ' + trgNewMap);
}
if (trigger.isAfter && trigger.isInsert) {
    system.debug('=====AFTER INSERT=====');
    system.debug('after insert OLD MAP -> ' + trgOldMap);
    system.debug('after insert NEW MAP -> ' + trgNewMap);
}

if (trigger.isBefore && trigger.isUpdate) {
    system.debug('=====BEFORE Update=====');
    system.debug('before Update OLD MAP -> ' + trgOldMap);
    system.debug('before Update NEW MAP -> ' + trgNewMap);
}
 if(trigger.isAfter && trigger.isUpdate) {
    system.debug('=====AFTER Update=====');
    system.debug('after Update OLD MAP -> ' + trgOldMap);
    system.debug('after Update NEW MAP -> ' + trgNewMap);
}*/
//================================================================

/*if(trigger.isAfter && trigger.isUpdate) {
    system.debug('After update trigger of Account object.');
    Map<id, account> accNewMap = trigger.NewMap;
    Map<id, account> accOldMap = trigger.OldMap;

    Set<id> accountIds = accNewMap.keySet();
    for(ID eachId : accNewMap.keySet()){
        system.debug('acc id = ' + eachId);
        
        Account newAcc = accNewMap.get(eachId);
        system.debug('new acc name = '  + newAcc.Name);

        Account oldAcc = accOldMap.get(eachId);
        system.debug('old acc name = '  + oldAcc.Name);
      }

    }*/
//====================================================================
/*if(trigger.isAfter && trigger.isUpdate) {
    system.debug('After update trigger of Account object.');
    
    integer countWSUpdated = 0;
    for(ID eachAccId : trigger.newMap.keyset()){
        string oldWS = trigger.oldMap.get(eachAccId).w
    }*/
///========================================================================
//pazar sabah dersi

    /*if (trigger.isBefore && trigger.isInsert) {
       System.debug('<==========Before Insert========>');   
       System.debug('Trigger new => ' + trigger.new); 
       System.debug('insert edilen record sayısı => ' + trigger.new.size()); 
       for (Account ac : trigger.new) {
           System.debug(ac.Name);
           System.debug(ac.id);
           System.debug(ac.createdDate);
       }     
    }
    
    if (trigger.isBefore && trigger.isUpdate) {
        System.debug('<==========Before Update========>');  
        System.debug('Trigger new => ' + trigger.new);
        System.debug('insert edilen record sayısı => ' + trigger.new.size()); 
       for (Account ac : trigger.new) {
           System.debug(ac.Name);
           System.debug(ac.id);
           System.debug(ac.lastModifiedDate);
       }              
     }

     if (trigger.isAfter && trigger.isInsert) {
        System.debug('<==========After Insert========>'); 
        System.debug('Trigger new => ' + trigger.new); 
        System.debug('insert edilen record sayısı => ' + trigger.new.size()); 
       for (Account ac : trigger.new) {
           System.debug(ac.Name);
           System.debug(ac.id);
           System.debug(ac.createdDate);
       }           
     }

     if (trigger.isAfter && trigger.isUpdate) {
        System.debug('<==========After Update========>'); 
        System.debug('Trigger new => ' + trigger.new);
        System.debug('insert edilen record sayısı => ' + trigger.new.size()); 
       for (Account ac : trigger.new) {
           System.debug(ac.Name);
           System.debug(ac.id);
           System.debug(ac.lastModifiedDate);
       }               
     }
}*/




