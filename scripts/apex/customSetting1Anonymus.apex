map<string, country_code__c> cc = country_code__c.getAll();
system.debug('country codes are'  + cc );
for(string eachCC : cc.keyset()){
    system.debug.('key : '+ eachCC);
    system.debug('value : ' + cc.get(eachCC));
    system.debug( 'country code?' + cc.get.eachRecord.country_code__c);

}