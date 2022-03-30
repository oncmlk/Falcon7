trigger ContactTrigger1 on Contact (before insert, before update, after insert, after update) {
    if (trigger.isBefore && trigger.isUpdate) {
        //validate
        ContactTriggerHandler.contactUpdateValidation1(trigger.new, trigger.old, trigger.newMap, trigger.OldMap);
    }
    
    /*if (trigger.isAfter) {
        //insert ve undelete birbirine benzediğinden aynı metotu kullanabiliriz..
        if (trigger.isInsert || trigger.isUndelete) {
            AccountTriggerContactOfNumberHandler.ContactsOfNumberInsert(trigger.new, trigger.old,trigger.newMap, trigger.oldMap);
        }
        if (trigger.isUpdate) {
            AccountTriggerContactOfNumberHandler.ContactsOfNumberUpdate(trigger.new, trigger.old,trigger.newMap, trigger.oldMap);
        }
        if (trigger.isDelete) {
            AccountTriggerContactOfNumberHandler.ContactsOfNumberDelete(trigger.new, trigger.old,trigger.newMap, trigger.oldMap);
        }
        
    }*/
} 
    
 