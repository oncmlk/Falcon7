/*ilk ders-Vitap
trigger ContactTrigger2 on Contact (before update) {
//system.debug('before contact insert trigger');   
system.debug('before contact update trigger called');
}*/
//sunday 2.baslangic bUrak h/ile
/*trigger ContactTrigger2 on Contact (before insert, before update, after insert, after update) {
    
    if (trigger.isBefore && trigger.isInsert) {
        System.debug('before insert triggere');
        System.debug('trigger new => ' + trigger.new);
        System.debug('trigger old => ' + trigger.old);
        System.debug('trigger new Map => ' + trigger.newMap);
        System.debug('trigger old Map => ' + trigger.oldMap);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        System.debug('before update triggere');
        System.debug('trigger new => ' + trigger.new);
        System.debug('trigger old => ' + trigger.old);
        System.debug('trigger new Map => ' + trigger.newMap);
        System.debug('trigger old Map => ' + trigger.oldMap);
    }
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('after insert triggere');
        System.debug('trigger new => ' + trigger.new);
        System.debug('trigger old => ' + trigger.old);
        System.debug('trigger new Map => ' + trigger.newMap);
        System.debug('trigger old Map => ' + trigger.oldMap);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        System.debug('after update triggere');
        System.debug('trigger new => ' + trigger.new);
        System.debug('trigger old => ' + trigger.old);
        System.debug('trigger new Map => ' + trigger.newMap);
        System.debug('trigger old Map => ' + trigger.oldMap);
    }*/
    
}