AirlineTicket nyLn = new AirlineTicket();
nyLn.departureCity = 'NewYork';
nyLn.arrivalCity = 'London';
nyLn.flightNumber= '923';
nyLn.seatAssigment = '12F';
nyLn.printTicket();
system.debug('Your Flight Info:'+  nyLn);

AirlineTicket SfIst = new AirlineTicket();
SfIst.departureCity = 'San Francisco';
SfIst.arrivalCity = 'Istanbul';
SfIst.flightNumber= '124';
SfIst.seatAssigment = '13E';
SfIst.printTicket();
system.debug('Your Flight Info:'+  SfIst);
