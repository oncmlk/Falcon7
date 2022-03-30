trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update, before delete, after delete, after undelete) {
   if (trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
    Map<string, StageNamePoint1__c> points = StageNamePoint1__c.getAll();
    for(Opportunity op :trigger.new){
        op.Points__c = points.get(op.StageName).Points__c;
       }
      }
    //1.point opp un bir fieldi
     //2.si custom settings den gelen points
   
   



    //===================================================================================
    /*if (trigger.isAfter) {
        Set<Id> accIds = new Set<Id>();
        if (trigger.isInsert) {
            for (Opportunity op : trigger.new) {
                    accIds.add(op.AccountId);
            }
        }
        if (trigger.isUpdate) {
            for (Opportunity op : trigger.new) {
                if (op.Amount != trigger.oldMap.get(op.id).Amount || op.AccountId != trigger.oldMap.get(op.id).AccountId || op.stageName != trigger.oldMap.get(op.id).stageName) {
                    accIds.add(op.AccountId);
                    accIds.add(trigger.oldMap.get(op.id).AccountId);
                }
            }
        }
        if (trigger.isDelete) {
            for (Opportunity op : trigger.old) {
                accIds.add(op.AccountId);
            }
        }
        if (trigger.isUndelete) {
            for (Opportunity op : trigger.new) {
                    accIds.add(op.AccountId);
            }
        }
        if (!accIds.isEmpty()) {
            // 1-A
            OpportunityTriggerHandler1.updateHighestAmountOpportunityName(accIds);
            // 1-B
            OpportunityTriggerHandler1.updateTargetAmountAchievedOppName(accIds);
            // 1-C
            OpportunityTriggerHandler1.updateTotalAmountGenerated(accIds);
        }
        
    }
//=============================================================================================

   
   
   
   
    //TRIGGER PRACTICE QUESTIONS WEEK - 6 Part -1 Question 1
   /* if(Trigger.isBefore){
        if(Trigger.isInsert){
            OpportunityTriggerHandler1.setDefaultCloseDate(Trigger.New);
        }
        
        if(Trigger.isUpdate){
            //TRIGGER PRACTICE QUESTIONS WEEK - 6 Part -1 Question 2
            OpportunityTriggerHandler1.updateCloseDate(Trigger.new, Trigger.newMap, Trigger.OldMap);
            //TRIGGER PRACTICE QUESTIONS WEEK - 6 Part -1 Question 5
            OpportunityTriggerHandler1.updateDescription(Trigger.new, Trigger.newMap, Trigger.OldMap);
            //TRIGGER PRACTICE QUESTIONS WEEK - 6 Part -2 Question 2
            OpportunityTriggerHandler1.validateOppUpdation(Trigger.new, Trigger.newMap, Trigger.OldMap);
        }
    }*/
}
