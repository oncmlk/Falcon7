trigger CustomerTrigger on Customer__c (before delete) {
    
    
    List<Id> active =new List<Id>();
    List<id> inactive=new List<Id>();
    //Collecting active and inactive account Ids seperately
    for(Customer__c c: Trigger.old){
        if(c.active__c ==true){
            active.add(c.id);
        }else{
            inactive.add(c.id);
        }
    }
    //Find all the related payment records of all active Customer records
    if(!active.isEmpty()){
        List<Payment__c> payments1 =[select id from Payment__c where Customer__c in :active];
        if(!payments1.isEmpty())
            delete payments1;
    }
    //Find all the related 'Online' payment records of all inactive Customer records
    if(!Inactive.isEmpty()){
        List<Payment__c> onlines=[select id from Payment__c where Customer__c in :Inactive and Mode__c='Online'];
        if(!onlines.isEmpty())
            delete onlines;
    }
}

//triger bir kayit silindiginde calsiyor
//kayit silindiginde bizde buna bagli kayitlari siliyoruz