public  class AccountQueueableExample implements Queueable{
    public  List<Account> accountList ;
    //parameterized  constructor 
    public AccountQueueableExample(List<Account> accList){
        accountList = accList;    
    }
//mandatory method
public void execute (QueueableContext context){
    system.debug('reached in execute method.');
    system.debug('accountList =' +accountList);
    for(Account acc : accountList){
        //Update the account name
        acc.Name +=  '--SI';
      }
    update accountList;
   }
}

