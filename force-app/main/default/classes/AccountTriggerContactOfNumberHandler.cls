/*Yeni bir Contact create edilip bir Accounta bağlandığında, 
Accounta bağlı bir Contact delete edildiğinde veya 
Bir Contact update edilerek bir Account ile bağlantısı kesilirse, 
bir Accounta bağlanırsa ya da bağlantı değişirse 
Accountta Number_of_Contacts__c fieldi güncellenecek..*/

public with sharing class AccountTriggerContactOfNumberHandler {
    public static void ContactsOfNumberInsert(List<Contact> conNew,
                                        List<Contact> conOld,
                                        Map<Id,Contact> conNewMap,
                                        Map<Id,Contact> conOldMap) {
        //Account id(Contactların Accountid leri) leri toplayacağımız liste
        Set<Id> AccIds = new Set<Id>();
        //create edilen contact ve contactların Account idlerini set e ekliyoruz..
        for (Contact con : conNew) {
            if (con.AccountId != null) {
                AccIds.add(con.AccountId);
            }
        }
        // Bu Account id lere ait tüm recordları bağlı oldukları contactlerle beraber listeliyoruz..
        List<Account> accList = [select id, name, Number_of_Contacts__c, (select id, name from Contacts) from Account where id IN :AccIds];

        //Bu listenin içine forla tek tek girdik Contact sayısını hesapladık. Number_of_Contacts__c fieldini güncelledik..
        for (Account acc : accList) {
            integer sayi = acc.Contacts.size();
            acc.Number_of_Contacts__c = sayi;
        }
        update accList;

    }

    public static void ContactsOfNumberUpdate(List<Contact> conNew,
                                              List<Contact> conOld,
                                              Map<Id,Contact> conNewMap,
                                              Map<Id,Contact> conOldMap) {
        Set<Id> AccIds = new Set<Id>();
        //Update edilen contactin eski ve yeni Account idlerini karşılaştırıyorum.. farklı ise hem eski Account u hem de yeni Accountun Contact sayısını güncelliyorum.
        for (Contact con : conNew) {
            if (con.AccountId != conOldMap.get(con.id).AccountId) {
                AccIds.add(con.AccountId);
                AccIds.add(conOldMap.get(con.id).AccountId);
            }
        }
        // Bu Account id lere ait tüm recordları bağlı oldukları contactlerle beraber listeliyoruz..
        List<Account> accList = [select id, name, Number_of_Contacts__c, (select id, name from Contacts) from Account where id IN :AccIds];
        //Bu listenin içine forla tek tek girdik Contact sayısını hesapladık. Number_of_Contacts__c fieldini güncelledik..
        for (Account acc : accList) {
            integer sayi = acc.Contacts.size();
            acc.Number_of_Contacts__c = sayi;
        }
        update accList;
    }

    public static void ContactsOfNumberDelete(List<Contact> conNew,
                                        List<Contact> conOld,
                                        Map<Id,Contact> conNewMap,
                                        Map<Id,Contact> conOldMap) {
        //Account id(Contactların Accountid leri) leri toplayacağımız liste
        Set<Id> AccIds = new Set<Id>();
        //delete edilen contact ve contactların Account idlerini set e ekliyoruz..
        for (Contact con : conOld) {
            if (con.AccountId != null) {
                AccIds.add(con.AccountId);
            }
        }
        // Bu Account id lere ait tüm recordları bağlı oldukları contactlerle beraber listeliyoruz..
        List<Account> accList = [select id, name, Number_of_Contacts__c, (select id, name from Contacts) from Account where id IN :AccIds];

        //Bu listenin içine forla tek tek girdik Contact sayısını hesapladık. Number_of_Contacts__c fieldini güncelledik..
        for (Account acc : accList) {
            integer sayi = acc.Contacts.size();
            acc.Number_of_Contacts__c = sayi;
        }
        update accList;

    }
}