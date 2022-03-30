public with sharing class CustomerHandler {
    public static void  setCustomerPayments( List<Customer> triggernew) {
List<Customer> CreatedActiveCustomer = new List<Customer>();
List<Customer> CreatedUnactiveCustomer = new List<Customer>();
   for (Customer__c customerRecords :triggernew){
       Payment newPayment = new Payment();
       if(customerRecords.Active__c){
           newPayment.add(CreatedActiveCustomer);
       }else{
           newPayment.add(CreatedUnactiveCustomer);
       }

   }


}


}
