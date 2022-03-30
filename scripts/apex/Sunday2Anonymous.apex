// 5 ulke(key),bazi sehirleri value olan bir map olusturunuz.
Map<String,List<String>> citiesOfCountrys = new Map<String,List<String>>();
List<String> usaCities = new List<String>{'New York', 'Washington DC', 'California', 'Indiana', 'Austin'};
citiesOfCountrys.put('USA', usaCities);
System.debug(citiesOfCountrys);
List<String> turkeyCities = new List<String>{'Istanbul', 'Ankara', 'Bursa', 'Izmir'};
citiesOfCountrys.put('TUR', turkeyCities);
List<String> germanyCities = new List<String>{'Berlin', 'Bonn', 'Frankfurt'};
citiesOfCountrys.put('GER', germanyCities);
List<String> greceeCities = new List<String>{'Atina', 'Selanik'};
citiesOfCountrys.put('GRE', greceeCities);
List<String> franceCities = new List<String>{'Paris'};
citiesOfCountrys.put('FRA', franceCities);
System.debug(citiesOfCountrys);
//her ulkenin ismini yazsin  yanina da listede kac tane sehir oldugunu yazsin
//system.debug(citiesOfCountrys.get(TUR));
//system.debug(citiesOfCountrys.keySet());

/*for(string country : citiesOfCountrys.keySet()){
    system.debug(country);
    system.debug(citiesOfCountrys.get(country));
    system.debug(country + ' ulkenin sehir listesindeki sayi  : '   +citiesOfCountrys.get(country).size());*/


    //sehir sayisi 3 ve daha fazla olan ulkelerin isimlerini bir listede diger ulkelerin isimlerini  de baska listede yaziniz
   

   set<string> moreThenTree = new set<string>();
    set<string> lessThenTree = new set<string>();
    for(string country : citiesOfCountrys.keySet()){
        if(citiesOfCountrys.get(country).size() >=3){
            moreThenTree.add(country);
        }
        else {
            lessThenTree.add(country);
        }

    }

    system.debug('Sehir sayisi 3 ve 3ten fazla  olan ulkeler : ' + moreThenTree);
     system.debug('Sehir sayisi 3 ten kucuk olan ulkeler  : '+ lessThenTree);

//sunday2 classi ile ilgili
Sunday2.creatOfAccount('DemoTest');


Sunday2.creatOfAccount('Mikrosoft');
Sunday2.creatOfAccount('Amozon');
Sunday2.creatOfAccount('Tesla');


Sunday2.creatOfAccount('IBM');
Sunday2.creatOfAccount('ADIDAS');