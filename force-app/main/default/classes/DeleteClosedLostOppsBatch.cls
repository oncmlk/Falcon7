//Assignmetteki 3.soru : 2 hafta öncesine kadar Closed Lost olarak güncellenen tüm fırsatları silin.
public with sharing class DeleteClosedLostOppsBatch implements Database.Batchable<SObject> {
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator a = Database.getQueryLocator([select id, name from Opportunity where StageName = 'Closed Lost' AND LastModifiedDate < LAST_N_DAYS:14]);
        return a;
    }
    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
        System.debug(scope);
        System.debug('Hello');
        if (scope.size()>0) {
            System.debug('Merhaba');
            delete scope;
        }
    }
    public void finish(Database.BatchableContext bc){
        System.debug('islem tamamlandi..');
    }
}