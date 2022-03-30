/*1. Create a Map named zipCodeToCityMap which should contain the Zipcode to City Name mapping. Like below:
a. 100101 => New Delhi
b. 101234 => Mumbai
c. 569023 => New York City
2. Add multiple mappings of your choice in the zipCodeToCityMap Map.
3. Check if the above map contains mapping for 204101.
4. Print all the Zip Codes present in the zipCodeToCityMap.
5. Print all the city names present in the zipCodeToCityMap.
6. Print the number of mappings present in the zipCodeToCityMap.
7. Create a set as uniqueZipCodeSet and populate it with all the Zip codes from zipCodeToCityMap.
8. Create a List as cityNameList and populate it with all the city names from zipCodeToCityMap.
9. Check if the zipCodeToCityMap is Empty.
10. List down the differences between list and Map*/

Map<Integer, string> zipCodeToCityMap = new Map<Integer, string> ();
zipCodeToCityMap.put(100101, 'New Delhi');
zipCodeToCityMap.put(101234, 'Mumbai');
zipCodeToCityMap.put(100101, 'New York City');

//2. Add multiple mappings of your choice in the zipCodeToCityMap Map.
zipCodeToCityMap.put(60615, 'Chicago');
zipCodeToCityMap.put(77479, 'Sugar Land');
system.debug(zipCodeToCityMap);

//3. Check if the above map contains mapping for 204101.
system.debug(' is contains 204101?'+ zipCodeToCityMap.containsKey(204101));

//4. Print all the Zip Codes present in the zipCodeToCityMap.*/
System.debug('print all my values :'  + zipCodeToCityMap.values());

//6. Print the number of mappings present in the zipCodeToCityMap.
system.debug('print all values : '+ zipCodeToCityMap.size());

//7. Create a set as uniqueZipCodeSet and populate it with all the Zip codes from zipCodeToCityMap.
Set<integer> uniqueZipCodeSet = new Set<integer>();
uniqueZipCodeSet = zipCodeToCityMap.keySet();
system.debug( 'my new set  lists: ' + uniqueZipCodeSet);

//8. Create a List as cityNameList and populate it with all the city names from zipCodeToCityMap.
List<string>cityNameList = new List<string>();
cityNameList = zipCodeToCityMap.values();
system.debug( 'my new city  lists: ' + cityNameList);

//9. Check if the zipCodeToCityMap is Empty.
System.debug('if  the zipCodeToCityMap is Empty : '+ zipCodeToCityMap.isEmpty());

//10. List down the differences between list and Map*/



/*PART III → Maps – Iteration
1. Store the currency exchange rate values in a Map named ‘currISOCodeAndExchangeRateMap’ for any 5 currency ISO codes. Like below:
a. AUD => 0.73
b. CAD => 0.78
c. EUR => 1.13
d. NZD => 0.68
e. INR => 0.013
2. Fetch the currency conversion rate for any one currency ISO code and print it.
3. Check if the above Map have conversion rate for SAD ISO code.
4. Collect all the curreny ISO codes from currISOCodeAndExchangeRateMap for which the
conversion rate is >= 1 in one variable and other iso codes in other variable. Expected Output:
EUR – In one variable AUD, CAD, NZD and INR – In another variable.*/


//1. Store the currency exchange rate values in a Map named ‘currISOCodeAndExchangeRateMap’ for any 5 currency ISO codes. Like below:
map<string,decimal>currISOCodeAndExchangeRateMap = new Map<String,decimal>();
currISOCodeAndExchangeRateMap.put('AUD',0.73);
currISOCodeAndExchangeRateMap.put('CAD',0.78);
currISOCodeAndExchangeRateMap.put('EUR',1.13);
currISOCodeAndExchangeRateMap.put('NZD',0.68);
currISOCodeAndExchangeRateMap.put('INR',0.013);
//2. Fetch the currency conversion rate for any one currency ISO code and print it.
system.debug(currISOCodeAndExchangeRateMap.get('EUR'));
//3. Check if the above Map have conversion rate for SAD ISO code.
system.debug(currISOCodeAndExchangeRateMap.containsKey('SAD'));

/*4. Collect all the curreny ISO codes from currISOCodeAndExchangeRateMap for which the
conversion rate is >= 1 in one variable and other iso codes in other variable. Expected Output:
EUR – In one variable AUD, CAD, NZD and INR – In another variable.*/
    set<string> set1 = new set<string>();
    set<string> set2 = new set<string>();
    for(String eachKey : currISOCodeAndExchangeRateMap.keySet()){
        if(currISOCodeAndExchangeRateMap.get(eachKey) >=1){
            set1.add(eachKey);
        }
        else {
            set2.add(eachKey);
        }

    }

    system.debug('Currency rate is more than 1 is : ' + set1);
     system.debug('Curency rate is less than is : '+ set2);
 

