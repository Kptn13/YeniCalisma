public class contactTriggerHandler {
    public static void contactNumberSayisi(List<Contact> yeniListe){
        
        List<Id> accId = new List<Id>();
        for(Contact con: yeniListe){
            accId.add(con.accountId);
        }
        if(accId.size()>0){
            list<account> accList  = [SELECT Id, (SELECT Id, is_active__c FROM Contacts WHERE is_active__c = true) 
                                  FROM Account 
                                  WHERE id in:accId];
            for(account acc : accList){
                acc.activeContacts__c = acc.Contacts.size();
                
            }
            database.update(accList); 
        }
        
    }
    

}