public class Pazar {
  public static integer largest (integer a, integer b){
      if(a>b){
          return a;
      }else{
          return b;
      }
  }

public  static integer largest2( integer a, integer b){
    return Math.max (a,b);
}

public  static integer smallest( integer x, integer y, integer z){
    if(x<=y && x<=z){
        return x;
    }
    else if (y<=x && y<=z) {
        return y;

    }
    else {
        return z;
    }

}
public  static integer smallest2( integer a, integer b, integer c){
    integer x = Math.min(a, b);
    integer y = Math.min(x,c);
    return y;
}

 /*public static decimal dynamicCalculation(decimal a, decimal b, string s) {
        if(s == 'addition') {
            integer sum = a + b;
            return sum; }
        else if(s == 'subtraction') {
                integer sub = a - b;
                return sub; }
        else if(s == 'division') {
                    integer div = a / b;
                    return div; } 
        else  if{s== 'multi'){
                 integer mul = a * b;
                    return mul; } 
        }  */
        


        public static decimal totalAmount(string str,integer bb)
        {
            decimal total = 0;
            if (str == 'ekmek')
            {
                total = bb * 1;
            }
            else if(str == 'simit')
            {
                total = bb * 2;
             }
            else if (str == 'kek')
            {
                total = bb * 3;
             }
            else 
              {
                    System.debug('urun ismi hatali');
                }
            return total;
            }

        public static void numbers1(integer n){
                for (integer i=1; i<=n; i++){
                    system.debug(i);
                }
            }

        public static integer sumNumbers(integer n){
            integer sum =0;
                for (integer i=1; i<=n; i++){
                    sum += i;
                 }
                return (sum);

         //       System.debug(sum);
            }
         public static void strRpt(string str, integer n){
             string text ='';
             for(Integer i=1; i<=n; i++){
                 text +=str + '   ';
             }
             system.debug(text);
         }
        }





