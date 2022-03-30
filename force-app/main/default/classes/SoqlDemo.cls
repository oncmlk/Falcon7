public  class SoqlDemo {
   
   public  static void accountSoql_1(){
        //SOQL Query always returns the LIST<sObject>
        List<Account> listAcc = [Select ID, Name from  Account];
        system.debug('Account records  =  '+ listAcc); 
        system.debug('number of records  ='+ listAcc.size());


    //SOQL can return only sObject if it is returning Only 1 record
        Account acc =[ Select ID, Name from Account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug('latest account created is '  + acc);
    }
    
     public static void accountSoql_2(){
         Account acc = [select id, name, phone, accountNumber from Account Order by createdDate desc limit 1];
        system.debug('latest account record is ' + acc);
        string accName = acc.Name;
        string accPhone = acc.phone;
        system.debug('acc name is ' + accName + ', phone is ' + accPhone);
        system.debug('account number is ' + acc.accountNumber);
   }

   public static void accountSoql_3(){
    List<Account> listAcc = [Select ID, Name, Phone, AccountNumber from  Account ORDER BY CreatedDate desc];
     system.debug('All accounts  '  +listAcc);

     for (Account eachAccount : listAcc){
         string accName = eachAccount.Name;
         string accPhone = eachAccount.Phone;
         system.debug ('Acc Name  = '+ accName + 'phone = '+ accPhone);
         system.debug('Account number is  ' + eachAccount.accountNumber);
         }
   }

   public static void accountSOQL_Filter()
   {
        string accNameFilter = 'Melike';
        List<Account> listAcc = [select id, name from account where name =: accNameFilter];
        system.debug(listAcc);
   }
   public static void accountSOQL_Filter(string accNameFilter)
   {
        List<Account> listAcc = [select id, name from account where name =: accNameFilter];
        system.debug(listAcc);
   }





}
     




    

