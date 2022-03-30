
    public with sharing class OpportunityTriggerHandler1 {
       public static void assignPointForStages(List<Opportunity> oppList){

        
         for( Opportunity opp : oppList){
             opp.points__c =0;//
         opp.Points__c = Stage_Name_Point__c.getInstance(opp.StageName).Points__c;
         }
       }
       
       
     //==============================================================  
        //19 Mart assignment
        /*1. Create some custom fields 
        a. 'Target Amount' - Field Type: Currency
        b. 'Total Amount Generated'  - Field Type: Currency
        c. 'Highest Amount Opportunity Name'  - Field Type: Text
        d. 'Target Amount Achieved Opportunity Name' - Field Type: Text 
        on Account Object.
        
        görevler:
        A. Amountta "Highest Amount Opportunity Name" alanını güncelleyin
        Opportunity İsimleri arasında en yüksek tutara(Amounta) sahip isim olmalı.
        B. Closed Won olanlardan Tutar alanındaki(Amount) değer 'Target Amount'dan fazla ise Accountta 'Target Amount Achieved Opportunity Name' güncelleyin
        C. Accountta 'Total Amount Generated' Closed Won olan tüm opportunity lerin Tutar(Amount) toplamını yazacağız.*/
    
        @future
        public static void updateHighestAmountOpportunityName(Set<Id> accountIds) {
            List<Account> accList = new List<Account>();
            accList = [select id, name, Highest_Amount_Opportunity_Name__c,(select id, name, Amount from Opportunities order by Amount Desc) from Account where id in :accountIds];
            for (Account acc : accList) {
                if (acc.Opportunities.size()>0) {
                    acc.Highest_Amount_Opportunity_Name__c = acc.Opportunities[0].name;
                }
            }
            update accList;
        }
    
        @future
        public static void updateTargetAmountAchievedOppName(Set<Id> accountIds) {
            List<Account> accList = new List<Account>();
            accList = [select id, name, Highest_Amount_Opportunity_Name__c, Target_Amount__c, Target_Amount_Achieved_Opportunity_Name__c, (select id, name, Amount from Opportunities where stageName = 'Closed Won' order by Amount Desc) from Account where id in :accountIds];
            for (Account acc : accList) {
                if (acc.Opportunities.size()>0) {
                    if (acc.Opportunities[0].Amount >= acc.Target_Amount__c ) {
                        acc.Target_Amount_Achieved_Opportunity_Name__c = acc.Opportunities[0].name;
                    }
                }
            }
            update accList;
        }
    
        @future
        public static void updateTotalAmountGenerated(Set<Id> accountIds) {
            List<Account> accList = new List<Account>();
            accList = [select id, name, Total_Amount_Generated__c,  (select id, name, Amount from Opportunities where stageName = 'Closed Won') from Account where id in :accountIds];
            for (Account acc : accList) {
                Decimal totalAmount = 0;
                for (Opportunity op : acc.Opportunities) {
                    totalAmount += op.Amount;
                }
                acc.Total_Amount_Generated__c = totalAmount;
            }
            update accList;
        }
    
//assignment sonu
 //================================================== 


    //TRIGGER PRACTICE QUESTIONS WEEK - 6 Part -1 Question 1
    /*public static void setDefaultCloseDate(List<Opportunity> newList){
        for(Opportunity newOpp : newList){
            if(newOpp.StageName == 'Closed Won' || newOpp.StageName == 'Closed Lost'){
                newOpp.CloseDate = Date.today();
            } else {
                newOpp.CloseDate = Date.today().addDays(15);
            }
        }
    }
    //TRIGGER PRACTICE QUESTIONS WEEK - 6 Part -1 Question 2
    public static void updateCloseDate(List<Opportunity> newList, Map<Id, Opportunity> newMap, Map<Id, Opportunity> oldMap){
        for(Opportunity newOpp : newList){
            Opportunity oldOpp = oldMap.get(newOpp.Id);
            if(newOpp.StageName != oldOpp.StageName && (newOpp.StageName == 'Closed Lost' || newOpp.StageName == 'CLosed Won')){
                newOpp.CloseDate = Date.today();
            }
        }
    }
    //TRIGGER PRACTICE QUESTIONS WEEK - 6 Part -1 Question 5
    public static void updateDescription(List<Opportunity> newList, Map<Id, Opportunity> newMap, Map<Id, Opportunity> oldMap){
        for(Opportunity newOpp : newList){
            Opportunity oldOpp = oldMap.get(newOpp.Id);
            if(newOpp.StageName != oldOpp.StageName && newOpp.StageName == 'Closed Lost'){
                newOpp.Description = 'Opportunity is lost. Please log a case with investigation team to start investigation.';
            }
        }
    }
    //TRIGGER PRACTICE QUESTIONS WEEK - 6 Part -2 Question 2
    public static void validateOppUpdation(List<Opportunity> newList, Map<Id, Opportunity> newMap, Map<Id, Opportunity> oldMap){
        for(Opportunity newOpp : newList){
            Opportunity oldOpp = oldMap.get(newOpp.Id);
            if(newOpp.StageName != oldOpp.StageName){
                if(oldOpp.StageName == 'Closed Won'){
                    newOpp.addError('Stage cannot be changed from Closed/won');
                }
                if(oldOpp.StageName == 'Closed Lost'){
                    newOpp.addError('Stage cannot be changed from Closed/Lost');
                }
            }
        }
    }*/
}


