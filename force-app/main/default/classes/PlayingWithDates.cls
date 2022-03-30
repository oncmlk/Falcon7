public class PlayingWithDates {
    public void PrintDateOutput() {

        //1- today
        date x = date.today();
        system.debug('today date  '+ x);
        
        //2-3 instance
        date a1 = date.newInstance(2789, 5, 11);
        date a2 = date.newInstance(1459, 3, 4);
        system.debug(a1);
        system.debug(a2);

        // 4-5 integer 
        integer dayInt = 11;
        integer monthInt =1;
        integer yearInt = 2022;
        date a3 = date.newInstance(yearInt, monthInt,dayInt );
        system.debug(a3);

        // 6- days after
        date x2 = x.addDays(67);
        system.debug('After 67 days from today  '+ x2);
        // 7 months earlier
         Date calMonth = x.addDays(-7);
         system.debug('7 months before from today'+ calMonth );
        
        Date dayBefore = x.addDays(-895);
        system.debug(' 895 days before today'+ dayBefore);
         
        Date yearBefore = x.addYears(-59);
         system.debug('Year 59 before today '+ yearBefore);

         Date yearAfter = x.addYears(278);
         system.debug('Year 278 after today'+ yearAfter);
        







    }
}
