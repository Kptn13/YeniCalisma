trigger ReportCardTrigger on Report_Card__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

    switch on trigger.operationtype{
        
        when before_insert{
            ReportCardHandler.updateScore(trigger.new);
        }
        when before_update{
            ReportCardHandler.updateScore(trigger.new);
        }
    }
}