@isTest
public with sharing class Sunday2Test {
    @isTest
    private static void cretaeOfAccountTest() {
        Sunday2.creatOfAccount('Test Account');//bu metot 1 account ve 5 contact recordu test alaninda kontrol ediyorum.
        List<Account> acclist = [select id, name from Account];
        system.assertEquals('Test Account', acclist[0].name, 'Account ismini kontrol ettim..');
        List<Contact> conList = [select id, lastname from Contact];
        system.assertEquals(5, conlist.size(), 'Contactlarin sayisi..');
        system.assertEquals( 'Contact 1', conList[0].LastName);
    }

}

    

