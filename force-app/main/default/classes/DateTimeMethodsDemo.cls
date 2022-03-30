public class DateTimeMethodsDemo {

 public void OlympicGamesAge(){
     //Find the age of Olympic games in terms of:(6 April 1896)
       date firstOlymic = date.newInstance( 1896, 4, 6);
       date todaydate = date.today(); 
       integer age = firstOlymic.monthsBetween(todaydate);
       system.debug ('The age of Olympic games in months is    : '  + age);
    
       integer age2 = firstOlymic.daysBetween(todaydate);
       system.debug('The age of Olympic games in days is      : ' + age2);

       integer age3 = firstOlymic.monthsBetween(todaydate);
       system.debug('The age of Olympic games in years is     : ' + age3/ 12);
 }
   public boolean leapYearCheck(date dt){
        integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;    }

  /*      public boolean leapYearCheck(){
            date dt= date.newInstance(1896, 4, 6);
            integer year = dt.year();
            boolean lp = date.isLeapYear(year);
            return lp;    }*/

    
/* 

    //public void calculateAgeInMonths() {
        date birthDate = date.newInstance(2004, 11, 11);
        date todaydate = date.today();
        integer age = birthDate.monthsBetween(todaydate);
        system.debug('my age is ' + age / 12);
    }

    public void calculateAgeInDays() {
        date birthDate = date.newInstance(2004, 11, 11);
        date todaydate = date.today();
        integer age2 = birthDate.daysBetween(todaydate);
        system.debug('my age is ' + age2);
    }

    public void printSubscriptionEndDate() {
        date startDate = date.today();
        date endDate = startDate.addDays(1000);
        system.debug ('subs end date ' + endDate);
        integer endDateYear = endDate.year();
        system.debug ('subs end date year ' + endDateYear);
        integer endDateMonth = endDate.month();
        system.debug ('subs end date month ' + endDateMonth);
    }
    public void printOfferEndDateTime(){
         datetime dtNow = datetime.now();
         datetime dtOfferEnd = dtNow.addHours(51);
         system.debug('Offer will end on :' +dtOfferEnd);
         date OfferEndDate = dtOfferEnd.date();
         system.debug('Offer end date is '  + OfferEndDate );
    }
public boolean leapYearCheck(date dt){
        integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;
    }


// default private
void printMessage(string msg){
system.debug(msg);

}

*/
}
