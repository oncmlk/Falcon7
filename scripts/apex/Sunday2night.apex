//farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın.
Map<String, List<Double>> cityOfHot = new Map<String, List<Double>>();
List<Double> istanbulOfHot = new List<Double>{11.5, 17.4, 21.3, 15.5, 8.7, 22.2, 23.3};
cityOfHot.put('istanbul', istanbulOfHot);
List<Double> nyOfHot = new List<Double>{1.5, 7.4, 11.3, 10.5, 8.2, 2.1, 3.8};
cityOfHot.put('new york', nyOfHot);
List<Double> torontoOfHot = new List<Double>{-1.5, -7.2, -11.1, -1.7, -8.7, -2.8, -2.3};
cityOfHot.put('toronto', torontoOfHot);
List<Double> nairobiOfHot = new List<Double>{32.2, 27.3, 41.3, 25.5, 28.8, 32.2, 33.3};
cityOfHot.put('nairobi', nairobiOfHot);
List<Double> londraOfHot = new List<Double>{1.5, 7.4, 2.7, 5.5, 8.7, 2.8, 3.7};
cityOfHot.put('londra', londraOfHot);
System.debug(cityOfHot);
//system.debug('New York sicaklik degerleri => '+ cityOfHot.get('New York'));

Map<String,Double> ortMap = new Map<String,Double>();
for(string city : cityOfHot.keySet()){
    system.debug (city + 'icin son bir haftanin sicaklik degerleri => '+ cityOfHot.get(city));
   Double sum = 0;
  for(Double c : cityOfHot.get (city)){
      sum +=c;
    }
   Double ort = sum/(cityOfHot.get(city).size());
   ortMap.put(city,ort);
}  
system.debug(ortMap);
set<string> more10= new set<string>();
    set<string> less10 = new set<string>();
for(string cty : ortMap.keySet()){
        if(ortMap.get(cty)>10){
            more10.add(cty);
        }
        else {
            less10.add(cty);
        }
    }
    system.debug('Sicaklik ortalamasi 10 dereceden buyuk olan sehirler :  '+ more10);
    system.debug('Sicaklik ortalamasi 10 derece ve  kucuk olan sehirler :  '+ less10);