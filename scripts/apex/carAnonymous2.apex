
system.debug( '1)cars running at max speed:' + car.carsRunningAtMaxSpeed);

/*car carObj1 = new CAR();
carObj1.switchOn();*/
car bm = new car();
//acces public variable
//first set the value
bm.carColor ='black';
system.debug('car color is ' + bm.carColor);
bm.switchOn();

car lm = new car();
lm.carColor ='red';
lm.switchOn();
//lm.maxSpeedKMperHour = 100;/
//variable is not visible: Car.maxSpeedKMperHour./
system.debug( '2)cars running at max speed:' + car.carsRunningAtMaxSpeed);



car vw = new car();
vw.carColor ='white';
vw.carName = 'polo';
vw.drive();
vw.driveAtmaxSpeed();
system.debug( '3)cars running at max speed:' + car.carsRunningAtMaxSpeed);