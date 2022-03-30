@isTest
public class LeadHandlerTriggerTest {
   @isTest 
   private static void LeadHandlerTriggerTest(){
   list<Lead> leadList = new List<Lead>();
   lead myLead = new lead();
   myLead.LastName = 'Test Lead';//mendatory
   myLead.Company = 'TCS';//mendatory
   myLead.Status = 'Closed Converted';//mendatory
   myLead.LeadSource = 'Web';
   leadList.add(myLead);

   lead yourLead = new Lead ();
   yourLead.LastName = 'Test2 Lead';
   yourLead.Company = 'Infosis';
   yourLead.Status = 'Closed - Not Converted';
   yourLead.LeadSource = 'Partner Referral';
   leadList.add(yourLead);
   
   test.startTest();
   insert leadList;
   test.stopTest();




   }
}