//ilk sekli-error oldu
/*account ac = new account();
insert ac;
//will line 4 execute?
system.debug('apex is simple');*/



//2.sekli
try{
  account ac = new account();
insert ac;  
}catch(DmlException dex){
    system.debug('DML went wrong buddy.' );
}
catch(Exception ex){
    system.debug('something went wrong buddy');
    system.debug(ex);
    system.debug('exception message '+ ex.getMessage());
}
finally{
    system.debug('this is always run');
}
system.debug('Apex is SIMPLE');
/*Apex, yürütme sırasında hatalarla karşılaşılırsa çalışma zamanı motorunun fırlattığı bir dizi yerleşik istisna türü sağlar.

DMLException : Salesforce'ta bir kayıt eklemeye, güncellemeye veya silmeye çalışırken bir hata oluştuğunda bu istisna oluşur.
ListException : Bu istisna, bir kayıt listesiyle ilgili bir sorun olduğunda ortaya çıkar. Ya bir liste boşsa ve önce boş olup olmadığı kontrol edilmeden başvuruluyorsa ya da listede n sayıda kayıt varsa ve kodunuz n+1. kaydı arıyorsa.
NullPointerException : Bu istisna, bir değişken değer içermediğinde ve kodda başvurulduğunda oluşur.
QueryException : Bu istisna, bir SOQL sorgusu kötü yazıldığında ve dönen değerler düzgün işlenmediğinde oluşur.
sObjectException : Bu özel durum, try catch içindeki mantık, önce sorgulanmayan bir alanı güncellemeye çalıştığında ortaya çıkar.
Exception : Bu, tüm istisnaları yakalama türüdür, eğer yukarıdakilerden herhangi birini belirtmezseniz, bu yine de yukarıdaki tüm istisnaları zarif bir şekilde yakalayacaktır.*/