public  class SoqlDemo2 {
    public  static void  childToParent_Soql1(){
         List<Contact> listCnt =[Select id, name, account.name from Contact  
         where account.industry ='Energy'];
         for (Contact eachContact  : listCnt){
             string accName = eachContact.Account.Name;
             system.debug('Contact name is ' + eachContact.Name + ', its acc is ' +accName);
         }

    }

    public static void samleSoql4(){
        List<Account> accountWithOppList = new List<Account>();
        accountWithOppList = [Select Name, AnnualRevenue, 
                                (Select Name, Amount from Opportunities Where StageName = 'Closed Won')
                               from Account 
                               Where Type = 'Customer - Direct'];
        for(Account acc:accountWithOppList){
            System.debug('Account name  '+acc.Name+' and its annual revenue is --->'+acc.AnnualRevenue);
            System.debug('opps '+acc.Opportunities);
            // List<Opportunity> listOpp = acc.Opportunities;
            
            for(opportunity opp : acc.Opportunities){
                System.debug('Opportunity Name -->  '+ opp.Name);
                System.debug('Opportunity Amount -->  '+ opp.Amount);
                
            }    

        } 
    }

//6. When the StageName of an opportunity is updated, then print the value of description field and
//opportunity name.
//7. Print the difference between old and new values of Annual revenue field (difference = newValue
//– oldValue) when Annual revenue field on Account record is updated

}




    


    

