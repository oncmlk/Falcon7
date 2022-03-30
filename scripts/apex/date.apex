
//DateTimeMethodsDemo abc = new DateTimeMethodsDemo();
// PrimitiveDataTypeDemo2 pt = new PrimitiveDataTypeDemo2();
//pt.printNewDate();
// pt.printNewTime();
// pt.printNewDateTime();
//date newDate = date.today();
//boolean x = abc.leapYearCheck(newDate);
//system.debug(x);

DateTimeMethodsDemo olm = new DateTimeMethodsDemo();
olm.OlympicGamesAge();

/* boolean y = olm.leapYearCheck();
System.debug(' ??? ' + y); */

date first2 = date.newInstance( 1896, 4, 6);
boolean y = olm.leapYearCheck(first2);
System.debug(' is it a leap year ??  '+ y);
