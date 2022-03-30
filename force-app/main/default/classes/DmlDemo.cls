public  class DmlDemo {
    
    
    public static void dmlInsertDemo_stndObj(){
        //1.creating new instance of account sObject
        Account acc = new account();
        //2.set field values
        acc.Name ='SoftInnovas';
        //3.set few other fields here...

        //4.Now comes the DML
        insert acc;
        //print it
        system.debug(acc);
    }
  //insert record of custom object
  //public static void dmlInsertDemo_cstmObj(){
      //salesforce_project__c sp = new salesforce
  //}


       public static void dmlUpdateDemo_1(){
           //insert record..
           Account acc = new account();
           acc.name ='SoftInnovas';
           system.debug ('pending insert : '+acc);
           insert acc;
           system.debug ('insert: '+ acc);

           acc.Name = 'Salesforce Inc';
           update acc; 
           system.debug('update:  '+acc);
       }

    public static void dmlUpdateDemo_3(){
        account acc =[select id, name from account 
        where name='SoftInnovas' limit 1];
        system.debug('fetch acc  '+acc);
        acc.Name = 'SoftInnovas Inc.';
        update acc;
        system.debug ('updated acc = ' +acc);
  }

  public static void dmlUpdateDemo_2(){
 Account acc = [select id, name from account where
  name ='SoftInnovas Inc.'limit 1];
  Contact cnt = new contact();
  cnt.lastname = 'Biden';
  cnt.accountId = acc.id;
  insert cnt;
  }


 public static void dmlMultipleRecordInsert_right(){
     list<account> listAcc = new list<account>();
     account acc1 = new account();
     acc1.name ='acc 1 ';
     listAcc.add(acc1);

     account acc2 = new account();
     acc2.name =' acc 2 ';
     listAcc.add(acc2);

     account acc3 = new account();
     acc3.name =' acc 3 ';
     listAcc.add(acc3);

     insert listAcc;


 }
}