map< string, string> mapCntCurrency = new map< string, string>();

mapCntCurrency.put('USA', 'Dolar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('Thailand', 'Baht');

system.debug('Map of country vs currency   :' +mapCntCurrency);

string IndiaCurrency = mapCntCurrency.get('India');
string TurkeyCurrency= mapCntCurrency.get('Turkey');
system.debug('India currency = ' + IndiaCurrency);
system.debug('Turkey currency = ' + TurkeyCurrency);

Set<string>countrySet = mapCntCurrency.keySet();
system.debug('Countries in map :  ' + countrySet);

List<string>currencySet = mapCntCurrency.values();
system.debug('Currencies in map :  ' + currencySet);

for(string country: countrySet){
    system.debug('each country =   '+country);
    string eachCurrency = mapCntCurrency.get(country);
    system.debug('currency is '+ eachCurrency);

    //Set<string>countrySet = mapCntCurrency.keySet();
    
}