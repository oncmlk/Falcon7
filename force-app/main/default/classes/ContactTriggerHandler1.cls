public with sharing class ContactTriggerHandler1 {
   /* public static void descriptionUpdate(List<Contact> conNew,Map<Id,Contact> conOldmap) {
    for(Contact cnt : conNew){
    if(cnt.LeadSource== 'Web'  && (cnt.LeadSource != conOldMap.get(cnt.id).LeadSource)){
       cnt.Description = cnt.Description + 'update yapildi' + Datetime.now();
   }
 }
}

//Bir Contact Lead Source ü update edildiğinde ve Web olduğunda Description update edilsin.. future metot ile
public static Boolean sayac = true;

@future
public static void updateOfContactsWithFuture(Set<Id> cnIds){
List<Contact> conList = [select id, name, Description from Contact where id in :cnIds];
for (Contact c : conList){
    c.Description = c.Description + 'update yapildi future metotu ile' + Datetime.now();   
     }
     if(conList.size()>0){
       sayac =false;
       update conlist;
     }
   }*/
}