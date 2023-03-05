public class BatchApexContactAddressUpdate implements Database.Batchable<sObject> ,Database.Stateful  {
   integer updateSirasi=0;
    public Database.QueryLocator start(Database.BatchableContext BC) {
        // collect the batches of records or objects to be passed to execute
           return Database.getQueryLocator([SELECT Id, BillingCity, BillingState , BillingCountry,
                                            (SELECT id,MailingCity , MailingState , MailingCountry FROM Contacts )
                                             FROM Account
                                             WHERE BillingCountry = 'Turkiye']);
    }
    public void execute(Database.BatchableContext BC, List<Account> accList) {
        List<Contact> cntList = new List<Contact>();
        for(Account acc : accList) {
            for(Contact cnt: acc.Contacts){
              updateSirasi = updateSirasi+1 ;
                cnt.MailingCity = 'ANKARA ';
                cnt.MailingCountry = acc.BillingCountry;
                cnt.MailingState = acc.BillingState ;
                cnt.updateSirasi__c = updateSirasi;
               cntList.add(cnt);
            }
        }
        try {
            // Update the Account Record
            update cntList;
        } catch(Exception e) {
            System.debug(e);
        }
    }
    public void finish(Database.BatchableContext BC) {
        // execute any post-processing operations like sending email
    }
}
//anys execute
//BatchApexContactAddressUpdate papatya = new BatchApexContactAddressUpdate();
 //Database.executeBatch(papatya , 50);