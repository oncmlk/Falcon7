trigger WednesdayAccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('Trigger tetiklendi');
    if(Trigger.isBefore){
        system.debug('before triggere tetiklendi.');
        if(trigger.isInsert){
        system.debug('Before insert triggere tetiklendi');
        }
        if(trigger.isUpdate){
            system.debug('before update tiggere tetikledi');
        }
    }
        //true when code is runing in after context
        if(Trigger.isAfter){
        system.debug('after  triggere tetiklendi.');
        if(trigger.isInsert){
            system.debug('after insert triggere tetiklendi');
        }
        if(trigger.isUpdate){
            system.debug('after update triggere tetiklendi');
        }
    }
}