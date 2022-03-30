@isTest
public class AccountTriggerHandlerTest {
    @isTest
    private static void test1() {
        list<account> listAcc = new list<account>();
        account acc1 = new account();
        acc1.name = 'acc1';
        acc1.active__c = 'No';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.name = 'acc2';
        acc2.active__c = 'Yes';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.name = 'acc3';
        acc3.active__c = 'No';
        listAcc.add(acc3);
        insert listAcc;

        for (Account acc : ListAcc) {
            acc.active__c = 'Yes';
            acc.description = 'test';
        }
        update listAcc; 
    }
}