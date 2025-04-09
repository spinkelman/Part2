public with sharing class LeadTriggerHandler {
    public static void createTaskNewLead(List<Lead> newLeads) {
        //Create list
        List<Task> insertTaskOnNewLead = new List<Task>();
        // Loop through newLeads and create a new task for each one
        for (Lead lead : newLeads) {
            Task leadTask = new createTask(
                name = 'New Interest Follow up ' + lead.Interest,
                Status = 'Not Started'
            );
            insertTaskOnNewLead.add(leadTask);
        } //end for loop
        
        if (!tasksToInsert.isEmpty()) {
            insert tasksToInsert;
        }

    } 

public static void handleAfterUpdate(List<Lead> newLeads, Map<ID, Lead> oldLeadMap) {
    List<Task> insertTaskOnExistingLead = new List<Task>();
    
    for (Lead newLead : newLeads) {
        Task newTask; 
        if((newLead.ProductInterest__c != oldLeadMap.get(newLead.Id).ProductInterest__c))  { 
            newTask = new Task(
                name = 'New Interest Follow up ' + lead.Interest,
                Status = 'Not Started');
        }
        tasksToInsert.add(newTask);
    } 
    
    if (!tasksToInsert.isEmpty()) {
        insert tasksToInsert;
    }
}
}