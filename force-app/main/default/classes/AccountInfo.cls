public class AccountInfo {
    public static void AccInfo() {
    List<Account> acclist =[select  Name, Phone, AccountNumber from Account 
    WHERE AccountNumber !=null and Name LIKE '%A%'];
    
    
    for (Account eachAccount :acclist){
        string accName = eachAccount.Name;
        string accPhoneNumber = eachAccount.Phone;
        string accAccountNumber = eachAccount.AccountNumber;
        system.debug('Account Name is  '+accName + '.  ' +'Account Number is  '+accAccountNumber + '.  ' + 
        'Account Phone number is '+ accAccountNumber+ '.');
        }
     }   
}
