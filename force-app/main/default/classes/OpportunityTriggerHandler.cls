public with sharing class OpportunityTriggerHandler {
    /*public static void totalAmountOfDescription(List<Opportunity> TriggerNew, Map<Id,Opportunity> triggerOldMap){
       Set<Id> accIds = new Set<Id>();
       for(Opportunity opp : triggerNew){
           //Amount degisikligini kontrol ediyoruz.
        if(opp.Amount != triggerOldMap.get(opp.Id).Amount){
           //degsisiklik varsa Account id leri sette topluyoruz
           accIds.add(opp.AccountId);   
        }
    }
    //Amountu update edilen opportunitieslerin bagli tum accountlar kendisne bagli opportunitiesleriyle beraber isteniyor
    List<Account> accList = [select id, name, description, (select id, name, amount from Opportunities)from Account where id in : accIds];
    for(Account acc : accList){
        decimal total = 0;
        //accountlara bagli opp.lere ve onlarin amountuna tek tek ulasmak icin
        for(Opportunity opp : acc.Opportunities){
            Total += opp.Amount;
            //Total = Total + opp.Amount;
        }
        acc.Description = 'Tum opportunitylerin Amount toplamlari = '+Total;
    }
         update accList;
    
   
    }*/
//=============================================carsamba assignment 9 March======================
 /* public static void setOpportunityCloseDate(List<Opportunity> TriggerNew){
  for(Opportunity OpportunityRecords : TriggerNew){
    
        Date TodayDate = Date.today();
    
    if (OpportunityRecords.StageName == 'Closed Won' || OpportunityRecords.StageName == 'Closed Lost'){
         OpportunityRecords.CloseDate = TodayDate;
     
        } else {
         Date fifteenDayLater = Todaydate.addDays(15);
         OpportunityRecords.CloseDate = fifteenDayLater;
        }
    
       }   
  }
 //2. Whenever Opportunity’s stage name is updated to closed won or closed lost, then set the close date as today.
 public static void setOpportunityCloseDateWhenUpdate(List<Opportunity> TriggerNew, Map<id, Opportunity> triggerOldMap){
    for(Opportunity OpportunityRecords : TriggerNew){
      
          Date TodayDate = Date.today();
      
      if (OpportunityRecords.StageName != triggerOldMap.get(OpportunityRecords.id).StageName && (OpportunityRecords.StageName == 'Closed Won' ||OpportunityRecords.StageName == 'Close Lost')){
           OpportunityRecords.CloseDate = TodayDate;
       
          
          }
      
         }   
    }
    //task 2/2. Create a validation rule with the help of trigger which does not allow to update the stage of an opportunity once it is closed/won 
//or closed/lost. For closed/won user should get error message as “Stage cannot be changed from Closed/won” and for closed/lost 
//user should get error message as “Stage cannot be changed from Closed/Lost”
public static void opportunityStatusValidation (List<Opportunity> triggerNew) {
    for(Opportunity opportunityRecords: triggerNew) {
        if(opportunityRecords.StageName=='Closed Won') {
            opportunityRecords.addError('Stage cannot be changed from Closed/won');
        }
        if(opportunityRecords.StageName=='Closed Lost'){
            opportunityRecords.addError('Stage cannot be changed from Closed/lost');
        }
        
       
    }
}
//task1/5Make use of the logic implemented for question 1 and fulfil the following requirement: When the Stage Name of an opportunity is updated to Closed Lost,
     //then update the description field as "Opportunity is lost. Please log a case with investigation team to start investigation."*/
     
     /*public static void updateDescription (List<Opportunity> triggerNew){
        for (Opportunity OpportunityRecords : triggerNew){
                if (OpportunityRecords.StageName == 'Closed Lost'){ 
                OpportunityRecords.Description = 'Opportunity is lost. Please log a case with investigation team to start investigation.'  ;
                }
        }
    }
//===========================================================================
/*Create a Task record Whenever an opportunity is updated to closed/won and Amount is more
than 10000.
 Populate Task record fields in the following manner:
Subject = "Opportunity Closed", 
WhatId = Opportunity recordId,
OwnerId = Opportunity
 
Status = 'New' 
Type = 'Call'.*/
/*public static void updateTaskRecords (List<Opportunity> triggerNew, Map<id,Opportunity> triggerOldMap){
    list<Task> tasklist =  new list<Task>();
    for(Opportunity opportunityRecords: triggerNew){
           
        
        if (opportunityRecords.StageName != triggerOldMap.get(OpportunityRecords.id).StageName && (OpportunityRecords.StageName == 'Closed Won' && OpportunityRecords.Amount >= 10000)){
                Task newTask = new Task();
               newTask.Subject = 'Opportunity Closed'; 
               newTask.WhatId = opportunityRecords.Id;
               newTask.OwnerId = opportunityRecords.OwnerId;
               newTask.Status = 'New';
               newTask.Type = 'Call';
               tasklist.add(newTask);
    }
    
}
           if(!tasklist.isEmpty()){ 
            insert tasklist;
}
       
}*/
}