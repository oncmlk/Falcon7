trigger LeadTrigger on Lead (before insert) {
    
LeadHandler.setRating(trigger.New);
}