trigger AccountTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
     SWITCH on Trigger.operationType {
         
         WHEN BEFORE_INSERT {
         AccountTriggerHandler.beforeInsertHandler(Trigger.new); 

        
        } 
        
      WHEN BEFORE_UPDATE  { 
       AccountTriggerHandler.beforeupdateHandler(Trigger.new); 
            
 
            
        } 
      
       // WHEN BEFORE_DELETE  { }
        WHEN AFTER_INSERT {
       // AccountTriggerHandler.afterInsertHandler(Trigger.new);
       List<Contact> newContactList = new List<Contact>();
          for(Account acc: Trigger.new){
                Contact cnt = new Contact();
                cnt.FirstName= 'Test ' + acc.name ;
                cnt.LastName= 'Last Name' ;
                cnt.AccountId = acc.Id;
                newContactList.add(cnt);
         }
          Database.insert(newContactList); 
            
         
        }
         
         //ACCOUNT OLUSTURULACAK KODLAR
         /*List <Account> accList = new List<Account>();
For( integer i=1 ; i <301 ; i++){
 Account newAcc= new Account();
newAcc.name = 'AAA-' + i;
newAcc.BillingCity = 'Toronto';
newAcc.BillingState = 'ON';
newAcc.BillingCountry = 'CANADA';
accList.add(newAcc);
}
System.debug(accList.size() +  ' account created');
Database.insert(accList );
*/
   
        WHEN AFTER_UPDATE   {
            //when the account`s billing city is updated, assign the billing city field of account to the mailing city field in the contacts of that account
            Set<Id> accIds = new Set<Id>();
            for(Account acc : Trigger.new){
                if(acc.BillingCity != Trigger.oldMap.get(acc.Id).BillingCity){
                    accIds.add(acc.Id); 
              }

          }


                    
           // Set<Id> accIds = trigger.newMap.keyset(); //bu sekilde 
                
            
            List<Contact> conList = [SELECT ID, MailingCity, Account.BillingCity FROM Contact
                                    WHERE AccountId IN: accIds];
            for(Contact con:conList){
                con.MailingCity = con.Account.BillingCity;
            }
            Database.update(conList);
         
           }
       // WHEN AFTER_DELETE   { }
       // WHEN AFTER_UNDELETE { 
          //  List<Contact> cntList = [ SELECT Id, AccountId, Description FROM Contact
           //                      WHERE AccountId IN: Trigger.newMap.keySet()];
           // for(Contact cnt: cntList){
             //   cnt.Description = 'Account restored by ' + System.UserInfo.getName() + ', on ' + system.today();
          //  }
           // Database.update(cntList );
          //  }
        
        

     }  
}