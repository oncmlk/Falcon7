public  class OperationsHelper {
    public Decimal  largestOutOffTwoNumbers(decimal number1, decimal number2) {
    if (number1 > number2){
        return number1;
    }else 
        return number2;
    }
    public Decimal smallestOutOfThreeNumbers(decimal nm1, decimal nm2, decimal nm3){
    if (nm1<=nm2 && nm1<nm3){
        return nm1;
    } else if (nm2<nm1 && nm2<nm3){
        return nm2;
    }else{ 
        return nm3;
    }

 }

    public integer sumOfPositiveIntegers(integer n) {
       integer sum =0;
       
       if (n<0){
           system.debug('We are not calculating the sum for negative numbers');
           return null;
       }else{
       for (integer i=0; i<=n; i++){
        sum = sum +i;
        //sum +-i;
       }
       return sum;
    }      
    }
}
