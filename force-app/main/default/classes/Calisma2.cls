public  class Calisma2 {
    
    string result ='';

    public string IQ(integer seviye) {
        
        if(seviye>=160) {
            result = 'Dahi';}
        else if(seviye>=120) {
            result = 'Zeki';}
        else if(seviye>=100) {
            result= 'Normal';}
        else if(seviye<100) {
            result ='Zeka az';}
           return result ; }
    
}
