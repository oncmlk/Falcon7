@isTest
public with sharing class CustomerTriggerTest {
   @isTest
   private static void CustomerTriggerTest(){

//active, id,
   List<Customer__c> myName = new List<Customer__c>();
   Customer__c cs = new Customer__c(); //our active customer
   cs.active__c = true;
   myName.add(cs); 
   
   Customer__c yc = new Customer__c(); //our inactive customer
   yc.active__c = false;
   myName.add(yc);

   insert myName;//add our customer to test env


//================================================================

   List<Payment__c> myPayment = new List<Payment__c>();
   
   //create payment list 
   Payment__c pymt = new Payment__c();
   pymt.Mode__c = 'Online ';
   pymt.Customer__c = myName[0].id; 
   myPayment.add(pymt);
   
   
   Payment__c pymt2 = new Payment__c();
   pymt2.Mode__c = 'Cash ';
   pymt2.Customer__c = myName[0].id; //paymenti yukaridaki listedi id ye bagliyoruz 
   myPayment.add(pymt2);

   
   Payment__c pymt3 = new Payment__c();
   pymt3.Mode__c = 'Online ';
   pymt3.Customer__c = myName[1].id; 
   myPayment.add(pymt3);

   
   Payment__c pymt4 = new Payment__c();
   pymt4.Mode__c = 'Cash ';
   pymt4.Customer__c = myName[1].id;
   myPayment.add(pymt4);


   insert myPayment;

   test.startTest();
   delete myName;
   test.stopTest();
 
   }
}