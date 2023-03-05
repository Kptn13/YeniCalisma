public class UpdateParentAccountQuable  implements Queueable    {
     public void execute(QueueableContext context) {
         // List<account> accList= [Select id, name ,ParentId FROM account  Where name != 'wisequarter'  ];
         List<account> accList= [Select id, name ,ParentId FROM account  ];
             account wiseId =  [select id from account  where name like 'wise quarter' LIMIT 1];
         system.debug('account id problem' + account.id);
         for(Account acc :accList){
             if( acc.id   !=  wiseId.id  ) {
                 acc.ParentId = wiseId.id;
             }
        }
        database.update(accList, false);
     }
}
//Anys excute
//UpdateParentAccountQuable gul = new UpdateParentAccountQuable();
//system.enqueueJob(gul);