public class tstAccountDeleterBatchScheduler implements Schedulable {
      public void execute(System.SchedulableContext SC){
        tstAccountDeleterBatch test = new tstAccountDeleterBatch();
          Database.executeBatch(test, 10);
      }
}