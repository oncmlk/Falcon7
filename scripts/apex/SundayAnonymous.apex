List<Integer> listInteger = new List<Integer>();
listInteger.add(5);
listInteger.add(20);
listInteger.add(5);
listInteger.add(11);
listInteger.add(7);
/*system.debug('Listem   : '+listInteger);
system.debug('3 nolu indexteki eleman:    '+ listInteger.get(3));
system.debug('3 nolu indexteki eleman:    '+ listInteger[3]);
system.debug('7 elemani listede var mi?  :    '+ listInteger.contains(7));
system.debug('9 elemani listede var mi?  :    '+ listInteger.contains(9));*/
Sunday.printEleman(listInteger);

Sunday.voidDemo();
string msg =Sunday.returnDemoStr();
system.debug(msg);
integer c = Sunday.returnDemoInt();
integer d = Sunday.returnDemoInt();
system.debug(c);
system.debug(c + d);

List<string> newlist = new List<string>{'Mary','John','Sam','Ben','Mike'};
Sunday.printName(newlist);
Sunday.printReverse(newlist);

List<string> newlist2 = new List<string>();
Sunday.printName(newlist2);


//3 farkli alanda dorder kitap isminin oldugu bir liste olusturunuz.
List<String> bookList1 = new List<String>();
bookList1.add('Sefiller');
bookList1.add('Faust');
bookList1.add('Savas ve Baris');
bookList1.add('Suc ve Ceza');
system.debug(bookList1);
List<String> bookList2 = new List<String>{'Safahat','Mona Rosa','Cile','Yagmur'};
system.debug(booklist2);
List<String> booklist3 = new List<String>{'Das Capital','Kavgam','Magaradakiler'};
booklist3.add('Uc Medeniyet');
system.debug(booklist3);
//3 farkli kitap listesinin ilk elemanlarindan bir set liste olusturun.
Set<String> setList = new Set<string>();
setList.add(bookList1[0]);
setList.add(bookList2[0]);
setLIST.add(booklist3[0]);
system.debug(setList);
//3 kitap listesinin ilk elemanlarini key,listeyi de value olarak alan bir map listesi olusturun.
Map<string,List<String>> mapList = new Map<string, List<String>>();
mapList.put(bookList1[0], bookList1);
mapList.put(bookList2[0], bookList2);
mapList.put(bookList3[0], bookList3);
System.debug(mapList);

Map<string, List<String>>mapList2 = new Map<string, List<String>>();
mapList2.put('dünya klasikleri', bookList1);
mapList2.put('şiir kitapları', bookList2);
mapList2.put('fikir kitapları', bookList3);
System.debug(mapList2);
