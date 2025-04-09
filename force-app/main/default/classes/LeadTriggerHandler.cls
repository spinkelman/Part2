public with sharing class LeadTriggerHandler {
    public static void createTaskNewLead(List<Lead> newLeads) {
        //Create list
        List<Task> insertTask = new List<Task>();
        // Loop through newLeads and create a new task for each one
        for (Lead lead : newLeads) {
            Task leadTask = new createTask(
                name = 'New Interest Follow up ' + lead.Interest,
                Status = 'Not Started'
            );
            insertTask.add(leadTask);
        } //end for loop

    } 
} //end trigger