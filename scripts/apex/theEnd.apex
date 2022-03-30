/*Map<String, CountryCode__c> countryCode = CountryCode__c.getAll();
System.debug(countryCode);

for(string c : countryCode.keyset()){
  system.debug('key===>  ' +c);
  system.debug('value(Country Code) ===>   ' +countryCode.get(c).Country_Code__c);*/

Map<String, CityCode__c> cityPlaka = CityCode__c.getAll();
System.debug(cityPlaka);

for(string ct : cityPlaka.keyset()){
  system.debug('key===>  ' +ct);
  system.debug('value(City Plaka) ===>   ' +cityPlaka.get(ct).Plaka__c);



}

/*try{
  List<Integer> numList = new List<Integer>{1, 5, 7, 11};
system.debug(numList[10]);  
 } catch(Exception e){
      system.debug(e);
  }  
system.debug('Hello');*/