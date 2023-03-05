public class AccountTriggerHandler {
    
    public static void beforeInsertHandler( List<account> accList ){
       /* for(Account acc: accList){
          acc.Rating = 'Hot';
                 if(acc.Industry == null){
                     acc.Industry = 'Banking';
                 }
             }*/
         for(Account acc: accList) {
            acc.name =acc.name+ ' INSERTED';
             }
           }
    
    public static void afterInsertHandler( List<account> accList ){
        List<Contact> contList = new List<Contact>();
           for(Account x: accList){
             Contact cntNew = new Contact();
             cntNew.LastName = 'Contact of '+ x.name;
             cntNew.AccountId = x.id;
             contList.add(cntNew);
    }
    insert contList;
    }

   public static void beforeupdateHandler( List<account> accList ){
         for(Account acc: accList){
               acc.Industry = 'Education';
            }
       
          for(Account acc2: accList) {
            acc2.name =acc2.name+ ' UPDATED';
             }
             for(Account acc2 : accList){
         /*Account eskihal =  trigger.oldMap.get(acc2.Id);
          
           if(eskihal.phone != acc2.Phone){
            acc2.Old_Phone_No__c = eskihal.phone;
           }*/
        }
 }

}