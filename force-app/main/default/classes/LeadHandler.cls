public with sharing class LeadHandler {
    public static void setRating(List<Lead> triggerNew){
        for(Lead LeadRecords : triggerNew){
            if (LeadRecords.LeadSource == 'Web') {
               LeadRecords.Rating ='Cold';
            } else {
               LeadRecords.Rating ='Hot';
            }
        }
    }

    }

