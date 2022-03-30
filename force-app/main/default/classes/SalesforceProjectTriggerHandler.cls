public with sharing class SalesforceProjectTriggerHandler {
   /* public static void createDefaultSalesforceTicket(List<salesforce_project__c> spTriggerNew) {

        List<Salesforce_ticket__c> newSTList = new List<Salesforce_ticket__c>();

        for (Salesforce_project__c eachSP : spTriggerNew) {
            Salesforce_ticket__c st = new Salesforce_ticket__c();
            st.Subject__c = 'Default ST';
            st.Salesforce_project__c = eachSP.Id;
            newSTList.add(st);
        }

        if (!newSTList.isEmpty()) {
            insert newSTList;
        }
    }*/


//salesforce proje olustuktan sonra ticketi ona bagla
@future
public static void updateTicketStatusCompleted(Set<id> spIds) {
    List<Salesforce_ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_ticket__c where salesforce_project__c in :spIds and status__c != 'Completed'];
    system.debug('tickets ' + listST);
    for (salesforce_ticket__c stRecord : listST) {
        stRecord.status__c = 'Completed';
    }
    update listST;
}


public static void createDefaultSalesforceTicket(List<salesforce_project__c> spTriggerNew) {
    try {
        List<Salesforce_ticket__c> newSTList = new List<Salesforce_ticket__c>();
        //fetch org default from custom setting, assign to a variable
        DefaultTicketInfo__c dt = DefaultTicketInfo__c.getOrgDefaults();
        for (Salesforce_project__c eachSP : spTriggerNew) {
            Salesforce_ticket__c st = new Salesforce_ticket__c();
            //use values from custom setting
            st.Subject__c = dt.Subject__c;
            st.Description__c = dt.Description__c;
            st.Salesforce_project__c = eachSP.Id;
            st.Priority__c = 'High';
            newSTList.add(st);
        }

        if (!newSTList.isEmpty()) {
            insert newSTList;
        }

    } catch (Exception ex) {
        for (Salesforce_project__c eachSP : spTriggerNew) {
            eachSP.addError('Error in creating Default Ticket. Please contact your administrator.');
        }  
    }
}
/*@future  
public static void updateProjectDescription(set<id> setSpId) {
    //we have ids, so fetch project records to update description
    List<salesforce_project__c> lstSP = [select id, description__c from Salesforce_project__c where id in :setSpId];
    system.debug('project records ' + lstSP);
    for (Salesforce_project__c eachSP : lstSP) {
        eachSP.description__c += '. Update from Future!!';
    }
    update lstSP;*/
}

