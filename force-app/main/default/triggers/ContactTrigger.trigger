trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {			
    //Normal metotta trigger durumu
    // if (trigger.isUpdate && trigger.isBefore) {
    //     ContactTriggerHandler.descriptionsUpdate(trigger.new, trigger.oldMap);
    // }

   /* if (trigger.isUpdate && trigger.isAfter) {
        Set<Id> conIds = new Set<Id>();
        if (ContactTriggerHandler.sayac) {
            for (Contact c : trigger.new) {
                if (c.LeadSource == 'Web' && c.LeadSource != trigger.oldMap.get(c.id).LeadSource) {
                    conIds.add(c.id);
                }
            }
            ContactTriggerHandler.updateOfContactsWithFuture(conIds);
        }
        
    }      */  
}

