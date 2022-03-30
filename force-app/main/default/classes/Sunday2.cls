//name parametre olarak alan o name ile Account create eden bir metot yazın?

public class Sunday2 {
    public static void creatOfAccount(string nameOfAccount){
        Account acc = new Account ();
        acc.Name = nameOfAccount;
        system.debug('Bir Account basari ile olustu ...');
        insert acc;

        //aynı metot o Accounta bağlı 5 tane de contact create etsin
        // first name acoountun ismi olsun last name 'Contact' olsun 
        //ve 1 2 3 4 5 şeklinde sıralı isimlendirme olsun.
        list<Contact>listCnt = new list<Contact>();
        for(integer i=1 ; i<= 5 ; i++){
            Contact cnt = new Contact ();
            cnt.firstName = acc.Name;
            cnt.LastName = 'Contact '+ i;
            cnt.AccountId = acc.id;
            listCnt.add(cnt);
        }
        if (!listCnt.isEmpty()){
            insert listCnt;
        }

        //aynı metotun içinde son oluşturduğumuz 5 contactı getirecek bir sorgu yazın. 
        //Account name leri ile beraber getirsin.

        List<Contact> conList = [select id, name, Account.Name from Contact ORDER BY CreatedDate desc LIMIT 5];
        system.debug('Son olusturulan 5 contact listesi  :'  + conList);
        for( contact c : conList){
            system.debug(c);
        }
    }
}




 