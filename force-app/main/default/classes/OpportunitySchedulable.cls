public  class OpportunitySchedulable implements Schedulable {
    public void execute(SchedulableContext sc) {
        Database.executeBatch(new InActiveOppTaskCreation(),50);
    }
}
