RankHandler rk = new RankHandler();
string prize1 = rk.rankPrize(1);
system.debug('prize1 is  ' +  prize1);
string prize2 = rk.rankPrize(2);
system.debug( 'prize2 is ' + prize2);
string prize3 = rk.rankPrize(8);
system.debug('prize3 is  ' + prize3);
string prize4 = rk.rankPrize(12);
system.debug('prize4 is  ' +  prize4);


string prizes1 = rk.rankPrizeSwitch(1);
system.debug('prize 1 is ' + prizes1);
string prizes2 = rk.rankPrizeSwitch(3);
system.debug('prize 2 is ' + prizes2);
string prizes3 = rk.rankPrizeSwitch(8);
system.debug('prize 3 is ' + prizes3);
string prizes4 = rk.rankPrizeSwitch(30);
system.debug('prize 4 is ' + prizes4);


