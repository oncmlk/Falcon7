trigger SalesforceProjectTrigger on Salesforce_project__c (before insert, after insert) {
    if(trigger.isAfter && trigger.isInsert){
        //create default ticket.
       // SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(trigger.new);
        //call future method
        set<id> setids = trigger.newMap.keySet();
        system.debug('sp ids' + setids);
        SalesforceProjectTriggerHandler.updateProjectDescripton (setids);

        }

        if(trigger.isAfter && trigger.isupdate){
            SalesforceProjectTriggerHandler.spCompleteStatus(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        }
    }


