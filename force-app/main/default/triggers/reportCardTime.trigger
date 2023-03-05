trigger reportCardTime on Report_Card__c (after insert, after update, before insert,before update) {
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate )){
        ReportCardTimeHandler.rcDateUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    
    if(Trigger.isBefore && Trigger.isInsert){
      Set<id> StudentIds=new Set<id>();
      Set<String> rcAcTerms=new Set<String>();
        
        for(Report_Card__c rc:Trigger.new){
         StudentIds.add(rc.Student__c);
            rcAcTerms.add(rc.Academic_Term__c);
        }
            
        Map<id,Report_Card__c> existRelRepCardsMap=new Map<id,Report_Card__c>([SELECT id,  Student__c, Academic_Term__c 
                                                                               FROM Report_Card__c 
                                                                               WHERE Report_Card__c.Student__c =:StudentIds AND Academic_Term__c =:rcAcTerms]);
               for(Report_Card__c rc:Trigger.new){
                   if(existRelRepCardsMap.values().size()>0){
                        rc.Academic_Term__c.addError('Only one report card should be created for a single student for a term');
                   }
           
              
            
        }
    
}
}