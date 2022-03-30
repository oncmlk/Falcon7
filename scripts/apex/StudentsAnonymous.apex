Students Melike = new students();
Melike.firstName ='Melike';
Melike.lastName = 'Oncu';
Melike.classyear = 12;
Melike.major =' Math';
string a = Melike.generateReport();
system.debug('major: ' + a);
system.debug( 'Melikeye ait bilgiler : ' + Melike );

Students Ali = new students();
Ali.firstName ='Ali';
Ali.lastName = 'Oncu';
Ali.classyear = 10;
Ali.major =' Art';
string b= Ali.generateReport();
system.debug('major: ' + b);
system.debug( 'Aliye ait bilgiler : ' + Ali );