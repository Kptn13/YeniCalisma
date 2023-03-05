trigger contactTrigger on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    SWITCH on Trigger.operationType {
     
       WHEN BEFORE_INSERT  { 
          
       }
       WHEN BEFORE_UPDATE  { }
       WHEN BEFORE_DELETE  { }
       WHEN AFTER_INSERT   {
       
      contactTriggerHandler.contactNumberSayisi(trigger.new);
           
           Set<Id> accIds = new Set<Id>();
           for(Contact cnt: Trigger.new){
               
               if(cnt.AccountId !=null){
                   accIds.add(cnt.AccountId);
                   
               }
           }
           if(accIds.size()>0){
               List<Account> accList = [SELECT Id, (SELECT Id FROM Contacts) FROM Account WHERE Id IN: accIds];
               for(Account acc: accList){
                   acc.Number_Of_Contacts__c = acc.Contacts.size();
               }
               update accList;
           }
       
       }
       WHEN AFTER_UPDATE   { 
      contactTriggerHandler.contactNumberSayisi(trigger.new);
           Set<Id> accIds = new Set<Id>();
           for(Contact cnt: Trigger.new){
               
               if(cnt.AccountId !=null){
                   accIds.add(cnt.AccountId);
                   
               }
           }
           if(accIds.size()>0){
               List<Account> accList = [SELECT Id, (SELECT Id FROM Contacts) FROM Account WHERE Id IN: accIds];
               for(Account acc: accList){
                   acc.Number_Of_Contacts__c = acc.Contacts.size();
               }
               update accList;
           
         }
                      
       }
       WHEN AFTER_DELETE   { 
      contactTriggerHandler.contactNumberSayisi(trigger.old);
           
                                 Set<Id> accIds = new Set<Id>();
           for(Contact cnt: Trigger.old){
               
               if(cnt.AccountId !=null){
                   accIds.add(cnt.AccountId);
                   
               }
           }
           if(accIds.size()>0){
               List<Account> accList = [SELECT Id, (SELECT Id FROM Contacts) FROM Account WHERE Id IN: accIds];
               for(Account acc: accList){
                   acc.Number_Of_Contacts__c = acc.Contacts.size();
               }
               update accList;
           
         }
       
       }
       WHEN AFTER_UNDELETE { }
   }

}