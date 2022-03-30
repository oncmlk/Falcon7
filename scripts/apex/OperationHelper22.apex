list <decimal> MyDecList = new list<decimal>();
MyDecList.add(29);
MyDecList.add(22);
MyDecList.add(9);
MyDecList.add(18);
MyDecList.add(29);
MyDecList.add(27.3);



decimal sum = operationHelper2.Sum(MyDecList);
system.debug('My Decimal list= ' +MyDecList);
system.debug('Sum of My Decimal List = '+sum);


decimal average = operationHelper2.Avarege(MyDecList);
system.debug('Avarege  ='   +average);

operationHelper2.Maximum(MyDecList);


decimal Max=operationHelper2.Max(MyDecList);
system.debug(Max);
decimal Min=operationHelper2.Min(MyDecList);
system.debug(Min);

operationHelper2.reverse(MyDecList);   


