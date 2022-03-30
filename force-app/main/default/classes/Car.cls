public class Car {

    
     //public variable defined directly inside class
     public string carColor ='';
     public string carName = '';
     public static integer carsRunningAtMaxSpeed = 0;
     //private variable
     //can we access outside of class?No.
     private integer maxSpeedKMperHour = 150;

    
     public void switchOn(){
         //local variables.
         Datetime switchOnTime = Datetime.now();
        system.debug('starting the car,'  + switchOnTime);
    }


    public void drive(){
        system.debug('driving'  + carName);

    }
     public void driveAtmaxSpeed(){
         string drivingDescription ='driving  ' +  carName  + ' at  ' +  maxSpeedKMperHour + 'km/h';
       carsRunningAtMaxSpeed++;
         system.debug(drivingDescription);
     }
}



