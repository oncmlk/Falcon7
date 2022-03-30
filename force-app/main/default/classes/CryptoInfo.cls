public  class CryptoInfo {
    
public static void showPrice(string coinName) { 
map<string,decimal> cryptoMap = new map<string,decimal>();
    cryptoMap.put('BTC', 39045.39);
    cryptoMap.put('ETH',2720.71);
    cryptoMap.put('DOGE',0.1382);
 
if (coinName=='BTC') {
     System.debug('$ '+ cryptoMap.get('BTC')); } 
 else if (coinName=='ETH')  {
    System.debug('$ '+ cryptoMap.get('ETH'));   } 
 else if (coinName=='DOGE') {
    System.debug('$'+ cryptoMap.get('DOGE'));  } 
 else  {
    System.debug('invalid');   }
    }
}

    
    
    
