public with sharing class AccountsBatch implements Database.Batchable<Sobject> {
    //mandatory start, execute, and finish methods
    public Database.QueryLocator start(Database.BatchableContext bc) {
    Database.QueryLocator q1 = Database.getQueryLocator([select id, description  from Account]);
    return q1;
    }

    public void execute(Database.BatchableContext bc, List<Account> scope){
        List<account> updateAccounts = new list<account>();
        for (account acc : scope){
         acc.Description += '...Updated via Batch apex!';
                updateAccounts.add(acc);
            }
            if(!updateAccounts.isEmpty()){
            update updateAccounts;
            }
         }
    
        public void finish(Database.BatchableContext bc){
           system.debug('Done with updating All the accounts.');
        }
    }

