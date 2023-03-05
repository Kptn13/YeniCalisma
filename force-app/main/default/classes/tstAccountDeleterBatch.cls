public class tstAccountDeleterBatch implements Database.Batchable<sObject> {
   public Database.QueryLocator start(Database.BatchableContext BC) {
       String query = 'SELECT id, name FROM Account WHERE name LIKE \'%tst\' ';
       return Database.getQueryLocator(query);
   }
   public void execute(Database.BatchableContext BC , List<Account> scope){
        Database.delete(scope);
   }
   public void finish(Database.BatchableContext BC) {
        system.debug('Batch apex finished the job');
   }
 }
    
//tstAccountDeleterBatchScheduler schedulable = new tstAccountDeleterBatchScheduler();
//String cronExp = '0 41 14 ? * SAT';
//System.Schedule('Tst Account Cleaner' , cronExp , schedulable);