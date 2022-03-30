public class PrimitiveDataTypeDemo2 {

// DATE CLASS
/* public void printNewDate(){
system.debug('create new date instance');

Date a1 = date.newInstance(1995, 2, 17);
Date a2 = date.newInstance(2021, 10, 7);
Date todayDate = date.today();

system.debug('new date =' + a1);
system.debug('new date2 is ' + a2);
system.debug('today date ' + todayDate);
} */

// TIME CLASS
/*public void printNewTime(){
Time b1 = Time.newInstance(18, 20, 2, 30);
Time b2 = Time.newInstance(15, 15, 2, 20);
system.debug('new time =' + b1);
system.debug('new time2 is ' + b2);
}*/

// DATETIME CLASS
public void printNewDateTime(){
        date newDate = date.today();
        time newTime = time.newInstance(23, 23, 23, 23);

        Datetime dt1 = Datetime.newInstance(newDate, newTime);
        system.debug('first Date Time is ' + dt1);

        Datetime dt2 = Datetime.newInstance(2025, 1, 9);
        system.debug('dt 2 is ' + dt2);

        Datetime dt3 = Datetime.newInstance(2021, 10, 9, 10, 10, 10);
        system.debug('dt 3 is ' + dt3);

        // create newInstance from miliseconds
        // since Jan 1 1970 00:00:00 GMT
        Long longtime = 1341828183000L;
        Datetime dt4 = Datetime.newInstance(longtime);
        system.debug('long time is = '+ dt4);

        //5. create GMT
        Datetime dt5 = Datetime.newInstance(1998, 1, 28, 18, 2, 3);
        system.debug('GMT time '+ dt5);

        //6 current time
        Datetime dt6 = Datetime.now();
        system.debug('now time '+ dt6);




               
}
}
