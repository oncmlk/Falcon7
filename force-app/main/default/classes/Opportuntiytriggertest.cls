@isTest
public with sharing class Opportuntiytriggertest {
    @isTest
    private static void Method1() {
        List<Opportunity> oppList = new List<Opportunity>();
        Opportunity op = new Opportunity();
        op.name = 'Test Opp';
        op.stageName = 'Closed Won';
        op.closeDate = date.today();
        oppList.add(op);
       
       
        Opportunity op2 = new Opportunity();
        op2.name = 'Test Opp 2';
        op2.stageName = 'Prospecting';
        date dt = date.today().addDays(20);
        op2.closeDate = dt;
        oppList.add(op2);
      

        Opportunity op3 = new Opportunity();
        op3.name = 'Test Opp 3';
        op3.stageName = 'Closed Lost';
        date dt2 = date.today().addDays(25);
        op3.closeDate = dt2;
        oppList.add(op3);



       // test.startTest();
        insert oppList;
        //OpportunityTriggerHandler.setDefaultCloseDate(......);
        //test.stopTest();
        //test Run edildiğinde trigger isInsert durumu olur ve trigger insert için tetiklenir.
        //trigger.isIntert içinde hangi class ve metodu çağrılmışsa o da çalışır..
    
     for(Opportunity opp: oppList){
         opp.Description = 'Demo Test'; 
         //stage name durumlarnda calismasi gereken if blocklari degisiklik yoksa calismaz
         if(opp.StageName == 'Closed Won') {
             opp.StageName ='Closed Lost';
         } 

         if(opp.StageName== 'Closed Lost'){
             opp.StageName = 'Prospecting';
         }

     }
     
     update oppList;
    
    }
}