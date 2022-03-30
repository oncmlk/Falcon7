List<string> color = new List<string>{'Pink','Red','Blue','White','Black'};

system.debug(' Color  :'+ color + ' Color size =>  '+ color.size());
system.debug('Red color  '+ color.contains('Red'));

integer lastOfIndex = color.size()-1;
system.debug ('Last element  :'+ color.get(lastOfIndex));


string buyukharf = color.get(lastOfIndex);
system.debug('Buyukharf ile :'  + buyukharf.toUpperCase());


string index5 = color[2].toUpperCase();
system.debug(index5);
List<string>colorCode = new List<string>{'AA111','BB111','CC111','DD111','EE111'};
system.debug(colorCode);



boolean compare = color.equals(colorcode);
system.debug(compare);

List<string> mergedList = new List<string>();
mergedList.addAll(colorCode);
mergedList.addall(color);
system.debug(mergedList);


