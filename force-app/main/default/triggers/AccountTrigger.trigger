trigger AccountTrigger on Account (before insert, after insert, before update,after update) {
    //Turkce ders-3/27/2022
if(trigger.isBefore && trigger.isUpdate){
    for(Account acc : trigger.new){
        String err = system.label.ErrorOfIndustry;
        if(acc.Industry == 'Banking ' && acc.Industry != trigger.oldMap.get(acc.Id).Industry){
            //acc.addError('Error Record')
            acc.Industry.addError(err);
        
    }
}
}


}