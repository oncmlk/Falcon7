public class IterationExercise {
    public void getMultiplicationTable(integer num) {
        integer multiply;
    for (Integer i = 1; i <=10; i++) {
         multiply= i*num;
         System.debug(i + ' x ' + num + ' = ' + multiply);
    } 
}
public void getPerfectAverage(integer num1, integer num2){
    integer average;
    integer toplam = num1;
    integer bolum1 = num2 - num1 +1;
    
    for(integer i=num1; i<num2;i++) {
        num1++;
        toplam = toplam + num1;
    } 
    average = toplam / bolum1;
    System.debug('average =  '+ average);
}


/*public void dongu() {

for (integer i=1; i<=10;i++) {

    System.debug('Merhaba'); }
    
   }

public void abc() {
    integer toplam =0;
    for (integer i=1;i<=10;i++)
    {
        toplam += i;
        System.debug(toplam);
    }



}*/
     
}