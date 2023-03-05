trigger OpportunityTask1 on Opportunity (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    if ( Trigger.IsBefore &&  Trigger.isInsert) {
                  String weekend = system.now().format('Thursday, Sunday') ; 
        for( Opportunity opp: Trigger.new){
            opp.Description= 'Test Purpose Only';
            
        }
        
    }
               
      if ( Trigger.IsBefore &&  Trigger.isUpdate) {}
      if ( Trigger.IsBefore &&  Trigger.isDelete) {
          for(opportunity opp: trigger.old){
              if(opp.StageName=='Closed Won'){
                  opp.addError('You cannot delete');
                  
              }
          }
      
      
      
      }
      if ( Trigger.IsAfter  &&  Trigger.isInsert) {
          
      }
    
      if ( Trigger.IsAfter  &&  Trigger.isUpdate) { 

          List<Task> listTask = new List<Task>();
          for(Opportunity opp: trigger.new){
              
             Opportunity eskiHal =  trigger.oldMap.get(opp.Id);
              if(opp.StageName =='Negotiation/Review' && eskiHal.StageName!='Negotiation/Review'){
                  
              Task newTask = new Task();
              newTask.Subject = 'Kardes artik opp basarili olmak uzere lutfen boss a haber ver';
              newTask.Status = 'Not Started';
              newTask.OwnerId= opp.OwnerId;
              newTask.WhatId = opp.id;
              listTask.add(newTask);
              
          }
                  
         }
        insert listTask;
  
      }
      if ( Trigger.IsAfter  &&  Trigger.isDelete) { }
      if ( Trigger.IsAfter  &&  Trigger.isUndelete) {}
      
      }