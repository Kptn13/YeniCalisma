public class ScheduleableOpportunityCloseDateCheck implements Schedulable {
    
    // Execute at regular intervals
    public void execute(SchedulableContext ctx){
        
        List<Opportunity> oppList= [SELECT id, Ownerid, isClosed,  CloseDate
        FROM Opportunity WHERE CloseDate <Today AND (StageName != 'Closed Won' OR StageName !='Closed Lost')];
         //                           
         //                           
      // List<Opportunity> oppList= [SELECT id, Ownerid, isClosed,  CloseDate  
      // FROM Opportunity WHERE CloseDate < Today AND isClosed=false  ];
         if( oppList.size()>0    ) {
           list<Task> taskList = new List<task>();
            for(opportunity opp : oppList){
                Task tsk = new Task();
                 tsk.Subject = 'Opp Close date Passed';
                tsk.Status = 'Not Started';
                tsk.WhatId = opp.id;
                tsk.OwnerId = opp.OwnerId;
                tsk.ActivityDate = Date.today() + 3 ; // DueDate
           taskList.add(tsk);
          }
           insert taskList;
       }
      
    }

}

//execute code
//SchedulableOpportunityCloseDateCheck karpuz = new SchedulableOpportunityCloseDateCheck();
//String saatKur = '0 38 13 ? * MON-FRI';
//String jobID = System.schedule('Opp close date gecenler', saatKur, karpuz);