public class DmlDemos2 {
    public  static void dmlUpdateDemo_2_CO(){
        //1.soql to get one salesforce Project
        salesforce_project__c sp =[ select id, name from salesforce_project__c 
        ORDER BY createdDate DESC limit 1 ];
        //2.create tickets instance
        salesforce_ticket__c st = new salesforce_ticket__c();
        st.Subject__c='learn apex';
        st.priority__c = 'High';
        st.status__c = 'New';
        st.salesforce_project__c = sp.id;
        insert st;
        system.debug('salesforce ticket : '+ st);
    
    }

    public static void dmlMultipleRecordInsert_right(){
        list<account> listAccount = new list<account>();
        account  acc = new account();
        acc.Name = 'SoftInnovas 28 Feb v0';
        acc.accountNumber = 'acbx-1';
        acc.Active__c = 'Yes';
        system.debug('before saving acc = ' + acc);
        listAccount.add(acc);

        for (Integer i = 1; i < 150; i++) {
            account acc2 = new account();
            acc2.Name = 'SoftInnovas 28 Feb v'+i;
            acc2.accountNumber = 'acbx-1'+i;
            acc2.Active__c = 'Yes';
            listAccount.add(acc2);
        }
        system.debug('size of list ' + listAccount.size());
        if(!listAccount.isEmpty()){
            insert listAccount;
        }
    }
public static void dmlMultipleRecordUpdate_right(){
    List<account> listAcc = [select id,name from account where CreatedDate = Today];

    list<account> updateAccounts = new list<account>();

    for(Account acc : listAcc){
        acc.name = acc.name + 'via 8.0';
        // acc.description = 'test update';
        updateAccounts.add(acc);
    }
    // (updateAccounts.isEmpty() == false)
    if(!updateAccounts.isEmpty()){
        update updateAccounts;

    }

}

private static void deleteAcc() {
    // List<account> listAcc = [select id,name from account where CreatedDate = Today];
    // Delete listAcc;
    Delete [select id,name from account where CreatedDate = Today];
    
}




}


    


