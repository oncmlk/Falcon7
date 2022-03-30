@isTest
public  class DmlDemoTest {
    @istest
    private static void  DmlDemoTest1() {
        //call the method directly because it is static
        DmlDemo.dmlInsertDemo_stndObj();
        //how to test if it inserted the record?
       list<Account> listAcc = [select id, name from Account where name='SoftInnovas'];
      system.assertEquals(1, listAcc.size());
      system.assertEquals('SoftInnovas', listAcc[0].Name);

    }
    @istest 

    public static void DmlDemoTest2(){
    
        Account acc = new Account();
        acc.Name = 'SoftInnovas Inc.';
        insert acc;
        DmlDemo.dmlUpdateDemo_2();
       List<contact> listContact = [select id, lastname from contact];
        system.assertEquals(1, listContact.size());
        system.assertEquals('Biden', listContact[0].Lastname);
    }
    @isTest
    private static void dmlDemoTest3() {
        DmlDemo.dmlMultipleRecordInsert_right();
        list<account> acc = [select id, name from Account];
        system.assertEquals(3, acc.size());
    }
}