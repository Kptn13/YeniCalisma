public class BatchApexExample implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext BC) {
        
        // collect the batches of records or objects to be passed to execute
        // 1. YONTEM:
       /* String query = 'SELECT Id, Name FROM Account WHERE Name LIKE \'AAA%\';
        return Database.getQueryLocator(query); */
        //2. YONTEM
        // string filtre = 'AAA%;
        //String query = 'SELECT Id, Name FROM Account WHERE Name LIKE' + filtre+ ' ';
         
    return Database.getQueryLocator([SELECT Id, Name, BillingCountry FROM Account WHERE Name LIKE 'AAA%']);
        
        
    }
    public void execute(Database.BatchableContext BC, List<Account> accList) {
        // process each batch of records default size is 200
        for(Account acc : accList) {
            // Update the Account Name
            acc.Name = acc.Name + 'Densea???';
            acc.BillingCountry = 'Turkiye';
        }
        try {
            // Update the Account Record
            update accList;
        } catch(Exception e) {
            System.debug(e);
        }
    }
    public void finish(Database.BatchableContext BC) {
        // execute any post-processing operations like sending email
    }
}