trigger LeadTrigger on Lead (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    if ( Trigger.IsBefore &&  Trigger.isInsert) {
        //cakistigi icin asagidaki kod pasif hale getirildi
        //when a new lead is created assign 'education' if industry field is null
       /* for(Lead ld: Trigger.new){
                 if(ld.Industry == null){
                     ld.Industry = 'Education';
                 }
             }
        */
       //1. ornek LeadTriggerBeforeHandler.beforeInsertHandler(trigger.new);
        
       LeadTriggerBeforeHandler.beforeInsertHandler(trigger.new)  ;
        for(Lead l: Trigger.new){
            l.City = 'London';
            l.Status = 'Open - Not Contacted';
            l.Title = l.OwnerId;
        }
       

        
        }
      if ( Trigger.IsBefore &&  Trigger.isUpdate) {
        //cakistigi icin asagidaki kod pasif hale getirildi
        //if lead is updated, asign 'banking' if industry field is null
        /* for(Lead ld: Trigger.new){
                 if(ld.Industry == null){
                     ld.Industry = 'Banking';
                 }
      
      } */
        //lead in status u degistiriginde error verme ornegi
        
       LeadTriggerBeforeHandler.beforeUpdateHandler(trigger.new, trigger.oldMap);
      

      }
      if ( Trigger.IsBefore &&  Trigger.isDelete) { }
      if ( Trigger.IsAfter  &&  Trigger.isInsert) {
      //Generate a trigger that
      //After creating a new lead
      //Creates another lead  FirstName = ‘new Lead Created’ 
    //1. ornek  LeadTriggerBeforeHandler.afterInsertHandler(trigger.new);
        List<Task> listTask = new List<Task>();
          for(Lead yLead: Trigger.new){
              Task newTask = new Task();
              newTask.Subject = 'Lutfen Lead kisinisi arayiniz';
              newTask.Status = 'Not Started';
              newTask.OwnerId= yLead.OwnerId;
              newTask.WhoId = yLead.id;
              listTask.add(newTask);
              
          }
          insert listTask;
          
      
          
          
          
          
      
      }
      if ( Trigger.IsAfter  &&  Trigger.isUpdate) { }
      if ( Trigger.IsAfter  &&  Trigger.isDelete) { }
      if ( Trigger.IsAfter  &&  Trigger.isUndelete) { 
          for(Lead newLead: trigger.new){
              system.debug(newLead.id+ ' '+ newLead.Name + ' '+ newLead.LastName + 'Lead recordu coptenekesinden cikartilip DB kayededildi');
          }
      
      }

}