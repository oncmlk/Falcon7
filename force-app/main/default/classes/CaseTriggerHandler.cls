//3. Whenever a case is created with origin as email then set status as Escalated and Priority as High.
public with sharing class CaseTriggerHandler {
    public static void setHighStatus(List<Case> TriggerNew){
        for(Case  CaseRecords : TriggerNew){  
            if(CaseRecords.Origin =='Email'){
                CaseRecords.Status = 'Escalated' ;
                CaseRecords.Priority ='High';
            }
}
    }
}