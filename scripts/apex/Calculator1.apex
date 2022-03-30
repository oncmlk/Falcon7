Calculator calc = new Calculator();

/*calc.welcomeMessage();

calc.printNewMessage('This is new age calc.');

integer x = calc.method_add(100,15);
System.debug('sum   =' + x);

integer y = calc.method_sub(100,15);
System.debug('substract   =' + y);

integer z=calc.method_add(12, 15, 28);
system.debug('adddition 3 numbers  =' +z);*/

system.debug(calc.dynamicCalculation(10, 67.5, 'addition'));
system.debug(calc.dynamicCalculation(90, 60, 'subtraction'));
system.debug(calc.dynamicCalculation(8, 2, 'division'));
system.debug(calc.dynamicCalculation(6, 4, 'multi'));