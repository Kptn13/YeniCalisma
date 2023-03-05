trigger StudentTrigger on Student__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    //Trigger1: Whenever a student is created, 
    //a report card should automatically be created with the name of the student 
    //and the current academic term should be selected.
     //only one rep card for a term

    
    //if(Trigger.isInsert && Trigger.isAfter){
      //  StudentHandler.afterinsertMethod(trigger.new);
    // }
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete)){
        StudentHandler.activeChildNumber(Trigger.New);
    }
    if(Trigger.isAfter && Trigger.isDelete){
        StudentHandler.activeChildNumber(Trigger.Old);
    }

}