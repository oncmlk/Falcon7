public  class University {
    public void UniversityMethod() {

      string name ='NAU';
      integer studentNumber = 1500;
      string address = 'Sugar Grove Bldv. No:456';
      string cityName = 'Houston';
      string state ='Tx';

      system.debug(name);
      system.debug('Ogrensi sayisi  '  +  studentNumber);
      system.debug('Universitenin adresi  '   +  address);
      system.debug(cityName);
      system.debug(state);

      //2.bolum//
      integer lengthOfUniversity = name.length();
      system.debug('length of string is = ' + lengthOfUniversity);
      string upperCity = cityName.toUpperCase();
      system.debug(upperCity);
      string  lowstate = state.tolowerCase();
      system.debug(lowstate);
      boolean kontrol = name.contains('NAU');
      system.debug('has NAU? ' + kontrol);
      boolean kontrol2 = name.contains('University');
      system.debug('has University? ' + kontrol2);

      //3.bolum//

      date bugun = date.today();
      system.debug('today date is   '+ bugun);
      date verilen1 = date.newInstance(2022, 11, 11);
      system.debug(verilen1);
      date after10 = bugun.addDays(10);
      system.debug('After 10 days from today  '+ after10);

      //4.bolum//
      Time now = Time.newInstance(9, 45, 22, 10);
      Time x = Time.newInstance(11, 11, 22, 5);
      system.debug(' Time is =  ' + now);
      system.debug('New time is  ' + x);
    }
}
